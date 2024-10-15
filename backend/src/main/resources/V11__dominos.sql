INSERT INTO public.location (number, street)
VALUES ('25,', 'Dimitrie Cupovski');
INSERT INTO public.restaurant (average_rating, delivery_time, logo, name, photo, location_id)
VALUES (0, '25-35 min', 'assets/images/dominos_pizza_centar.png', 'Dominos Pizza Centar',
        'https://korpa.ba/restaurant_uploads/l3n9ztZWNokglSnmJsZ9u4CLShpBP5dN.jpg',
        (select max(id) from public.location));
INSERT INTO public.users (email, name, password, phone, surname, username, role)
VALUES ('dominos_pizza_centar_employee@mail.com', 'Employee',
        '$2a$10$VAlO0DtwWX42GHzGGM0DHOIx2kLX1EAhLwaTrXwEsj5n5K9Lr7EQO', '071234567', 'Dominos Pizza Centar',
        'dominos_pizza_centar_employee', 'employee');
INSERT INTO public.restaurant_employee (user_id, restaurant_id)
VALUES ((select max(user_id) from public.users), (select max(id) from public.restaurant));
INSERT INTO public.category (name, photo)
VALUES ('Pizza medium (26cm)', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Margarita medium', 'https://korpa.ba/product_uploads/VntRmty2k699KcFL2PHbYlThkNHw8IhV.jpg', 288,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Margarita medium'),
        (select max(id) from public.category where name = 'Pizza medium (26cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Margarita medium'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('double dose of mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Margarita medium'),
        (select max(id) from public.ingredient where name = 'double dose of mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('oregano')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Margarita medium'),
        (select max(id) from public.ingredient where name = 'oregano'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Capricciosa medium', 'https://korpa.ba/product_uploads/5XNPWYKb2k3Z0WmQJcmhb636f8sdAYpt.jpg', 288,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Capricciosa medium'),
        (select max(id) from public.category where name = 'Pizza medium (26cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Capricciosa medium'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Capricciosa medium'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('ham')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Capricciosa medium'),
        (select max(id) from public.ingredient where name = 'ham'));
INSERT INTO public.ingredient (name)
VALUES ('fresh mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Capricciosa medium'),
        (select max(id) from public.ingredient where name = 'fresh mushrooms'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Mediterranean medium', 'https://korpa.ba/product_uploads/ijiawCjXJJUtaEMOXoA0wilBJ4pnXm4T.jpg', 288,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Mediterranean medium'),
        (select max(id) from public.category where name = 'Pizza medium (26cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mediterranean medium'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mediterranean medium'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('feta cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mediterranean medium'),
        (select max(id) from public.ingredient where name = 'feta cheese'));
INSERT INTO public.ingredient (name)
VALUES ('fresh tomatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mediterranean medium'),
        (select max(id) from public.ingredient where name = 'fresh tomatoes'));
INSERT INTO public.ingredient (name)
VALUES ('fresh peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mediterranean medium'),
        (select max(id) from public.ingredient where name = 'fresh peppers'));
INSERT INTO public.ingredient (name)
VALUES ('olives')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mediterranean medium'),
        (select max(id) from public.ingredient where name = 'olives'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Veggie Pizza Medium', 'https://korpa.ba/product_uploads/4g64BlrblGd3hgaMCko3j2ZsEb8LBZAE.jpg', 288,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Veggie Pizza Medium'),
        (select max(id) from public.category where name = 'Pizza medium (26cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Veggie Pizza Medium'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('vegetable/lean cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Veggie Pizza Medium'),
        (select max(id) from public.ingredient where name = 'vegetable/lean cheese'));
INSERT INTO public.ingredient (name)
VALUES ('fresh peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Veggie Pizza Medium'),
        (select max(id) from public.ingredient where name = 'fresh peppers'));
INSERT INTO public.ingredient (name)
VALUES ('fresh mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Veggie Pizza Medium'),
        (select max(id) from public.ingredient where name = 'fresh mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('olives')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Veggie Pizza Medium'),
        (select max(id) from public.ingredient where name = 'olives'));
INSERT INTO public.ingredient (name)
VALUES ('onions')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Veggie Pizza Medium'),
        (select max(id) from public.ingredient where name = 'onions'));
INSERT INTO public.ingredient (name)
VALUES ('fresh tomatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Veggie Pizza Medium'),
        (select max(id) from public.ingredient where name = 'fresh tomatoes'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('American Hot medium', 'https://korpa.ba/product_uploads/yzUvB1FXCVOnlZPT3L5cMrtYZ3s0Bhej.jpg', 304,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'American Hot medium'),
        (select max(id) from public.category where name = 'Pizza medium (26cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'American Hot medium'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'American Hot medium'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('Dominos pepperoni sausage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'American Hot medium'),
        (select max(id) from public.ingredient where name = 'Dominos pepperoni sausage'));
INSERT INTO public.ingredient (name)
VALUES ('jalapeno hot peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'American Hot medium'),
        (select max(id) from public.ingredient where name = 'jalapeno hot peppers'));
INSERT INTO public.ingredient (name)
VALUES ('onions')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'American Hot medium'),
        (select max(id) from public.ingredient where name = 'onions'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Macedonian pizza medium', 'https://korpa.ba/product_uploads/wKiVpRHghqi5d6a76C1fy6sJNCIBEvPI.jpg', 304,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Macedonian pizza medium'),
        (select max(id) from public.category where name = 'Pizza medium (26cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian pizza medium'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian pizza medium'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian pizza medium'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian pizza medium'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('fresh peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian pizza medium'),
        (select max(id) from public.ingredient where name = 'fresh peppers'));
INSERT INTO public.ingredient (name)
VALUES ('feta cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian pizza medium'),
        (select max(id) from public.ingredient where name = 'feta cheese'));
INSERT INTO public.ingredient (name)
VALUES ('olives')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian pizza medium'),
        (select max(id) from public.ingredient where name = 'olives'));
INSERT INTO public.ingredient (name)
VALUES ('bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian pizza medium'),
        (select max(id) from public.ingredient where name = 'bacon'));
INSERT INTO public.ingredient (name)
VALUES ('fresh tomatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian pizza medium'),
        (select max(id) from public.ingredient where name = 'fresh tomatoes'));
INSERT INTO public.ingredient (name)
VALUES ('oregano')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian pizza medium'),
        (select max(id) from public.ingredient where name = 'oregano'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Dominos Special medium', 'https://korpa.ba/product_uploads/9p5QRsJ5Dl3z7bgQORcD3MCTPMXjuQ4m.jpg', 304,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Dominos Special medium'),
        (select max(id) from public.category where name = 'Pizza medium (26cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Dominos Special medium'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Dominos Special medium'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('ham')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Dominos Special medium'),
        (select max(id) from public.ingredient where name = 'ham'));
INSERT INTO public.ingredient (name)
VALUES ('bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Dominos Special medium'),
        (select max(id) from public.ingredient where name = 'bacon'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Dominos Special medium'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('fresh peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Dominos Special medium'),
        (select max(id) from public.ingredient where name = 'fresh peppers'));
