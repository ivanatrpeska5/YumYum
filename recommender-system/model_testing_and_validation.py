import os

import psycopg2
import torch
from torch import Tensor

os.environ['TORCH'] = torch.__version__
import pandas as pd
from torch_geometric.data import HeteroData
import torch_geometric.transforms as T
from torch_geometric.loader import LinkNeighborLoader
from torch_geometric.nn import SAGEConv, to_hetero
import torch.nn.functional as F
import tqdm
import torch_geometric

print(torch_geometric.__version__)

device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
print(f"Device: '{device}'")

conn = psycopg2.connect(
    user="postgres",
    password="at",
    host="localhost",
    port="5432",
    database="YumYum"
)

# Load users
users_df = pd.read_sql("SELECT user_id, username FROM users WHERE role = 'customer';", conn)

# Load foods
foods_df = pd.read_sql("SELECT id as food_id, name as food_name, price as food_price FROM food;", conn)

# Load restaurants
restaurants_df = pd.read_sql("SELECT id as restaurant_id, name as restaurant_name, average_rating FROM restaurant;",
                             conn)

# Load ingredients
ingredients_df = pd.read_sql("SELECT id as ingredient_id, name as ingredient_name FROM ingredient;", conn)

# Load categories
categories_df = pd.read_sql("SELECT id as category_id, name as category_name FROM category;", conn)

# Load relationships (edges)

# User ordered food
orders_df = pd.read_sql("""
SELECT c.customer_user_id as user_id, cf.food_id as food_id
FROM orders o
JOIN cart c ON o.cart_id = c.id
JOIN cart_consists_of_food cf ON cf.cart_id = c.id;
""", conn)

# Food contains ingredient
food_ingredients_df = pd.read_sql(
    "select food_id as food_id, ingredient_id as ingredient_id from ingredient_in_food;",
    conn)

# Food belongs to restaurant
food_restaurant_df = pd.read_sql("select id as food_id, restaurant_id as restaurant_id from food;", conn)

# Food categorized as category
food_category_df = pd.read_sql("select food_id as food_id, category_id as category_id from category_of_food;", conn)

# User ordered from restaurant
user_ordered_from_restaurant = pd.read_sql(
    """
    select u.user_id, f.restaurant_id, count(o.id) from public.customer c
                            join public.users u on c.user_id = u.user_id
                            join public.orders o on o.customer_user_id = c.user_id
                            join public.cart c2 on c2.id = o.cart_id
                            join public.cart_consists_of_food ccof on c2.id = ccof.cart_id
                            join public.food f on f.id = ccof.food_id
                            join public.category_of_food cof on f.id = cof.food_id
                            join public.category c3 on cof.category_id = c3.id
                            group by u.user_id, f.restaurant_id
    """, conn)

user_ordered_from_category = pd.read_sql(
    """
    select u.user_id, cof.category_id, count(o.id) from public.customer c
                            join public.users u on c.user_id = u.user_id
                            join public.orders o on o.customer_user_id = c.user_id
                            join public.cart c2 on c2.id = o.cart_id
                            join public.cart_consists_of_food ccof on c2.id = ccof.cart_id
                            join public.food f on f.id = ccof.food_id
                            join public.category_of_food cof on f.id = cof.food_id
                            join public.category c3 on cof.category_id = c3.id
                            group by u.user_id, cof.category_id
    """, conn
)

# User reviewed restaurant
user_reviews_df = pd.read_sql("""
select r.customer_id as user_id, f.id as food_id, r.rating as rating from rating r
join food f on r.restaurant_id = f.restaurant_id;
""", conn)

food_ordered_together_df = pd.read_sql("""
SELECT
    ccof1.food_id AS food_id_1,
    ccof2.food_id AS food_id_2,
    COUNT(*) AS count
FROM
    public.cart_consists_of_food ccof1
        JOIN
    public.cart_consists_of_food ccof2
    ON
        ccof1.cart_id = ccof2.cart_id
            AND
        ccof1.food_id < ccof2.food_id
        JOIN
    public.cart c ON ccof1.cart_id = c.id
        JOIN
    orders o ON c.id = o.cart_id
GROUP BY
    ccof1.food_id,
    ccof2.food_id
ORDER BY
    count DESC;
""", conn)