INSERT INTO public.ingredient (name)
VALUES ('fresh mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Dominos Special medium'),
        (select max(id) from public.ingredient where name = 'fresh mushrooms'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Cheddar Melt medium', 'https://korpa.ba/product_uploads/RBZPD0VWRxujgC8GaSzxZwzWPI6gIyuw.jpg', 304,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Cheddar Melt medium'),
        (select max(id) from public.category where name = 'Pizza medium (26cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Cheddar Melt medium'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Cheddar Melt medium'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('double dose of cheddar cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Cheddar Melt medium'),
        (select max(id) from public.ingredient where name = 'double dose of cheddar cheese'));
INSERT INTO public.ingredient (name)
VALUES ('double dose of fresh mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Cheddar Melt medium'),
        (select max(id) from public.ingredient where name = 'double dose of fresh mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('double dose of bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Cheddar Melt medium'),
        (select max(id) from public.ingredient where name = 'double dose of bacon'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Italian Passion medium', 'https://korpa.ba/product_uploads/lrWyMVURwAhR38NsThz6hzDHLka7heTY.jpg', 304,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Italian Passion medium'),
        (select max(id) from public.category where name = 'Pizza medium (26cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Italian Passion medium'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Italian Passion medium'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('pesto sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Italian Passion medium'),
        (select max(id) from public.ingredient where name = 'pesto sauce'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Italian Passion medium'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('fresh tomatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Italian Passion medium'),
        (select max(id) from public.ingredient where name = 'fresh tomatoes'));
INSERT INTO public.ingredient (name)
VALUES ('basil')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Italian Passion medium'),
        (select max(id) from public.ingredient where name = 'basil'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Parmesana medium', 'https://korpa.ba/product_uploads/z9UZkxdjvEIqHtwVnYHL9SSOLoYSvheB.jpg', 304,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Parmesana medium'),
        (select max(id) from public.category where name = 'Pizza medium (26cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Fresh cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Parmesana medium'),
        (select max(id) from public.ingredient where name = 'Fresh cream'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Parmesana medium'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Parmesana medium'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('fresh tomatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Parmesana medium'),
        (select max(id) from public.ingredient where name = 'fresh tomatoes'));
INSERT INTO public.ingredient (name)
VALUES ('basil')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Parmesana medium'),
        (select max(id) from public.ingredient where name = 'basil'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Garlic Sizzler medium', 'None', 304,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Garlic Sizzler medium'),
        (select max(id) from public.category where name = 'Pizza medium (26cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Garlic Sizzler medium'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Garlic Sizzler medium'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('pepperoni')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Garlic Sizzler medium'),
        (select max(id) from public.ingredient where name = 'pepperoni'));
INSERT INTO public.ingredient (name)
VALUES ('jalapenos hot peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Garlic Sizzler medium'),
        (select max(id) from public.ingredient where name = 'jalapenos hot peppers'));
INSERT INTO public.ingredient (name)
VALUES ('olives')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Garlic Sizzler medium'),
        (select max(id) from public.ingredient where name = 'olives'));
INSERT INTO public.ingredient (name)
VALUES ('garlic sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Garlic Sizzler medium'),
        (select max(id) from public.ingredient where name = 'garlic sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Burger Pizza medium', 'https://korpa.ba/product_uploads/sQHQFXQq8DXFJLrgWtyV4BTmlkWMySas.jpg', 320,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Burger Pizza medium'),
        (select max(id) from public.category where name = 'Pizza medium (26cm)'));
INSERT INTO public.ingredient (name)
VALUES ('100% mozzarella cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger Pizza medium'),
        (select max(id) from public.ingredient where name = '100% mozzarella cheese'));
INSERT INTO public.ingredient (name)
VALUES ('cheddar cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger Pizza medium'),
        (select max(id) from public.ingredient where name = 'cheddar cheese'));
INSERT INTO public.ingredient (name)
VALUES ('seasoned beef')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger Pizza medium'),
        (select max(id) from public.ingredient where name = 'seasoned beef'));
INSERT INTO public.ingredient (name)
VALUES ('fresh tomatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger Pizza medium'),
        (select max(id) from public.ingredient where name = 'fresh tomatoes'));
INSERT INTO public.ingredient (name)
VALUES ('burger sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger Pizza medium'),
        (select max(id) from public.ingredient where name = 'burger sauce'));
INSERT INTO public.ingredient (name)
VALUES ('cucumbers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger Pizza medium'),
        (select max(id) from public.ingredient where name = 'cucumbers'));
INSERT INTO public.ingredient (name)
VALUES ('onions')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger Pizza medium'),
        (select max(id) from public.ingredient where name = 'onions'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Pepperoni Passion medium', 'https://korpa.ba/product_uploads/yclqR1YmpjISPiRwXRc7TVCpmvzWfh6b.jpg', 320,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Pepperoni Passion medium'),
        (select max(id) from public.category where name = 'Pizza medium (26cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pepperoni Passion medium'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('double dose of mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pepperoni Passion medium'),
        (select max(id) from public.ingredient where name = 'double dose of mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('double dose of Dominos pepperoni sausage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pepperoni Passion medium'),
        (select max(id) from public.ingredient where name = 'double dose of Dominos pepperoni sausage'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Burger Barbeque medium', 'https://korpa.ba/product_uploads/NKK3Z3QIEtf51SGG90ybbMxTgKAvYf8O.jpg', 320,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Burger Barbeque medium'),
        (select max(id) from public.category where name = 'Pizza medium (26cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Barbecue sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger Barbeque medium'),
        (select max(id) from public.ingredient where name = 'Barbecue sauce'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger Barbeque medium'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('onions')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger Barbeque medium'),
        (select max(id) from public.ingredient where name = 'onions'));
INSERT INTO public.ingredient (name)
VALUES ('tomatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger Barbeque medium'),
        (select max(id) from public.ingredient where name = 'tomatoes'));
INSERT INTO public.ingredient (name)
VALUES ('chicken meat')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger Barbeque medium'),
        (select max(id) from public.ingredient where name = 'chicken meat'));
INSERT INTO public.ingredient (name)
VALUES ('burger sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger Barbeque medium'),
        (select max(id) from public.ingredient where name = 'burger sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Carbonara medium', 'https://korpa.ba/product_uploads/X5OOB6o7Gahu9kiQD6Rv4DvcyBcNSYZJ.jpg', 320,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Carbonara medium'),
        (select max(id) from public.category where name = 'Pizza medium (26cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Fresh cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Carbonara medium'),
        (select max(id) from public.ingredient where name = 'Fresh cream'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Carbonara medium'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Carbonara medium'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Carbonara medium'),
        (select max(id) from public.ingredient where name = 'bacon'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Carbonara medium'),
        (select max(id) from public.ingredient where name = 'mushrooms'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('4 Cheese medium', 'https://korpa.ba/product_uploads/HqCXyhxofbnWmo5Y9EKl1nOCro7Esnz3.jpg', 320,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = '4 Cheese medium'),
        (select max(id) from public.category where name = 'Pizza medium (26cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = '4 Cheese medium'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = '4 Cheese medium'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('cheddar')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = '4 Cheese medium'),
        (select max(id) from public.ingredient where name = 'cheddar'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = '4 Cheese medium'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('feta cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = '4 Cheese medium'),
        (select max(id) from public.ingredient where name = 'feta cheese'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Ham & Bacon medium', 'https://korpa.ba/product_uploads/uQte0cfCgFoTqiAzwxVBz6SUeBRhKU4c.jpg', 320,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Ham & Bacon medium'),
        (select max(id) from public.category where name = 'Pizza medium (26cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Ham & Bacon medium'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Ham & Bacon medium'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('cheddar cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Ham & Bacon medium'),
        (select max(id) from public.ingredient where name = 'cheddar cheese'));
INSERT INTO public.ingredient (name)
VALUES ('ham')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Ham & Bacon medium'),
        (select max(id) from public.ingredient where name = 'ham'));
INSERT INTO public.ingredient (name)
VALUES ('bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Ham & Bacon medium'),
        (select max(id) from public.ingredient where name = 'bacon'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('New Yorker medium', 'https://korpa.ba/product_uploads/1Qssq5BFkgaHbUn38ia5FmAEh1WHDue4.jpg', 320,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'New Yorker medium'),
        (select max(id) from public.category where name = 'Pizza medium (26cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'New Yorker medium'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'New Yorker medium'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('Dominos pepperoni sausage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'New Yorker medium'),
        (select max(id) from public.ingredient where name = 'Dominos pepperoni sausage'));
INSERT INTO public.ingredient (name)
VALUES ('bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'New Yorker medium'),
        (select max(id) from public.ingredient where name = 'bacon'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'New Yorker medium'),
        (select max(id) from public.ingredient where name = 'mushrooms'));
INSERT INTO public.category (name, photo)
VALUES ('Pizza large (31cm)', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Margarita large', 'https://korpa.ba/product_uploads/IzgoexViet3p8RDXOU8iFgMcveYZdCz0.jpg', 368,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Margarita large'),
        (select max(id) from public.category where name = 'Pizza large (31cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Margarita large'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('double dose of mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Margarita large'),
        (select max(id) from public.ingredient where name = 'double dose of mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('oregano')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Margarita large'),
        (select max(id) from public.ingredient where name = 'oregano'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Capricciosa large', 'https://korpa.ba/product_uploads/z5wM5IrDkRoJgm8wGYkghl2sgozH6kst.jpg', 368,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Capricciosa large'),
        (select max(id) from public.category where name = 'Pizza large (31cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Capricciosa large'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Capricciosa large'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('ham')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Capricciosa large'),
        (select max(id) from public.ingredient where name = 'ham'));
INSERT INTO public.ingredient (name)
VALUES ('fresh mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Capricciosa large'),
        (select max(id) from public.ingredient where name = 'fresh mushrooms'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Mediterranean large', 'https://korpa.ba/product_uploads/GjIWT8AstBjdCVSOwd8aexyBQjiOyruX.jpg', 368,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Mediterranean large'),
        (select max(id) from public.category where name = 'Pizza large (31cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mediterranean large'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mediterranean large'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('feta cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mediterranean large'),
        (select max(id) from public.ingredient where name = 'feta cheese'));
INSERT INTO public.ingredient (name)
VALUES ('fresh tomatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mediterranean large'),
        (select max(id) from public.ingredient where name = 'fresh tomatoes'));
INSERT INTO public.ingredient (name)
VALUES ('fresh peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mediterranean large'),
        (select max(id) from public.ingredient where name = 'fresh peppers'));
INSERT INTO public.ingredient (name)
VALUES ('olives')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mediterranean large'),
        (select max(id) from public.ingredient where name = 'olives'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Veggie Pizza large', 'https://korpa.ba/product_uploads/k85gDogikzBO7KcWkb7bOhMdmB6t6r87.jpg', 368,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Veggie Pizza large'),
        (select max(id) from public.category where name = 'Pizza large (31cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Veggie Pizza large'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('vegetable/lean cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Veggie Pizza large'),
        (select max(id) from public.ingredient where name = 'vegetable/lean cheese'));
INSERT INTO public.ingredient (name)
VALUES ('fresh peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Veggie Pizza large'),
        (select max(id) from public.ingredient where name = 'fresh peppers'));
INSERT INTO public.ingredient (name)
VALUES ('fresh mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Veggie Pizza large'),
        (select max(id) from public.ingredient where name = 'fresh mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('olives')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Veggie Pizza large'),
        (select max(id) from public.ingredient where name = 'olives'));
INSERT INTO public.ingredient (name)
VALUES ('onions')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Veggie Pizza large'),
        (select max(id) from public.ingredient where name = 'onions'));
INSERT INTO public.ingredient (name)
VALUES ('fresh tomatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Veggie Pizza large'),
        (select max(id) from public.ingredient where name = 'fresh tomatoes'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('American Hot large', 'https://korpa.ba/product_uploads/yxagMzNc0AknzMk38Am4v5OTSikbR5y5.jpg', 392,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'American Hot large'),
        (select max(id) from public.category where name = 'Pizza large (31cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'American Hot large'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'American Hot large'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('Dominos pepperoni sausage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'American Hot large'),
        (select max(id) from public.ingredient where name = 'Dominos pepperoni sausage'));
INSERT INTO public.ingredient (name)
VALUES ('jalapeno hot peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'American Hot large'),
        (select max(id) from public.ingredient where name = 'jalapeno hot peppers'));
INSERT INTO public.ingredient (name)
VALUES ('onions')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'American Hot large'),
        (select max(id) from public.ingredient where name = 'onions'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Macedonian pizza large', 'https://korpa.ba/product_uploads/dUMWAXktXCjDLTJN13dSfuGaB8ix4zNl.jpg', 392,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Macedonian pizza large'),
        (select max(id) from public.category where name = 'Pizza large (31cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian pizza large'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian pizza large'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian pizza large'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian pizza large'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('fresh peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian pizza large'),
        (select max(id) from public.ingredient where name = 'fresh peppers'));
INSERT INTO public.ingredient (name)
VALUES ('feta cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian pizza large'),
        (select max(id) from public.ingredient where name = 'feta cheese'));
INSERT INTO public.ingredient (name)
VALUES ('olives')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian pizza large'),
        (select max(id) from public.ingredient where name = 'olives'));
INSERT INTO public.ingredient (name)
VALUES ('bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian pizza large'),
        (select max(id) from public.ingredient where name = 'bacon'));
INSERT INTO public.ingredient (name)
VALUES ('fresh tomatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian pizza large'),
        (select max(id) from public.ingredient where name = 'fresh tomatoes'));
INSERT INTO public.ingredient (name)
VALUES ('oregano')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian pizza large'),
        (select max(id) from public.ingredient where name = 'oregano'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Dominos Special large', 'https://korpa.ba/product_uploads/YJXnBcMWHlcIIuFdp6E1tqBpjwazg779.jpg', 392,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Dominos Special large'),
        (select max(id) from public.category where name = 'Pizza large (31cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Dominos Special large'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Dominos Special large'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('ham')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Dominos Special large'),
        (select max(id) from public.ingredient where name = 'ham'));
INSERT INTO public.ingredient (name)
VALUES ('bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Dominos Special large'),
        (select max(id) from public.ingredient where name = 'bacon'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Dominos Special large'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('fresh peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Dominos Special large'),
        (select max(id) from public.ingredient where name = 'fresh peppers'));
INSERT INTO public.ingredient (name)
VALUES ('fresh mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Dominos Special large'),
        (select max(id) from public.ingredient where name = 'fresh mushrooms'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Cheddar Melt large', 'https://korpa.ba/product_uploads/fH48RPJsd2SQqHNG3IRzYDjpNKWzz8h1.jpg', 392,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Cheddar Melt large'),
        (select max(id) from public.category where name = 'Pizza large (31cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Cheddar Melt large'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Cheddar Melt large'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('double dose of cheddar cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Cheddar Melt large'),
        (select max(id) from public.ingredient where name = 'double dose of cheddar cheese'));
INSERT INTO public.ingredient (name)
VALUES ('double dose of fresh mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Cheddar Melt large'),
        (select max(id) from public.ingredient where name = 'double dose of fresh mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('double dose of bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Cheddar Melt large'),
        (select max(id) from public.ingredient where name = 'double dose of bacon'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Italian Passion large', 'https://korpa.ba/product_uploads/6ZvAw8CotYDTEy2FCqwrnyR31ulx8d4A.jpg', 392,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Italian Passion large'),
        (select max(id) from public.category where name = 'Pizza large (31cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Italian Passion large'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Italian Passion large'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('pesto sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Italian Passion large'),
        (select max(id) from public.ingredient where name = 'pesto sauce'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Italian Passion large'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('fresh tomatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Italian Passion large'),
        (select max(id) from public.ingredient where name = 'fresh tomatoes'));
INSERT INTO public.ingredient (name)
VALUES ('basil')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Italian Passion large'),
        (select max(id) from public.ingredient where name = 'basil'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Parmesana large', 'https://korpa.ba/product_uploads/BKUM5UVp6UHG1hMD7Qe7icPmRALdfKI1.jpg', 392,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Parmesana large'),
        (select max(id) from public.category where name = 'Pizza large (31cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Fresh cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Parmesana large'),
        (select max(id) from public.ingredient where name = 'Fresh cream'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Parmesana large'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Parmesana large'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('fresh tomatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Parmesana large'),
        (select max(id) from public.ingredient where name = 'fresh tomatoes'));
INSERT INTO public.ingredient (name)
VALUES ('basil')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Parmesana large'),
        (select max(id) from public.ingredient where name = 'basil'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Garlic Sizzler large', 'None', 392,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Garlic Sizzler large'),
        (select max(id) from public.category where name = 'Pizza large (31cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Garlic Sizzler large'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Garlic Sizzler large'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('pepperoni')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Garlic Sizzler large'),
        (select max(id) from public.ingredient where name = 'pepperoni'));
INSERT INTO public.ingredient (name)
VALUES ('jalapenos hot peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Garlic Sizzler large'),
        (select max(id) from public.ingredient where name = 'jalapenos hot peppers'));
INSERT INTO public.ingredient (name)
VALUES ('olives')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Garlic Sizzler large'),
        (select max(id) from public.ingredient where name = 'olives'));
INSERT INTO public.ingredient (name)
VALUES ('garlic sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Garlic Sizzler large'),
        (select max(id) from public.ingredient where name = 'garlic sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Burger Pizza large', 'https://korpa.ba/product_uploads/3TWdWLVx4EsI6wm0QSCzF8JKXR5SCkEY.jpg', 416,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Burger Pizza large'),
        (select max(id) from public.category where name = 'Pizza large (31cm)'));
INSERT INTO public.ingredient (name)
VALUES ('100% mozzarella cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger Pizza large'),
        (select max(id) from public.ingredient where name = '100% mozzarella cheese'));
INSERT INTO public.ingredient (name)
VALUES ('cheddar cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger Pizza large'),
        (select max(id) from public.ingredient where name = 'cheddar cheese'));
INSERT INTO public.ingredient (name)
VALUES ('seasoned beef')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger Pizza large'),
        (select max(id) from public.ingredient where name = 'seasoned beef'));
INSERT INTO public.ingredient (name)
VALUES ('fresh tomatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger Pizza large'),
        (select max(id) from public.ingredient where name = 'fresh tomatoes'));
INSERT INTO public.ingredient (name)
VALUES ('burger sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger Pizza large'),
        (select max(id) from public.ingredient where name = 'burger sauce'));