num_foods = foods_df.shape[0]
num_ingredients = ingredients_df.shape[0]
num_categories = categories_df.shape[0]
num_users = users_df.shape[0]
num_restaurants = restaurants_df.shape[0]

food_id_to_idx = {food_id: idx for idx, food_id in enumerate(foods_df['food_id'])}
ingredient_id_to_idx = {ingredient_id: idx for idx, ingredient_id in enumerate(ingredients_df['ingredient_id'])}
category_id_to_idx = {category_id: idx for idx, category_id in enumerate(categories_df['category_id'])}
user_id_to_idx = {user_id: idx for idx, user_id in enumerate(users_df['user_id'])}
restaurant_id_to_idx = {restaurant_id: idx for idx, restaurant_id in enumerate(restaurants_df['restaurant_id'])}

food_ingredient_matrix = torch.zeros((num_foods, num_ingredients))
for _, row in food_ingredients_df.iterrows():
    food_idx = food_id_to_idx[row['food_id']]
    ingredient_idx = ingredient_id_to_idx[row['ingredient_id']]
    food_ingredient_matrix[food_idx, ingredient_idx] = 1

food_ordered_together_matrix = torch.zeros((num_foods, num_foods))
for _, row in food_ordered_together_df.iterrows():
    food_idx_1 = food_id_to_idx[row['food_id_1']]
    food_idx_2 = food_id_to_idx[row['food_id_2']]
    food_ordered_together_matrix[food_idx_1, food_idx_2] = row['count']

food_category_feature = torch.zeros((num_foods, 1), dtype=torch.long)
for _, row in food_category_df.iterrows():
    food_idx = food_id_to_idx[row['food_id']]
    category_idx = category_id_to_idx[row['category_id']]
    food_category_feature[food_idx, 0] = category_idx

food_reviewed_by_user_feature = torch.zeros((num_foods, num_users))
for _, row in user_reviews_df.iterrows():
    food_idx = food_id_to_idx[row['food_id']]
    user_idx = user_id_to_idx[row['user_id']]
    food_reviewed_by_user_feature[food_idx, user_idx] = int(row['rating'])

food_restaurant_feature = torch.zeros((num_foods, 1), dtype=torch.long)
for _, row in food_restaurant_df.iterrows():
    food_idx = food_id_to_idx[row['food_id']]
    restaurant_idx = restaurant_id_to_idx[row['restaurant_id']]
    food_restaurant_feature[food_idx, 0] = restaurant_idx

food_features = torch.cat(
    [food_ingredient_matrix, food_ordered_together_matrix, food_category_feature, food_reviewed_by_user_feature,
     food_restaurant_feature], dim=1)

user_restaurant_features = torch.zeros((num_users, num_restaurants))
for _, row in user_ordered_from_restaurant.iterrows():
    user_idx = user_id_to_idx[row['user_id']]
    restaurant_idx = restaurant_id_to_idx[row['restaurant_id']]
    user_restaurant_features[user_idx, restaurant_idx] = int(row['count'])

user_category_features = torch.zeros((num_users, num_categories))
for _, row in user_ordered_from_category.iterrows():
    user_idx = user_id_to_idx[row['user_id']]
    category_idx = category_id_to_idx[row['category_id']]
    user_category_features[user_idx, category_idx] = int(row['count'])

user_features = torch.cat(
    [user_restaurant_features, user_category_features], dim=1)

data = HeteroData()
data["food"].node_id = torch.arange(len(foods_df))
data["user"].node_id = torch.arange(len(users_df))
data["food"].x = food_features
data["user"].x = user_features

user_ordered_food_edges = torch.tensor([
    [user_id_to_idx[user_id] for user_id in orders_df['user_id']],
    [food_id_to_idx[food_id] for food_id in orders_df['food_id']]
])

data["user", "ordered", "food"].edge_index = user_ordered_food_edges

data = T.ToUndirected()(data)

print(data)

conn.close()


class GNN(torch.nn.Module):
    def __init__(self, hidden_channels):
        super().__init__()
        self.conv1 = SAGEConv(hidden_channels, hidden_channels)
        self.conv2 = SAGEConv(hidden_channels, hidden_channels)

    def forward(self, x: Tensor, edge_index: Tensor) -> Tensor:
        x = F.relu(self.conv1(x, edge_index))
        x = self.conv2(x, edge_index)
        return x