INSERT INTO public.ingredient (name)
VALUES ('cucumbers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger Pizza large'),
        (select max(id) from public.ingredient where name = 'cucumbers'));
INSERT INTO public.ingredient (name)
VALUES ('onions')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger Pizza large'),
        (select max(id) from public.ingredient where name = 'onions'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Pepperoni Passion large', 'https://korpa.ba/product_uploads/BuDK43Cx9NDxvvBscokbZMX3Z4DQkIYW.jpg', 416,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Pepperoni Passion large'),
        (select max(id) from public.category where name = 'Pizza large (31cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pepperoni Passion large'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('double dose of mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pepperoni Passion large'),
        (select max(id) from public.ingredient where name = 'double dose of mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('double dose of Dominos pepperoni sausage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pepperoni Passion large'),
        (select max(id) from public.ingredient where name = 'double dose of Dominos pepperoni sausage'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Burger Barbeque large', 'https://korpa.ba/product_uploads/4RgQqKnDgbdpDux9574Ysz0dQY7WXcuj.jpg', 416,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Burger Barbeque large'),
        (select max(id) from public.category where name = 'Pizza large (31cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Barbecue sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger Barbeque large'),
        (select max(id) from public.ingredient where name = 'Barbecue sauce'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger Barbeque large'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('onions')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger Barbeque large'),
        (select max(id) from public.ingredient where name = 'onions'));
INSERT INTO public.ingredient (name)
VALUES ('tomatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger Barbeque large'),
        (select max(id) from public.ingredient where name = 'tomatoes'));
INSERT INTO public.ingredient (name)
VALUES ('chicken meat')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger Barbeque large'),
        (select max(id) from public.ingredient where name = 'chicken meat'));
INSERT INTO public.ingredient (name)
VALUES ('burger sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger Barbeque large'),
        (select max(id) from public.ingredient where name = 'burger sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Carbonara large', 'https://korpa.ba/product_uploads/qJtwAnxfyK7oRU9nqsWTM8tuHGNfEM9H.jpg', 416,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Carbonara large'),
        (select max(id) from public.category where name = 'Pizza large (31cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Fresh cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Carbonara large'),
        (select max(id) from public.ingredient where name = 'Fresh cream'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Carbonara large'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Carbonara large'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Carbonara large'),
        (select max(id) from public.ingredient where name = 'bacon'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Carbonara large'),
        (select max(id) from public.ingredient where name = 'mushrooms'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('4 Cheese large', 'https://korpa.ba/product_uploads/6FkkL3LjyXjQ8je8pHz9v8tT8jZkRhYR.jpg', 416,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = '4 Cheese large'),
        (select max(id) from public.category where name = 'Pizza large (31cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = '4 Cheese large'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = '4 Cheese large'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('cheddar')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = '4 Cheese large'),
        (select max(id) from public.ingredient where name = 'cheddar'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = '4 Cheese large'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('feta cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = '4 Cheese large'),
        (select max(id) from public.ingredient where name = 'feta cheese'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Ham & Bacon large', 'https://korpa.ba/product_uploads/RJwdO7zeFf7iSbS1HwN7XgqSRmhw1KVi.jpg', 416,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Ham & Bacon large'),
        (select max(id) from public.category where name = 'Pizza large (31cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Ham & Bacon large'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Ham & Bacon large'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('cheddar cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Ham & Bacon large'),
        (select max(id) from public.ingredient where name = 'cheddar cheese'));
INSERT INTO public.ingredient (name)
VALUES ('ham')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Ham & Bacon large'),
        (select max(id) from public.ingredient where name = 'ham'));
INSERT INTO public.ingredient (name)
VALUES ('bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Ham & Bacon large'),
        (select max(id) from public.ingredient where name = 'bacon'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('New Yorker large', 'https://korpa.ba/product_uploads/sOKGoWXh777vlaao2MMD08HDJ0i18vDs.jpg', 416,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'New Yorker large'),
        (select max(id) from public.category where name = 'Pizza large (31cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'New Yorker large'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'New Yorker large'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('Dominos pepperoni sausage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'New Yorker large'),
        (select max(id) from public.ingredient where name = 'Dominos pepperoni sausage'));
INSERT INTO public.ingredient (name)
VALUES ('bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'New Yorker large'),
        (select max(id) from public.ingredient where name = 'bacon'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'New Yorker large'),
        (select max(id) from public.ingredient where name = 'mushrooms'));
INSERT INTO public.category (name, photo)
VALUES ('Pizza jumbo (38cm)', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Margarita jumbo', 'https://korpa.ba/product_uploads/GRbQL7tYS80B04Y0ftWik8lHy7gBTgV5.jpg', 480,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Margarita jumbo'),
        (select max(id) from public.category where name = 'Pizza jumbo (38cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Margarita jumbo'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('double dose of mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Margarita jumbo'),
        (select max(id) from public.ingredient where name = 'double dose of mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('oregano')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Margarita jumbo'),
        (select max(id) from public.ingredient where name = 'oregano'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Capricciosa jumbo', 'https://korpa.ba/product_uploads/1Xh9DyI21wi3vOUxJ9UJ5zxpbrwV5uEq.jpg', 480,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Capricciosa jumbo'),
        (select max(id) from public.category where name = 'Pizza jumbo (38cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Capricciosa jumbo'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Capricciosa jumbo'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('ham')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Capricciosa jumbo'),
        (select max(id) from public.ingredient where name = 'ham'));
INSERT INTO public.ingredient (name)
VALUES ('fresh mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Capricciosa jumbo'),
        (select max(id) from public.ingredient where name = 'fresh mushrooms'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Mediterranean jumbo', 'https://korpa.ba/product_uploads/lF51IQmFTg6zOdSJmwIVGqkWbKFGqSA1.jpg', 480,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Mediterranean jumbo'),
        (select max(id) from public.category where name = 'Pizza jumbo (38cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mediterranean jumbo'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mediterranean jumbo'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('feta cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mediterranean jumbo'),
        (select max(id) from public.ingredient where name = 'feta cheese'));
INSERT INTO public.ingredient (name)
VALUES ('fresh tomatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mediterranean jumbo'),
        (select max(id) from public.ingredient where name = 'fresh tomatoes'));
INSERT INTO public.ingredient (name)
VALUES ('fresh peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mediterranean jumbo'),
        (select max(id) from public.ingredient where name = 'fresh peppers'));
INSERT INTO public.ingredient (name)
VALUES ('olives')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mediterranean jumbo'),
        (select max(id) from public.ingredient where name = 'olives'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Veggie Pizza jumbo', 'https://korpa.ba/product_uploads/EakjfgJ8HqjbkfyzLP7ls5le3e8teSkH.jpg', 480,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Veggie Pizza jumbo'),
        (select max(id) from public.category where name = 'Pizza jumbo (38cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Veggie Pizza jumbo'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('vegetable/lean cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Veggie Pizza jumbo'),
        (select max(id) from public.ingredient where name = 'vegetable/lean cheese'));
INSERT INTO public.ingredient (name)
VALUES ('fresh peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Veggie Pizza jumbo'),
        (select max(id) from public.ingredient where name = 'fresh peppers'));
INSERT INTO public.ingredient (name)
VALUES ('fresh mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Veggie Pizza jumbo'),
        (select max(id) from public.ingredient where name = 'fresh mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('olives')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Veggie Pizza jumbo'),
        (select max(id) from public.ingredient where name = 'olives'));
INSERT INTO public.ingredient (name)
VALUES ('onions')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Veggie Pizza jumbo'),
        (select max(id) from public.ingredient where name = 'onions'));
INSERT INTO public.ingredient (name)
VALUES ('fresh tomatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Veggie Pizza jumbo'),
        (select max(id) from public.ingredient where name = 'fresh tomatoes'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('American Hot jumbo', 'https://korpa.ba/product_uploads/zfXrbXyqI7Gm1kFoADSngiBYCSZTsFhA.jpg', 496,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'American Hot jumbo'),
        (select max(id) from public.category where name = 'Pizza jumbo (38cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'American Hot jumbo'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'American Hot jumbo'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('Dominos pepperoni sausage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'American Hot jumbo'),
        (select max(id) from public.ingredient where name = 'Dominos pepperoni sausage'));
INSERT INTO public.ingredient (name)
VALUES ('jalapeno hot peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'American Hot jumbo'),
        (select max(id) from public.ingredient where name = 'jalapeno hot peppers'));
INSERT INTO public.ingredient (name)
VALUES ('onions')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'American Hot jumbo'),
        (select max(id) from public.ingredient where name = 'onions'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Macedonian jumbo', 'https://korpa.ba/product_uploads/T8eg4qNfbYRiPUlJRcPBc1VqtZMBAZsH.jpg', 496,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Macedonian jumbo'),
        (select max(id) from public.category where name = 'Pizza jumbo (38cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian jumbo'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian jumbo'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian jumbo'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian jumbo'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('fresh peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian jumbo'),
        (select max(id) from public.ingredient where name = 'fresh peppers'));
INSERT INTO public.ingredient (name)
VALUES ('feta cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian jumbo'),
        (select max(id) from public.ingredient where name = 'feta cheese'));
INSERT INTO public.ingredient (name)
VALUES ('olives')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian jumbo'),
        (select max(id) from public.ingredient where name = 'olives'));
INSERT INTO public.ingredient (name)
VALUES ('bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian jumbo'),
        (select max(id) from public.ingredient where name = 'bacon'));
INSERT INTO public.ingredient (name)
VALUES ('fresh tomatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian jumbo'),
        (select max(id) from public.ingredient where name = 'fresh tomatoes'));
INSERT INTO public.ingredient (name)
VALUES ('oregano')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian jumbo'),
        (select max(id) from public.ingredient where name = 'oregano'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Dominos Special jumbo', 'https://korpa.ba/product_uploads/taIPFdf63VM2u3GMyYxeaeNCG4fN9aOr.jpg', 496,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Dominos Special jumbo'),
        (select max(id) from public.category where name = 'Pizza jumbo (38cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Dominos Special jumbo'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Dominos Special jumbo'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('ham')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Dominos Special jumbo'),
        (select max(id) from public.ingredient where name = 'ham'));
INSERT INTO public.ingredient (name)
VALUES ('bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Dominos Special jumbo'),
        (select max(id) from public.ingredient where name = 'bacon'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Dominos Special jumbo'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('fresh peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Dominos Special jumbo'),
        (select max(id) from public.ingredient where name = 'fresh peppers'));
INSERT INTO public.ingredient (name)
VALUES ('fresh mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Dominos Special jumbo'),
        (select max(id) from public.ingredient where name = 'fresh mushrooms'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Cheddar Melt jumbo', 'https://korpa.ba/product_uploads/Z0wMLCZiqYwqFfUb1VQKnP9bm7sMhpxg.jpg', 496,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Cheddar Melt jumbo'),
        (select max(id) from public.category where name = 'Pizza jumbo (38cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Cheddar Melt jumbo'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Cheddar Melt jumbo'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('double dose of cheddar cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Cheddar Melt jumbo'),
        (select max(id) from public.ingredient where name = 'double dose of cheddar cheese'));
INSERT INTO public.ingredient (name)
VALUES ('double dose of fresh mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Cheddar Melt jumbo'),
        (select max(id) from public.ingredient where name = 'double dose of fresh mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('double dose of bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Cheddar Melt jumbo'),
        (select max(id) from public.ingredient where name = 'double dose of bacon'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Italian Passion jumbo', 'https://korpa.ba/product_uploads/b9knhwNau8rmBBVP4gGDpV8Ir67YdJT6.jpg', 496,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Italian Passion jumbo'),
        (select max(id) from public.category where name = 'Pizza jumbo (38cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Italian Passion jumbo'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Italian Passion jumbo'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('pesto sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Italian Passion jumbo'),
        (select max(id) from public.ingredient where name = 'pesto sauce'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Italian Passion jumbo'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('fresh tomatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Italian Passion jumbo'),
        (select max(id) from public.ingredient where name = 'fresh tomatoes'));
INSERT INTO public.ingredient (name)
VALUES ('basil')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Italian Passion jumbo'),
        (select max(id) from public.ingredient where name = 'basil'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Parmesana jumbo', 'https://korpa.ba/product_uploads/8qZnG2IqK4JjxIua2EyeI2wsW4S2Dm1H.jpg', 496,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Parmesana jumbo'),
        (select max(id) from public.category where name = 'Pizza jumbo (38cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Fresh cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Parmesana jumbo'),
        (select max(id) from public.ingredient where name = 'Fresh cream'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Parmesana jumbo'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Parmesana jumbo'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('fresh tomatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Parmesana jumbo'),
        (select max(id) from public.ingredient where name = 'fresh tomatoes'));
INSERT INTO public.ingredient (name)
VALUES ('basil')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Parmesana jumbo'),
        (select max(id) from public.ingredient where name = 'basil'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Garlic Sizzler jumbo', 'None', 496,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Garlic Sizzler jumbo'),
        (select max(id) from public.category where name = 'Pizza jumbo (38cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Garlic Sizzler jumbo'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Garlic Sizzler jumbo'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('pepperoni')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Garlic Sizzler jumbo'),
        (select max(id) from public.ingredient where name = 'pepperoni'));
INSERT INTO public.ingredient (name)
VALUES ('jalapenos hot peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Garlic Sizzler jumbo'),
        (select max(id) from public.ingredient where name = 'jalapenos hot peppers'));
INSERT INTO public.ingredient (name)
VALUES ('olives')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Garlic Sizzler jumbo'),
        (select max(id) from public.ingredient where name = 'olives'));
INSERT INTO public.ingredient (name)
VALUES ('garlic sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Garlic Sizzler jumbo'),
        (select max(id) from public.ingredient where name = 'garlic sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Burger Pizza jumbo', 'https://korpa.ba/product_uploads/KQBvBWbxN8SsIQ1GAPqDfqWQNMDomCYB.jpg', 520,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Burger Pizza jumbo'),
        (select max(id) from public.category where name = 'Pizza jumbo (38cm)'));
INSERT INTO public.ingredient (name)
VALUES ('100% mozzarella cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger Pizza jumbo'),
        (select max(id) from public.ingredient where name = '100% mozzarella cheese'));
INSERT INTO public.ingredient (name)
VALUES ('cheddar cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger Pizza jumbo'),
        (select max(id) from public.ingredient where name = 'cheddar cheese'));
INSERT INTO public.ingredient (name)
VALUES ('seasoned beef')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger Pizza jumbo'),
        (select max(id) from public.ingredient where name = 'seasoned beef'));
INSERT INTO public.ingredient (name)
VALUES ('fresh tomatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger Pizza jumbo'),
        (select max(id) from public.ingredient where name = 'fresh tomatoes'));
INSERT INTO public.ingredient (name)
VALUES ('burger sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger Pizza jumbo'),
        (select max(id) from public.ingredient where name = 'burger sauce'));
INSERT INTO public.ingredient (name)
VALUES ('cucumbers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger Pizza jumbo'),
        (select max(id) from public.ingredient where name = 'cucumbers'));
INSERT INTO public.ingredient (name)
VALUES ('onions')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger Pizza jumbo'),
        (select max(id) from public.ingredient where name = 'onions'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Pepperoni Passion Jumbo', 'https://korpa.ba/product_uploads/9IqHp4uKfDY5osqOmOqO0HjYYee5Tosn.jpg', 520,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Pepperoni Passion Jumbo'),
        (select max(id) from public.category where name = 'Pizza jumbo (38cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pepperoni Passion Jumbo'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('double dose of mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pepperoni Passion Jumbo'),
        (select max(id) from public.ingredient where name = 'double dose of mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('double dose of Dominos pepperoni sausage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pepperoni Passion Jumbo'),
        (select max(id) from public.ingredient where name = 'double dose of Dominos pepperoni sausage'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Burger Barbeque jumbo', 'https://korpa.ba/product_uploads/5LYzgBX4QiaZvdVhHAK05AXxTjsEMopB.jpg', 520,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Burger Barbeque jumbo'),
        (select max(id) from public.category where name = 'Pizza jumbo (38cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Barbecue sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger Barbeque jumbo'),
        (select max(id) from public.ingredient where name = 'Barbecue sauce'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger Barbeque jumbo'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('onions')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger Barbeque jumbo'),
        (select max(id) from public.ingredient where name = 'onions'));
INSERT INTO public.ingredient (name)
VALUES ('tomatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger Barbeque jumbo'),
        (select max(id) from public.ingredient where name = 'tomatoes'));
INSERT INTO public.ingredient (name)
VALUES ('chicken meat')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger Barbeque jumbo'),
        (select max(id) from public.ingredient where name = 'chicken meat'));
INSERT INTO public.ingredient (name)
VALUES ('burger sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger Barbeque jumbo'),
        (select max(id) from public.ingredient where name = 'burger sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Carbonara jumbo', 'https://korpa.ba/product_uploads/hJmEhwoB0lmI9eCd113V45dzMeBdvfOo.jpg', 520,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Carbonara jumbo'),
        (select max(id) from public.category where name = 'Pizza jumbo (38cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Fresh cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Carbonara jumbo'),
        (select max(id) from public.ingredient where name = 'Fresh cream'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Carbonara jumbo'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Carbonara jumbo'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Carbonara jumbo'),
        (select max(id) from public.ingredient where name = 'bacon'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Carbonara jumbo'),
        (select max(id) from public.ingredient where name = 'mushrooms'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('4 Cheese jumbo', 'https://korpa.ba/product_uploads/6fSChjBa52TwmeX9q4dQk97nIaaRPqrh.jpg', 520,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = '4 Cheese jumbo'),
        (select max(id) from public.category where name = 'Pizza jumbo (38cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = '4 Cheese jumbo'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = '4 Cheese jumbo'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('cheddar')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = '4 Cheese jumbo'),
        (select max(id) from public.ingredient where name = 'cheddar'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = '4 Cheese jumbo'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('feta cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = '4 Cheese jumbo'),
        (select max(id) from public.ingredient where name = 'feta cheese'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Ham & Bacon Jumbo', 'https://korpa.ba/product_uploads/iHQ0LtBkIOEbSkffEDegDy3KCzWyvPpC.jpg', 520,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Ham & Bacon Jumbo'),
        (select max(id) from public.category where name = 'Pizza jumbo (38cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Ham & Bacon Jumbo'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Ham & Bacon Jumbo'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('cheddar cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Ham & Bacon Jumbo'),
        (select max(id) from public.ingredient where name = 'cheddar cheese'));
INSERT INTO public.ingredient (name)
VALUES ('ham')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Ham & Bacon Jumbo'),
        (select max(id) from public.ingredient where name = 'ham'));
INSERT INTO public.ingredient (name)
VALUES ('bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Ham & Bacon Jumbo'),
        (select max(id) from public.ingredient where name = 'bacon'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('New Yorker jumbo', 'https://korpa.ba/product_uploads/BvLKe14KDDDmK4VJsacpl0ITRiZqFypD.jpg', 520,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'New Yorker jumbo'),
        (select max(id) from public.category where name = 'Pizza jumbo (38cm)'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'New Yorker jumbo'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'New Yorker jumbo'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('Dominos pepperoni sausage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'New Yorker jumbo'),
        (select max(id) from public.ingredient where name = 'Dominos pepperoni sausage'));
INSERT INTO public.ingredient (name)
VALUES ('bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'New Yorker jumbo'),
        (select max(id) from public.ingredient where name = 'bacon'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'New Yorker jumbo'),
        (select max(id) from public.ingredient where name = 'mushrooms'));
INSERT INTO public.category (name, photo)
VALUES ('Chicken & Starters', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Buffalo Wings', 'https://korpa.ba/product_uploads/lnu6K8AbHLkh951FPflL40HWSwlrQjGJ.jpg', 280,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Buffalo Wings'),
        (select max(id) from public.category where name = 'Chicken & Starters'));
INSERT INTO public.ingredient (name)
VALUES ('8 pieces of freshly baked chicken wings topped with BBQ sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Buffalo Wings'), (select max(id)
                                                                         from public.ingredient
                                                                         where name = '8 pieces of freshly baked chicken wings topped with BBQ sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chicken Strippers', 'https://korpa.ba/product_uploads/rAqRPGySR4mKIMduiKG9ibFsTA8gwjoM.jpg', 280,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chicken Strippers'),
        (select max(id) from public.category where name = 'Chicken & Starters'));
INSERT INTO public.ingredient (name)
VALUES ('Juicy chicken breast fillet with a crispy coating baked in the oven')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Strippers'), (select max(id)
                                                                             from public.ingredient
                                                                             where name =
                                                                                   'Juicy chicken breast fillet with a crispy coating baked in the oven'));
INSERT INTO public.ingredient (name)
VALUES ('served with Dominos Sweet Chili sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Strippers'),
        (select max(id) from public.ingredient where name = 'served with Dominos Sweet Chili sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chicken Kickers', 'https://korpa.ba/product_uploads/UsRkBYWlI8ScK7BVhP6xS9ZWn0qqcYJW.jpg', 280,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chicken Kickers'),
        (select max(id) from public.category where name = 'Chicken & Starters'));
INSERT INTO public.ingredient (name)
VALUES ('Freshly baked chicken nuggets with a spicy coating')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Kickers'),
        (select max(id) from public.ingredient where name = 'Freshly baked chicken nuggets with a spicy coating'));
INSERT INTO public.ingredient (name)
VALUES ('served with Dominos Ranch sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Kickers'),
        (select max(id) from public.ingredient where name = 'served with Dominos Ranch sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Potato Wedges', 'https://korpa.ba/product_uploads/EV8rbban1Wqn4rNupRmEGE38WC4OJ9se.jpg', 140,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Potato Wedges'),
        (select max(id) from public.category where name = 'Chicken & Starters'));
INSERT INTO public.ingredient (name)
VALUES ('Potatoes with spicy skin')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Potato Wedges'),
        (select max(id) from public.ingredient where name = 'Potatoes with spicy skin'));
INSERT INTO public.ingredient (name)
VALUES ('side dish Dominos`s BBQ sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Potato Wedges'),
        (select max(id) from public.ingredient where name = 'side dish Dominos`s BBQ sauce'));
INSERT INTO public.category (name, photo)
VALUES ('Sandwiches', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Creamy Bacon Sandwich', 'None', 170,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Creamy Bacon Sandwich'),
        (select max(id) from public.category where name = 'Sandwiches'));
INSERT INTO public.ingredient (name)
VALUES ('Fresh cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Creamy Bacon Sandwich'),
        (select max(id) from public.ingredient where name = 'Fresh cream'));
INSERT INTO public.ingredient (name)
VALUES ('gouda')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Creamy Bacon Sandwich'),
        (select max(id) from public.ingredient where name = 'gouda'));
INSERT INTO public.ingredient (name)
VALUES ('fresh mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Creamy Bacon Sandwich'),
        (select max(id) from public.ingredient where name = 'fresh mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Creamy Bacon Sandwich'),
        (select max(id) from public.ingredient where name = 'bacon'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Creamy Bacon Sandwich'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Mediterraneo Sandwich', 'https://korpa.ba/product_uploads/c2sDguGMRwa1zHhr1UVsn0SU4Oqm4sPz.jpg', 170,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Mediterraneo Sandwich'),
        (select max(id) from public.category where name = 'Sandwiches'));
INSERT INTO public.ingredient (name)
VALUES ('Fresh tomatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mediterraneo Sandwich'),
        (select max(id) from public.ingredient where name = 'Fresh tomatoes'));
INSERT INTO public.ingredient (name)
VALUES ('fresh peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mediterraneo Sandwich'),
        (select max(id) from public.ingredient where name = 'fresh peppers'));