class Classifier(torch.nn.Module):
    def forward(self, x_user: Tensor, x_food: Tensor, edge_label_index: Tensor) -> Tensor:
        edge_feat_user = x_user[edge_label_index[0]]
        edge_feat_food = x_food[edge_label_index[1]]
        # Apply dot-product to get a prediction per supervision edge:
        return (edge_feat_user * edge_feat_food).sum(dim=-1)


class Model(torch.nn.Module):
    def __init__(self, hidden_channels):
        super().__init__()
        self.user_emb = torch.nn.Embedding(data["user"].num_nodes, hidden_channels)
        self.food_emb = torch.nn.Embedding(data["food"].num_nodes, hidden_channels)
        # Instantiate homogeneous GNN:
        self.gnn = GNN(hidden_channels)
        # Convert GNN model into a heterogeneous variant:
        self.gnn = to_hetero(self.gnn, metadata=data.metadata())
        self.classifier = Classifier()

    def forward(self, data: HeteroData) -> Tensor:
        x_dict = {
            "user": self.user_emb(data["user"].node_id),
            "food": self.food_emb(data["food"].node_id)
        }
        # `x_dict` holds feature matrices of all node types
        # `edge_index_dict` holds all edge indices of all edge types
        x_dict = self.gnn(x_dict, data.edge_index_dict)
        pred = self.classifier(
            x_dict["user"],
            x_dict["food"],
            data["user", "ordered", "food"].edge_label_index,
        )
        return pred


model = Model(hidden_channels=64)

transform = T.RandomLinkSplit(
    num_val=0.1,
    num_test=0.1,
    disjoint_train_ratio=0.3,
    neg_sampling_ratio=2.0,
    add_negative_train_samples=False,
    edge_types=("user", "ordered", "food"),
    rev_edge_types=("food", "rev_ordered", "user"),
)
train_data, val_data, test_data = transform(data)

# Define seed edges:
edge_label_index = train_data["user", "ordered", "food"].edge_label_index
edge_label = train_data["user", "ordered", "food"].edge_label
train_loader = LinkNeighborLoader(
    data=train_data,
    num_neighbors=[20, 10],
    neg_sampling_ratio=2.0,
    edge_label_index=(("user", "ordered", "food"), edge_label_index),
    edge_label=edge_label,
    batch_size=128,
    shuffle=True,
)

model = model.to(device)
optimizer = torch.optim.Adam(model.parameters(), lr=0.001)
for epoch in range(1, 51):
    total_loss = total_examples = 0
    for sampled_data in tqdm.tqdm(train_loader):
        optimizer.zero_grad()
        sampled_data.to(device)
        prediction = model(sampled_data)
        ground_truth = sampled_data["user", "ordered", "food"].edge_label
        loss = F.binary_cross_entropy_with_logits(prediction, ground_truth)
        loss.backward()
        optimizer.step()
        total_loss += float(loss) * prediction.numel()
        total_examples += prediction.numel()
    print(f"Epoch: {epoch:03d}, Loss: {total_loss / total_examples:.4f}")


# Define the validation seed edges:
edge_label_index = val_data["user", "ordered", "food"].edge_label_index
edge_label = val_data["user", "ordered", "food"].edge_label
val_loader = LinkNeighborLoader(
    data=val_data,
    num_neighbors=[20, 10],
    edge_label_index=(("user", "ordered", "food"), edge_label_index),
    edge_label=edge_label,
    batch_size=3 * 128,
    shuffle=False,
)
sampled_data = next(iter(val_loader))

from sklearn.metrics import roc_auc_score
preds = []
ground_truths = []
for sampled_data in tqdm.tqdm(val_loader):
    with torch.no_grad():
        sampled_data.to(device)
        preds.append(model(sampled_data))
        ground_truths.append(sampled_data["user", "ordered", "food"].edge_label)
pred = torch.cat(preds, dim=0).cpu().numpy()
ground_truth = torch.cat(ground_truths, dim=0).cpu().numpy()
auc = roc_auc_score(ground_truth, pred)
print(f"Validation AUC: {auc:.4f}")

# Latest Validation AUC was 0.7309