INSERT INTO public.ingredient (name)
VALUES ('olives')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mediterraneo Sandwich'),
        (select max(id) from public.ingredient where name = 'olives'));
INSERT INTO public.ingredient (name)
VALUES ('fresh cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mediterraneo Sandwich'),
        (select max(id) from public.ingredient where name = 'fresh cream'));
INSERT INTO public.ingredient (name)
VALUES ('feta')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mediterraneo Sandwich'),
        (select max(id) from public.ingredient where name = 'feta'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Pepperoni Sandwich', 'https://korpa.ba/product_uploads/nsM0IiiWwAeKHubvrahJbpXuHYQIkqpx.jpg', 170,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Pepperoni Sandwich'),
        (select max(id) from public.category where name = 'Sandwiches'));
INSERT INTO public.ingredient (name)
VALUES ('Gouda')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pepperoni Sandwich'),
        (select max(id) from public.ingredient where name = 'Gouda'));
INSERT INTO public.ingredient (name)
VALUES ('fresh tomatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pepperoni Sandwich'),
        (select max(id) from public.ingredient where name = 'fresh tomatoes'));
INSERT INTO public.ingredient (name)
VALUES ('fresh mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pepperoni Sandwich'),
        (select max(id) from public.ingredient where name = 'fresh mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('pepperoni')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pepperoni Sandwich'),
        (select max(id) from public.ingredient where name = 'pepperoni'));
INSERT INTO public.ingredient (name)
VALUES ('fresh sour cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pepperoni Sandwich'),
        (select max(id) from public.ingredient where name = 'fresh sour cream'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chicken BBQ Sandwich', 'https://korpa.ba/product_uploads/6QsMsuaMTWlU4tX7V3gLtLZcInqv7nTp.jpg', 170,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chicken BBQ Sandwich'),
        (select max(id) from public.category where name = 'Sandwiches'));
INSERT INTO public.ingredient (name)
VALUES ('Barbeque')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken BBQ Sandwich'),
        (select max(id) from public.ingredient where name = 'Barbeque'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken BBQ Sandwich'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('corn')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken BBQ Sandwich'),
        (select max(id) from public.ingredient where name = 'corn'));
INSERT INTO public.ingredient (name)
VALUES ('gouda')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken BBQ Sandwich'),
        (select max(id) from public.ingredient where name = 'gouda'));
INSERT INTO public.ingredient (name)
VALUES ('chicken')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken BBQ Sandwich'),
        (select max(id) from public.ingredient where name = 'chicken'));
INSERT INTO public.category (name, photo)
VALUES ('Salads', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Ceasar`s Salad', 'https://korpa.ba/product_uploads/goZ1TL4V6ATZD6Xk4hiOLX24iRoLhTGz.jpg', 190,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Ceasar`s Salad'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Choose chicken or bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Ceasar`s Salad'),
        (select max(id) from public.ingredient where name = 'Choose chicken or bacon'));
INSERT INTO public.ingredient (name)
VALUES ('iceberg')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Ceasar`s Salad'),
        (select max(id) from public.ingredient where name = 'iceberg'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Ceasar`s Salad'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('crouton crumbs')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Ceasar`s Salad'),
        (select max(id) from public.ingredient where name = 'crouton crumbs'));
INSERT INTO public.ingredient (name)
VALUES ('corn')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Ceasar`s Salad'),
        (select max(id) from public.ingredient where name = 'corn'));
INSERT INTO public.ingredient (name)
VALUES ('carrot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Ceasar`s Salad'),
        (select max(id) from public.ingredient where name = 'carrot'));
INSERT INTO public.ingredient (name)
VALUES ('side vinaigrette sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Ceasar`s Salad'),
        (select max(id) from public.ingredient where name = 'side vinaigrette sauce'));
INSERT INTO public.category (name, photo)
VALUES ('Desserts', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Lava Cake', 'https://korpa.ba/product_uploads/Hlc27s6lqrLAqXhUCLh2oUG98hi6A21b.jpg', 160,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Lava Cake'),
        (select max(id) from public.category where name = 'Desserts'));
INSERT INTO public.ingredient (name)
VALUES ('Fresh chocolate cake filled with chocolate lava')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Lava Cake'),
        (select max(id) from public.ingredient where name = 'Fresh chocolate cake filled with chocolate lava'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Choco Pie with Nutella', 'https://korpa.ba/product_uploads/3IwVm4pIvsdztE5wL9sLXgtrdvERnhos.jpg', 200,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Choco Pie with Nutella'),
        (select max(id) from public.category where name = 'Desserts'));
INSERT INTO public.ingredient (name)
VALUES ('Freshly baked crispy nutella pie')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Choco Pie with Nutella'),
        (select max(id) from public.ingredient where name = 'Freshly baked crispy nutella pie'));
INSERT INTO public.category (name, photo)
VALUES ('Sauces', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Sweet Chili Dip', 'https://korpa.ba/product_uploads/TQWvJ3pUhNR6SX7Qc8aATTTS6fRNAKHi.jpg', 30,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Sweet Chili Dip'),
        (select max(id) from public.category where name = 'Sauces'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Barbeque Dip', 'https://korpa.ba/product_uploads/CfW8WEER5ygEx3U3Vupgo5NplkUkgkZt.jpg', 30,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Barbeque Dip'),
        (select max(id) from public.category where name = 'Sauces'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Ranch Dip', 'https://korpa.ba/product_uploads/5DpDVLJkuwo0Q84OnLnCNppAMpK06p0f.jpg', 30,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Ranch Dip'),
        (select max(id) from public.category where name = 'Sauces'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Vinegret', 'https://korpa.ba/product_uploads/DeEdULrkrsRZaMYhtbOrPyq3Dq42Ajpo.jpg', 30,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Vinegret'),
        (select max(id) from public.category where name = 'Sauces'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Tomato Dip', 'https://korpa.ba/product_uploads/kkE4z6pu4YH4JeUAQSOgnJZE2rv81ccp.jpg', 20,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Tomato Dip'),
        (select max(id) from public.category where name = 'Sauces'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Garlic and Herb Dip', 'https://korpa.ba/product_uploads/RwTbk9c7gLJ7ciU8uxiBF5hBJ6OJKDak.jpg', 30,
        (select max(id) from public.restaurant where name = 'Dominos Pizza Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Garlic and Herb Dip'),
        (select max(id) from public.category where name = 'Sauces'));