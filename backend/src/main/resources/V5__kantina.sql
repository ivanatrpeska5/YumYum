INSERT INTO public.location (number, street)
VALUES ('6,', 'Radnjanska');
INSERT INTO public.restaurant (average_rating, delivery_time, logo, name, photo, location_id)
VALUES (0, '20-30 min', 'assets/images/kantina_skopje.png', 'Kantina Skopje',
        'https://korpa.ba/restaurant_uploads/x4uUp9uwv4RIiTxKRBK7CC7lhsDY8fP1.jpg',
        (select max(id) from public.location));
INSERT INTO public.users (email, name, password, phone, surname, username, role)
VALUES ('kantina_skopje_employee@mail.com', 'Employee', '$2a$10$VAlO0DtwWX42GHzGGM0DHOIx2kLX1EAhLwaTrXwEsj5n5K9Lr7EQO',
        '071234567', 'Kantina Skopje', 'kantina_skopje_employee', 'employee');
INSERT INTO public.restaurant_employee (user_id, restaurant_id)
VALUES ((select max(user_id) from public.users), (select max(id) from public.restaurant));
INSERT INTO public.category (name, photo)
VALUES ('Mexican day', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Burrito', 'https://korpa.ba/product_uploads/fH9s2jz7XuCwtcbsih0XLqwr72CUs0Nf.jpg', 248,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Burrito'),
        (select max(id) from public.category where name = 'Mexican day'));
INSERT INTO public.ingredient (name)
VALUES ('Tortilla')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burrito'),
        (select max(id) from public.ingredient where name = 'Tortilla'));
INSERT INTO public.ingredient (name)
VALUES ('edam')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burrito'),
        (select max(id) from public.ingredient where name = 'edam'));
INSERT INTO public.ingredient (name)
VALUES ('chicken')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burrito'),
        (select max(id) from public.ingredient where name = 'chicken'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burrito'),
        (select max(id) from public.ingredient where name = 'mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('rice')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burrito'),
        (select max(id) from public.ingredient where name = 'rice'));
INSERT INTO public.ingredient (name)
VALUES ('tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burrito'),
        (select max(id) from public.ingredient where name = 'tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('red beans')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burrito'),
        (select max(id) from public.ingredient where name = 'red beans'));
INSERT INTO public.ingredient (name)
VALUES ('chilli')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burrito'),
        (select max(id) from public.ingredient where name = 'chilli'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Quesadilla', 'https://korpa.ba/product_uploads/oqC1tyPZf8xQA8hs1UtrOrj2TJr93pZZ.jpg', 264,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Quesadilla'),
        (select max(id) from public.category where name = 'Mexican day'));
INSERT INTO public.ingredient (name)
VALUES ('Tortilla')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quesadilla'),
        (select max(id) from public.ingredient where name = 'Tortilla'));
INSERT INTO public.ingredient (name)
VALUES ('jalapeno')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quesadilla'),
        (select max(id) from public.ingredient where name = 'jalapeno'));
INSERT INTO public.ingredient (name)
VALUES ('cheddar')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quesadilla'),
        (select max(id) from public.ingredient where name = 'cheddar'));
INSERT INTO public.ingredient (name)
VALUES ('sour cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quesadilla'),
        (select max(id) from public.ingredient where name = 'sour cream'));
INSERT INTO public.ingredient (name)
VALUES ('chicken')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quesadilla'),
        (select max(id) from public.ingredient where name = 'chicken'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quesadilla'),
        (select max(id) from public.ingredient where name = 'mushrooms'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Spicy meatballs in sauce', 'https://korpa.ba/product_uploads/A3qSrZk90OrylkEMSd0kVEFXe00OB1NL.jpg', 240,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Spicy meatballs in sauce'),
        (select max(id) from public.category where name = 'Mexican day'));
INSERT INTO public.ingredient (name)
VALUES ('Minced beef meatballs')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spicy meatballs in sauce'),
        (select max(id) from public.ingredient where name = 'Minced beef meatballs'));
INSERT INTO public.ingredient (name)
VALUES ('tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spicy meatballs in sauce'),
        (select max(id) from public.ingredient where name = 'tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('dill')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spicy meatballs in sauce'),
        (select max(id) from public.ingredient where name = 'dill'));
INSERT INTO public.ingredient (name)
VALUES ('parsley')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spicy meatballs in sauce'),
        (select max(id) from public.ingredient where name = 'parsley'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spicy meatballs in sauce'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('chilli')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spicy meatballs in sauce'),
        (select max(id) from public.ingredient where name = 'chilli'));
INSERT INTO public.ingredient (name)
VALUES ('onion bread')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spicy meatballs in sauce'),
        (select max(id) from public.ingredient where name = 'onion bread'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spicy meatballs in sauce'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.category (name, photo)
VALUES ('Burgers', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('El Jefe', 'https://korpa.ba/product_uploads/WlaAskzLUfFq6udNRyEGeLPWTv3E7hUL.jpg', 430,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'El Jefe'),
        (select max(id) from public.category where name = 'Burgers'));
INSERT INTO public.ingredient (name)
VALUES ('Homemade bread with sesame')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'El Jefe'),
        (select max(id) from public.ingredient where name = 'Homemade bread with sesame'));
INSERT INTO public.ingredient (name)
VALUES ('ground beef')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'El Jefe'),
        (select max(id) from public.ingredient where name = 'ground beef'));
INSERT INTO public.ingredient (name)
VALUES ('roquefort cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'El Jefe'),
        (select max(id) from public.ingredient where name = 'roquefort cheese'));
INSERT INTO public.ingredient (name)
VALUES ('rocket')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'El Jefe'),
        (select max(id) from public.ingredient where name = 'rocket'));
INSERT INTO public.ingredient (name)
VALUES ('walnut cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'El Jefe'),
        (select max(id) from public.ingredient where name = 'walnut cream'));
INSERT INTO public.ingredient (name)
VALUES ('caramelized onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'El Jefe'),
        (select max(id) from public.ingredient where name = 'caramelized onion'));
INSERT INTO public.ingredient (name)
VALUES ('potatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'El Jefe'),
        (select max(id) from public.ingredient where name = 'potatoes'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Kantina', 'https://korpa.ba/product_uploads/V6QMuBMXVXm1sD7mRNWRSVUZiNzYJhwi.jpg', 430,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Kantina'),
        (select max(id) from public.category where name = 'Burgers'));
INSERT INTO public.ingredient (name)
VALUES ('Homemade bread with sesame')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Kantina'),
        (select max(id) from public.ingredient where name = 'Homemade bread with sesame'));
INSERT INTO public.ingredient (name)
VALUES ('ground beef')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Kantina'),
        (select max(id) from public.ingredient where name = 'ground beef'));
INSERT INTO public.ingredient (name)
VALUES ('cheddar')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Kantina'),
        (select max(id) from public.ingredient where name = 'cheddar'));
INSERT INTO public.ingredient (name)
VALUES ('bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Kantina'),
        (select max(id) from public.ingredient where name = 'bacon'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Kantina'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Kantina'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('kantina sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Kantina'),
        (select max(id) from public.ingredient where name = 'kantina sauce'));
INSERT INTO public.ingredient (name)
VALUES ('potatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Kantina'),
        (select max(id) from public.ingredient where name = 'potatoes'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Bazooka', 'https://korpa.ba/product_uploads/N5I1OgvZXzoZ9RlYFfv9nZESHu7P5uPT.jpg', 630,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Bazooka'),
        (select max(id) from public.category where name = 'Burgers'));
INSERT INTO public.ingredient (name)
VALUES ('Homemade bread with sesame')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bazooka'),
        (select max(id) from public.ingredient where name = 'Homemade bread with sesame'));
INSERT INTO public.ingredient (name)
VALUES ('ground beef X2')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bazooka'),
        (select max(id) from public.ingredient where name = 'ground beef X2'));
INSERT INTO public.ingredient (name)
VALUES ('cheddar')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bazooka'),
        (select max(id) from public.ingredient where name = 'cheddar'));
INSERT INTO public.ingredient (name)
VALUES ('egg')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bazooka'),
        (select max(id) from public.ingredient where name = 'egg'));
INSERT INTO public.ingredient (name)
VALUES ('iceberg lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bazooka'),
        (select max(id) from public.ingredient where name = 'iceberg lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bazooka'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('BBQ sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bazooka'),
        (select max(id) from public.ingredient where name = 'BBQ sauce'));
INSERT INTO public.ingredient (name)
VALUES ('potatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bazooka'),
        (select max(id) from public.ingredient where name = 'potatoes'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Grandmas Burger', 'https://korpa.ba/product_uploads/YNbccuwqfyTkF50OVFAQ2OirQjdZSa7a.jpg', 460,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Grandmas Burger'),
        (select max(id) from public.category where name = 'Burgers'));
INSERT INTO public.ingredient (name)
VALUES ('Homemade bread with sesame')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id)
         from public.food
         where name = 'Grandmas Burger'),
        (select max(id) from public.ingredient where name = 'Homemade bread with sesame'));
INSERT INTO public.ingredient (name)
VALUES ('ground beef')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Grandmas Burger'),
        (select max(id) from public.ingredient where name = 'ground beef'));
INSERT INTO public.ingredient (name)
VALUES ('cheddar')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id)
         from public.food
         where name = 'Grandmas Burger'), (select max(id) from public.ingredient where name = 'cheddar'));
INSERT INTO public.ingredient (name)
VALUES ('bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Grandmas Burger'),
        (select max(id) from public.ingredient where name = 'bacon'));
INSERT INTO public.ingredient (name)
VALUES ('iceberg lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id)
         from public.food
         where name = 'Grandmas Burger'), (select max(id) from public.ingredient where name = 'iceberg lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('caramelized onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Grandmas Burger'),
        (select max(id) from public.ingredient where name = 'caramelized onion'));
INSERT INTO public.ingredient (name)
VALUES ('jalapeno peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id)
         from public.food
         where name = 'Grandmas Burger'), (select max(id) from public.ingredient where name = 'jalapeno peppers'));
INSERT INTO public.ingredient (name)
VALUES ('garlic sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Grandmas Burger'),
        (select max(id) from public.ingredient where name = 'garlic sauce'));
INSERT INTO public.ingredient (name)
VALUES ('pickles')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id)
         from public.food
         where name = 'Grandmas Burger'), (select max(id) from public.ingredient where name = 'pickles'));
INSERT INTO public.ingredient (name)
VALUES ('potatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Grandmas Burger'),
        (select max(id) from public.ingredient where name = 'potatoes'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Veggie', 'https://korpa.ba/product_uploads/GEWx8yg2FGxIIOCSheGIkwdDIXNPgCoF.jpg', 360,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Veggie'),
        (select max(id) from public.category where name = 'Burgers'));
INSERT INTO public.ingredient (name)
VALUES ('Homemade bread with sesame')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Veggie'),
        (select max(id) from public.ingredient where name = 'Homemade bread with sesame'));
INSERT INTO public.ingredient (name)
VALUES ('veggie burger patty')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Veggie'),
        (select max(id) from public.ingredient where name = 'veggie burger patty'));
INSERT INTO public.ingredient (name)
VALUES ('cheddar')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Veggie'),
        (select max(id) from public.ingredient where name = 'cheddar'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Veggie'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('cucumber')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Veggie'),
        (select max(id) from public.ingredient where name = 'cucumber'));
INSERT INTO public.ingredient (name)
VALUES ('garlic sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Veggie'),
        (select max(id) from public.ingredient where name = 'garlic sauce'));
INSERT INTO public.ingredient (name)
VALUES ('potatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Veggie'),
        (select max(id) from public.ingredient where name = 'potatoes'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Asian Twist Burger', 'https://korpa.ba/product_uploads/mpW2xjDRXhAKSWSZpckcrHzbbNGeEZ34.jpg', 430,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Asian Twist Burger'),
        (select max(id) from public.category where name = 'Burgers'));
INSERT INTO public.ingredient (name)
VALUES ('Brioche bun')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Asian Twist Burger'),
        (select max(id) from public.ingredient where name = 'Brioche bun'));
INSERT INTO public.ingredient (name)
VALUES ('beef')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Asian Twist Burger'),
        (select max(id) from public.ingredient where name = 'beef'));
INSERT INTO public.ingredient (name)
VALUES ('Asian coleslaw (carrot)')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Asian Twist Burger'),
        (select max(id) from public.ingredient where name = 'Asian coleslaw (carrot)'));
INSERT INTO public.ingredient (name)
VALUES ('red cabbage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Asian Twist Burger'),
        (select max(id) from public.ingredient where name = 'red cabbage'));
INSERT INTO public.ingredient (name)
VALUES ('mint')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Asian Twist Burger'),
        (select max(id) from public.ingredient where name = 'mint'));
INSERT INTO public.ingredient (name)
VALUES ('coriander and asian dressing')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Asian Twist Burger'),
        (select max(id) from public.ingredient where name = 'coriander and asian dressing'));
INSERT INTO public.ingredient (name)
VALUES ('cucumber')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Asian Twist Burger'),
        (select max(id) from public.ingredient where name = 'cucumber'));
INSERT INTO public.ingredient (name)
VALUES ('sriracha mayo sauce and fries')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Asian Twist Burger'),
        (select max(id) from public.ingredient where name = 'sriracha mayo sauce and fries'));
INSERT INTO public.category (name, photo)
VALUES ('Main dishes', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Asian chicken', 'https://korpa.ba/product_uploads/wttQ4r5NPOAsWgxbjGbgtIszjRTbPdaP.jpg', 400,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Asian chicken'),
        (select max(id) from public.category where name = 'Main dishes'));
INSERT INTO public.ingredient (name)
VALUES ('Chicken')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Asian chicken'),
        (select max(id) from public.ingredient where name = 'Chicken'));
INSERT INTO public.ingredient (name)
VALUES ('mix of vegetables')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Asian chicken'),
        (select max(id) from public.ingredient where name = 'mix of vegetables'));
INSERT INTO public.ingredient (name)
VALUES ('noodles')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Asian chicken'),
        (select max(id) from public.ingredient where name = 'noodles'));
INSERT INTO public.ingredient (name)
VALUES ('peanuts')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Asian chicken'),
        (select max(id) from public.ingredient where name = 'peanuts'));
INSERT INTO public.ingredient (name)
VALUES ('sweet chilly sour sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Asian chicken'),
        (select max(id) from public.ingredient where name = 'sweet chilly sour sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Thai Chicken', 'https://korpa.ba/product_uploads/7zeWh8w8xQ5u7gQqc7GrtbbAtEIjJISX.jpg', 420,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Thai Chicken'),
        (select max(id) from public.category where name = 'Main dishes'));
INSERT INTO public.ingredient (name)
VALUES ('Chicken steak')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Thai Chicken'),
        (select max(id) from public.ingredient where name = 'Chicken steak'));
INSERT INTO public.ingredient (name)
VALUES ('red curry')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Thai Chicken'),
        (select max(id) from public.ingredient where name = 'red curry'));
INSERT INTO public.ingredient (name)
VALUES ('soya sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Thai Chicken'),
        (select max(id) from public.ingredient where name = 'soya sauce'));
INSERT INTO public.ingredient (name)
VALUES ('sesame')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Thai Chicken'),
        (select max(id) from public.ingredient where name = 'sesame'));
INSERT INTO public.ingredient (name)
VALUES ('black seeds')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Thai Chicken'),
        (select max(id) from public.ingredient where name = 'black seeds'));
INSERT INTO public.ingredient (name)
VALUES ('fresh pineapple')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Thai Chicken'),
        (select max(id) from public.ingredient where name = 'fresh pineapple'));
INSERT INTO public.ingredient (name)
VALUES ('sesame oil')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Thai Chicken'),
        (select max(id) from public.ingredient where name = 'sesame oil'));
INSERT INTO public.ingredient (name)
VALUES ('noodles')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Thai Chicken'),
        (select max(id) from public.ingredient where name = 'noodles'));
INSERT INTO public.ingredient (name)
VALUES ('sriracha sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Thai Chicken'),
        (select max(id) from public.ingredient where name = 'sriracha sauce'));
INSERT INTO public.ingredient (name)
VALUES ('green onions')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Thai Chicken'),
        (select max(id) from public.ingredient where name = 'green onions'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Thai Pork', 'https://korpa.ba/product_uploads/WCIi7IKZbFLjKDHp1aVP8bMh0JwGgtzF.jpg', 490,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Thai Pork'),
        (select max(id) from public.category where name = 'Main dishes'));
INSERT INTO public.ingredient (name)
VALUES ('Pork steak')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Thai Pork'),
        (select max(id) from public.ingredient where name = 'Pork steak'));
INSERT INTO public.ingredient (name)
VALUES ('red curry')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Thai Pork'),
        (select max(id) from public.ingredient where name = 'red curry'));
INSERT INTO public.ingredient (name)
VALUES ('soya sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Thai Pork'),
        (select max(id) from public.ingredient where name = 'soya sauce'));
INSERT INTO public.ingredient (name)
VALUES ('sesame')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Thai Pork'),
        (select max(id) from public.ingredient where name = 'sesame'));
INSERT INTO public.ingredient (name)
VALUES ('black seeds')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Thai Pork'),
        (select max(id) from public.ingredient where name = 'black seeds'));
INSERT INTO public.ingredient (name)
VALUES ('fresh pineapple')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Thai Pork'),
        (select max(id) from public.ingredient where name = 'fresh pineapple'));
INSERT INTO public.ingredient (name)
VALUES ('sesame oil')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Thai Pork'),
        (select max(id) from public.ingredient where name = 'sesame oil'));
INSERT INTO public.ingredient (name)
VALUES ('noodles')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Thai Pork'),
        (select max(id) from public.ingredient where name = 'noodles'));
INSERT INTO public.ingredient (name)
VALUES ('sriracha sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Thai Pork'),
        (select max(id) from public.ingredient where name = 'sriracha sauce'));
INSERT INTO public.ingredient (name)
VALUES ('green onions')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Thai Pork'),
        (select max(id) from public.ingredient where name = 'green onions'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Pork steak', 'https://korpa.ba/product_uploads/4BgnpZ5DkrXwq0LIPM9YFoNzX0fwJMC9.jpg', 520,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Pork steak'),
        (select max(id) from public.category where name = 'Main dishes'));
INSERT INTO public.ingredient (name)
VALUES ('Pork steak')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork steak'),
        (select max(id) from public.ingredient where name = 'Pork steak'));
INSERT INTO public.ingredient (name)
VALUES ('potatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork steak'),
        (select max(id) from public.ingredient where name = 'potatoes'));
INSERT INTO public.ingredient (name)
VALUES ('rocket')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork steak'),
        (select max(id) from public.ingredient where name = 'rocket'));
INSERT INTO public.ingredient (name)
VALUES ('cherry tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork steak'),
        (select max(id) from public.ingredient where name = 'cherry tomato'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chicken steak with quattro formaggi sauce',
        'https://korpa.ba/product_uploads/f8RDAyFiPMjyjeZgCe6Ggv1L35f0pRxl.jpg', 420,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chicken steak with quattro formaggi sauce'),
        (select max(id) from public.category where name = 'Main dishes'));
INSERT INTO public.ingredient (name)
VALUES ('Chicken')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken steak with quattro formaggi sauce'),
        (select max(id) from public.ingredient where name = 'Chicken'));
INSERT INTO public.ingredient (name)
VALUES ('edammer')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken steak with quattro formaggi sauce'),
        (select max(id) from public.ingredient where name = 'edammer'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken steak with quattro formaggi sauce'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('roquefort cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken steak with quattro formaggi sauce'),
        (select max(id) from public.ingredient where name = 'roquefort cheese'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken steak with quattro formaggi sauce'),
        (select max(id) from public.ingredient where name = 'parmesan cheese'));
INSERT INTO public.ingredient (name)
VALUES ('potatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken steak with quattro formaggi sauce'),
        (select max(id) from public.ingredient where name = 'potatoes'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Turkey steak with cashews', 'https://korpa.ba/product_uploads/uUFq5NOKqZAMLQC4t5UEDt7E0eoA9Wgv.jpg', 520,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Turkey steak with cashews'),
        (select max(id) from public.category where name = 'Main dishes'));
INSERT INTO public.ingredient (name)
VALUES ('Turkey')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Turkey steak with cashews'),
        (select max(id) from public.ingredient where name = 'Turkey'));
INSERT INTO public.ingredient (name)
VALUES ('cashews')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Turkey steak with cashews'),
        (select max(id) from public.ingredient where name = 'cashews'));
INSERT INTO public.ingredient (name)
VALUES ('beef prosciutto')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Turkey steak with cashews'),
        (select max(id) from public.ingredient where name = 'beef prosciutto'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Turkey steak with cashews'),
        (select max(id) from public.ingredient where name = 'mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('white sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Turkey steak with cashews'),
        (select max(id) from public.ingredient where name = 'white sauce'));
INSERT INTO public.ingredient (name)
VALUES ('caraway')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Turkey steak with cashews'),
        (select max(id) from public.ingredient where name = 'caraway'));
INSERT INTO public.ingredient (name)
VALUES ('rice')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Turkey steak with cashews'),
        (select max(id) from public.ingredient where name = 'rice'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Italian steak', 'https://korpa.ba/product_uploads/D4543hWmL33vkdx3YAFttEAgBGBRJDJf.jpg', 420,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Italian steak'),
        (select max(id) from public.category where name = 'Main dishes'));
INSERT INTO public.ingredient (name)
VALUES ('Chicken fried steak')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Italian steak'),
        (select max(id) from public.ingredient where name = 'Chicken fried steak'));
INSERT INTO public.ingredient (name)
VALUES ('tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Italian steak'),
        (select max(id) from public.ingredient where name = 'tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Italian steak'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Italian steak'),
        (select max(id) from public.ingredient where name = 'parmesan cheese'));
INSERT INTO public.ingredient (name)
VALUES ('basil')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Italian steak'),
        (select max(id) from public.ingredient where name = 'basil'));
INSERT INTO public.ingredient (name)
VALUES ('spaghetti')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Italian steak'),
        (select max(id) from public.ingredient where name = 'spaghetti'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Fitness steak', 'https://korpa.ba/product_uploads/NzHSaOVUTlSmQewqCbg8y7KumBsrq33a.jpg', 400,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Fitness steak'),
        (select max(id) from public.category where name = 'Main dishes'));
INSERT INTO public.ingredient (name)
VALUES ('Chicken steak')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fitness steak'),
        (select max(id) from public.ingredient where name = 'Chicken steak'));
INSERT INTO public.ingredient (name)
VALUES ('mix of green salad')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fitness steak'),
        (select max(id) from public.ingredient where name = 'mix of green salad'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Baby ribs', 'https://korpa.ba/product_uploads/rg1fj0o9D9WQwCCf26XbljqXHgtqxkGq.jpg', 620,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Baby ribs'),
        (select max(id) from public.category where name = 'Main dishes'));
INSERT INTO public.ingredient (name)
VALUES ('Baby ribs')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Baby ribs'),
        (select max(id) from public.ingredient where name = 'Baby ribs'));
INSERT INTO public.ingredient (name)
VALUES ('BBQ sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Baby ribs'),
        (select max(id) from public.ingredient where name = 'BBQ sauce'));
INSERT INTO public.ingredient (name)
VALUES ('colesaw salad (red cabbage)')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Baby ribs'),
        (select max(id) from public.ingredient where name = 'colesaw salad (red cabbage)'));
INSERT INTO public.ingredient (name)
VALUES ('white cabbage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Baby ribs'),
        (select max(id) from public.ingredient where name = 'white cabbage'));
INSERT INTO public.ingredient (name)
VALUES ('carrot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Baby ribs'),
        (select max(id) from public.ingredient where name = 'carrot'));
INSERT INTO public.ingredient (name)
VALUES ('mayonnaise')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Baby ribs'),
        (select max(id) from public.ingredient where name = 'mayonnaise'));
INSERT INTO public.ingredient (name)
VALUES ('honey mustard and potatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Baby ribs'),
        (select max(id) from public.ingredient where name = 'honey mustard and potatoes'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Teriyaki chicken', 'https://korpa.ba/product_uploads/JZCyHinvbmBUyDYApD0SQxpAhct1j8jD.jpg', 400,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Teriyaki chicken'),
        (select max(id) from public.category where name = 'Main dishes'));
INSERT INTO public.ingredient (name)
VALUES ('chicken meat')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Teriyaki chicken'),
        (select max(id) from public.ingredient where name = 'chicken meat'));
INSERT INTO public.ingredient (name)
VALUES ('Teriyaki sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Teriyaki chicken'),
        (select max(id) from public.ingredient where name = 'Teriyaki sauce'));
INSERT INTO public.ingredient (name)
VALUES ('rice and broccoli')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Teriyaki chicken'),
        (select max(id) from public.ingredient where name = 'rice and broccoli'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Teriyaki turkey', 'https://korpa.ba/product_uploads/MDOxnTEV7c4Z0usY3iYGMWU83oF41QF1.jpg', 490,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Teriyaki turkey'),
        (select max(id) from public.category where name = 'Main dishes'));
INSERT INTO public.ingredient (name)
VALUES ('turkey meat')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Teriyaki turkey'),
        (select max(id) from public.ingredient where name = 'turkey meat'));
INSERT INTO public.ingredient (name)
VALUES ('Teriyaki sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Teriyaki turkey'),
        (select max(id) from public.ingredient where name = 'Teriyaki sauce'));
INSERT INTO public.ingredient (name)
VALUES ('rice and broccoli')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Teriyaki turkey'),
        (select max(id) from public.ingredient where name = 'rice and broccoli'));
INSERT INTO public.category (name, photo)
VALUES ('Salads', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Kantina Salad', 'https://korpa.ba/product_uploads/KVJBYjRwid63lonIxhfuS8LwxL8rJ6qz.jpg', 310,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Kantina Salad'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Iceberg lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Kantina Salad'),
        (select max(id) from public.ingredient where name = 'Iceberg lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('rocket')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Kantina Salad'),
        (select max(id) from public.ingredient where name = 'rocket'));
INSERT INTO public.ingredient (name)
VALUES ('chicken')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Kantina Salad'),
        (select max(id) from public.ingredient where name = 'chicken'));
INSERT INTO public.ingredient (name)
VALUES ('carrot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Kantina Salad'),
        (select max(id) from public.ingredient where name = 'carrot'));
INSERT INTO public.ingredient (name)
VALUES ('cucumber')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Kantina Salad'),
        (select max(id) from public.ingredient where name = 'cucumber'));
INSERT INTO public.ingredient (name)
VALUES ('cherry tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Kantina Salad'),
        (select max(id) from public.ingredient where name = 'cherry tomato'));
INSERT INTO public.ingredient (name)
VALUES ('corn')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Kantina Salad'),
        (select max(id) from public.ingredient where name = 'corn'));
INSERT INTO public.ingredient (name)
VALUES ('sweet chilly sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Kantina Salad'),
        (select max(id) from public.ingredient where name = 'sweet chilly sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Vitamin Salad', 'https://korpa.ba/product_uploads/OV0ij7oDeHoVIYCh4xT1ZJToZmQhMysB.jpg', 220,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Vitamin Salad'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Rocket')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vitamin Salad'),
        (select max(id) from public.ingredient where name = 'Rocket'));
INSERT INTO public.ingredient (name)
VALUES ('beet')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vitamin Salad'),
        (select max(id) from public.ingredient where name = 'beet'));
INSERT INTO public.ingredient (name)
VALUES ('carrot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vitamin Salad'),
        (select max(id) from public.ingredient where name = 'carrot'));
INSERT INTO public.ingredient (name)
VALUES ('corn')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vitamin Salad'),
        (select max(id) from public.ingredient where name = 'corn'));
INSERT INTO public.ingredient (name)
VALUES ('mix of seeds')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vitamin Salad'),
        (select max(id) from public.ingredient where name = 'mix of seeds'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Avocado Salad', 'https://korpa.ba/product_uploads/Fyqdyjys8Dlx5csgxZj6CP0uteAeEapo.jpg', 350,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Avocado Salad'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Rocket')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Avocado Salad'),
        (select max(id) from public.ingredient where name = 'Rocket'));
INSERT INTO public.ingredient (name)
VALUES ('avocado')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Avocado Salad'),
        (select max(id) from public.ingredient where name = 'avocado'));
INSERT INTO public.ingredient (name)
VALUES ('roquefort cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Avocado Salad'),
        (select max(id) from public.ingredient where name = 'roquefort cheese'));
INSERT INTO public.ingredient (name)
VALUES ('cucumber')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Avocado Salad'),
        (select max(id) from public.ingredient where name = 'cucumber'));
INSERT INTO public.ingredient (name)
VALUES ('cherry tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Avocado Salad'),
        (select max(id) from public.ingredient where name = 'cherry tomato'));
INSERT INTO public.ingredient (name)
VALUES ('walnuts')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Avocado Salad'),
        (select max(id) from public.ingredient where name = 'walnuts'));
INSERT INTO public.ingredient (name)
VALUES ('orange')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Avocado Salad'),
        (select max(id) from public.ingredient where name = 'orange'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Caprese Salad', 'https://korpa.ba/product_uploads/YYa5KglbPJpwR319BvFYH52XmCaXkVmA.jpg', 250,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Caprese Salad'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caprese Salad'),
        (select max(id) from public.ingredient where name = 'Tomato'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caprese Salad'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('pesto')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caprese Salad'),
        (select max(id) from public.ingredient where name = 'pesto'));
INSERT INTO public.ingredient (name)
VALUES ('rocket')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caprese Salad'),
        (select max(id) from public.ingredient where name = 'rocket'));
INSERT INTO public.ingredient (name)
VALUES ('balsamic creme')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caprese Salad'),
        (select max(id) from public.ingredient where name = 'balsamic creme'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Caesar Salad', 'https://korpa.ba/product_uploads/E6trEtHWRDmNNkn6hrhQXPoa2Gs2Z2mx.jpg', 310,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Caesar Salad'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar Salad'),
        (select max(id) from public.ingredient where name = 'Lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('chicken')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar Salad'),
        (select max(id) from public.ingredient where name = 'chicken'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar Salad'),
        (select max(id) from public.ingredient where name = 'parmesan cheese'));
INSERT INTO public.ingredient (name)
VALUES ('croutons')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar Salad'),
        (select max(id) from public.ingredient where name = 'croutons'));
INSERT INTO public.ingredient (name)
VALUES ('cherry tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar Salad'),
        (select max(id) from public.ingredient where name = 'cherry tomato'));
INSERT INTO public.ingredient (name)
VALUES ('dressing')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar Salad'),
        (select max(id) from public.ingredient where name = 'dressing'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Iceberg Salad', 'https://korpa.ba/product_uploads/s9tHvvEo1KEdWpfzztHzhdI1yeHFzFyR.jpg', 310,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Iceberg Salad'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Iceberg lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Iceberg Salad'),
        (select max(id) from public.ingredient where name = 'Iceberg lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('fried chicken')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Iceberg Salad'),
        (select max(id) from public.ingredient where name = 'fried chicken'));
INSERT INTO public.ingredient (name)
VALUES ('olives')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Iceberg Salad'),
        (select max(id) from public.ingredient where name = 'olives'));
INSERT INTO public.ingredient (name)
VALUES ('corn')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Iceberg Salad'),
        (select max(id) from public.ingredient where name = 'corn'));
INSERT INTO public.ingredient (name)
VALUES ('cherry tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Iceberg Salad'),
        (select max(id) from public.ingredient where name = 'cherry tomato'));
INSERT INTO public.ingredient (name)
VALUES ('dressing')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Iceberg Salad'),
        (select max(id) from public.ingredient where name = 'dressing'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Maple Salad', 'https://korpa.ba/product_uploads/tGip29nSEBzdZvLLLXeSegiLyJsq42qm.jpg', 260,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Maple Salad'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Iceberg lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Maple Salad'),
        (select max(id) from public.ingredient where name = 'Iceberg lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('rocket')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Maple Salad'),
        (select max(id) from public.ingredient where name = 'rocket'));
INSERT INTO public.ingredient (name)
VALUES ('apple')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Maple Salad'),
        (select max(id) from public.ingredient where name = 'apple'));
INSERT INTO public.ingredient (name)
VALUES ('nuts')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Maple Salad'),
        (select max(id) from public.ingredient where name = 'nuts'));
INSERT INTO public.ingredient (name)
VALUES ('cherry tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Maple Salad'),
        (select max(id) from public.ingredient where name = 'cherry tomato'));
INSERT INTO public.ingredient (name)
VALUES ('dressing with maple syrup')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Maple Salad'),
        (select max(id) from public.ingredient where name = 'dressing with maple syrup'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Smoked salmon and avocado Salad', 'https://korpa.ba/product_uploads/BHYQ8SVLrHYSXo7zm88XInsTPpOlpCjf.jpg', 420,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Smoked salmon and avocado Salad'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Smoked salmon and avocado Salad'),
        (select max(id) from public.ingredient where name = 'Lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('rocket')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Smoked salmon and avocado Salad'),
        (select max(id) from public.ingredient where name = 'rocket'));
INSERT INTO public.ingredient (name)
VALUES ('smoked salmon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Smoked salmon and avocado Salad'),
        (select max(id) from public.ingredient where name = 'smoked salmon'));
INSERT INTO public.ingredient (name)
VALUES ('avocado')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Smoked salmon and avocado Salad'),
        (select max(id) from public.ingredient where name = 'avocado'));
INSERT INTO public.ingredient (name)
VALUES ('cranberry')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Smoked salmon and avocado Salad'),
        (select max(id) from public.ingredient where name = 'cranberry'));
INSERT INTO public.ingredient (name)
VALUES ('mint')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Smoked salmon and avocado Salad'),
        (select max(id) from public.ingredient where name = 'mint'));
INSERT INTO public.ingredient (name)
VALUES ('dressing')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Smoked salmon and avocado Salad'),
        (select max(id) from public.ingredient where name = 'dressing'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Managers Salad', 'https://korpa.ba/product_uploads/qu3lfMIxHI2G3tzOcK8tRDBdaDTcgVTc.jpg', 310,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Managers Salad'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id)
         from public.food
         where name = 'Managers Salad'), (select max(id) from public.ingredient where name = 'Lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('iceberg lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Managers Salad'),
        (select max(id) from public.ingredient where name = 'iceberg lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('chicken')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id)
         from public.food
         where name = 'Managers Salad'), (select max(id) from public.ingredient where name = 'chicken'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Managers Salad'),
        (select max(id) from public.ingredient where name = 'mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id)
         from public.food
         where name = 'Managers Salad'), (select max(id) from public.ingredient where name = 'parmesan cheese'));
INSERT INTO public.ingredient (name)
VALUES ('dried tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Managers Salad'),
        (select max(id) from public.ingredient where name = 'dried tomato'));
INSERT INTO public.ingredient (name)
VALUES ('corn')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id)
         from public.food
         where name = 'Managers Salad'), (select max(id) from public.ingredient where name = 'corn'));
INSERT INTO public.ingredient (name)
VALUES ('cherry tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Managers Salad'),
        (select max(id) from public.ingredient where name = 'cherry tomato'));
INSERT INTO public.ingredient (name)
VALUES ('dressing')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id)
         from public.food
         where name = 'Managers Salad'), (select max(id) from public.ingredient where name = 'dressing'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Greek Salad', ' https://korpa.ba/product_uploads/Zj2mywSVOSB3lJGeocWuuMhbgzigMeCZ.jpg ', 250,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Greek Salad'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Greek Salad'),
        (select max(id) from public.ingredient where name = 'Tomato'));
INSERT INTO public.ingredient (name)
VALUES ('cucumber')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Greek Salad'),
        (select max(id) from public.ingredient where name = 'cucumber'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Greek Salad'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('olives')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Greek Salad'),
        (select max(id) from public.ingredient where name = 'olives'));
INSERT INTO public.ingredient (name)
VALUES ('white cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Greek Salad'),
        (select max(id) from public.ingredient where name = 'white cheese'));
INSERT INTO public.category (name, photo)
VALUES ('Appetizers', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Lebanese dips ', ' https://korpa.ba/product_uploads/rCAoihcULk6vwT7QTa5mTLfHKtfLyAOL.jpg ', 200,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Lebanese dips '),
        (select max(id) from public.category where name = 'Appetizers'));
INSERT INTO public.ingredient (name)
VALUES ('Hummus and beet hummus ( chickpeas')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Lebanese dips '),
        (select max(id) from public.ingredient where name = 'Hummus and beet hummus ( chickpeas'));
INSERT INTO public.ingredient (name)
VALUES ('tahini')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Lebanese dips '),
        (select max(id) from public.ingredient where name = 'tahini'));
INSERT INTO public.ingredient (name)
VALUES ('olive oil')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Lebanese dips '),
        (select max(id) from public.ingredient where name = 'olive oil'));
INSERT INTO public.ingredient (name)
VALUES ('lemon juice')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Lebanese dips '),
        (select max(id) from public.ingredient where name = 'lemon juice'));
INSERT INTO public.ingredient (name)
VALUES ('cumin')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Lebanese dips '),
        (select max(id) from public.ingredient where name = 'cumin'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Lebanese dips '),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.ingredient (name)
VALUES ('pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Lebanese dips '),
        (select max(id) from public.ingredient where name = 'pepper'));
INSERT INTO public.ingredient (name)
VALUES ('beet)')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Lebanese dips '),
        (select max(id) from public.ingredient where name = 'beet)'));
INSERT INTO public.ingredient (name)
VALUES ('buckwheat bread')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Lebanese dips '),
        (select max(id) from public.ingredient where name = 'buckwheat bread'));
INSERT INTO public.ingredient (name)
VALUES ('cucumber')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Lebanese dips '),
        (select max(id) from public.ingredient where name = 'cucumber'));
INSERT INTO public.ingredient (name)
VALUES ('carrot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Lebanese dips '),
        (select max(id) from public.ingredient where name = 'carrot'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Fried cheese curds with kantina sauce', 'None', 270,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Fried cheese curds with kantina sauce'),
        (select max(id) from public.category where name = 'Appetizers'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Spicy Meatballs ', ' https://korpa.ba/product_uploads/fgshrpnEUkdkLJxjwG41JfZTLUaZZAX4.jpg ', 300,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Spicy Meatballs '),
        (select max(id) from public.category where name = 'Appetizers'));
INSERT INTO public.ingredient (name)
VALUES ('Meatballs')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spicy Meatballs '),
        (select max(id) from public.ingredient where name = 'Meatballs'));
INSERT INTO public.ingredient (name)
VALUES ('tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spicy Meatballs '),
        (select max(id) from public.ingredient where name = 'tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('dill')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spicy Meatballs '),
        (select max(id) from public.ingredient where name = 'dill'));
INSERT INTO public.ingredient (name)
VALUES ('parsley')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spicy Meatballs '),
        (select max(id) from public.ingredient where name = 'parsley'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spicy Meatballs '),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('chilli')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spicy Meatballs '),
        (select max(id) from public.ingredient where name = 'chilli'));
INSERT INTO public.ingredient (name)
VALUES ('bread with garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spicy Meatballs '),
        (select max(id) from public.ingredient where name = 'bread with garlic'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spicy Meatballs '),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chicken fingers ', ' https://korpa.ba/product_uploads/xHMPxzos6P0RGj4fhioUpVBtnav2Qg1m.jpg ', 290,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chicken fingers '),
        (select max(id) from public.category where name = 'Appetizers'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chicken wings with BBQ sauce', ' https://korpa.ba/product_uploads/ToQ5Ltety8d23VYNklcPA7Au6Fo8A3fQ.jpg ', 290,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chicken wings with BBQ sauce'),
        (select max(id) from public.category where name = 'Appetizers'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Quesadilla ', ' https://korpa.ba/product_uploads/ouUG2gt1z5Zp6tB1DECJxLxs6p3xY4cy.jpg ', 330,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Quesadilla '),
        (select max(id) from public.category where name = 'Appetizers'));
INSERT INTO public.ingredient (name)
VALUES ('Tortilla')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quesadilla '),
        (select max(id) from public.ingredient where name = 'Tortilla'));
INSERT INTO public.ingredient (name)
VALUES ('edammer')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quesadilla '),
        (select max(id) from public.ingredient where name = 'edammer'));
INSERT INTO public.ingredient (name)
VALUES ('sour cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quesadilla '),
        (select max(id) from public.ingredient where name = 'sour cream'));
INSERT INTO public.ingredient (name)
VALUES ('chicken')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quesadilla '),
        (select max(id) from public.ingredient where name = 'chicken'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quesadilla '),
        (select max(id) from public.ingredient where name = 'mushrooms'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Burrito ', ' https://korpa.ba/product_uploads/hhh9ZHe15sGP08RbRIqCShskJGr3RQXz.jpg ', 310,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Burrito '),
        (select max(id) from public.category where name = 'Appetizers'));
INSERT INTO public.ingredient (name)
VALUES ('Tortilla')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burrito '),
        (select max(id) from public.ingredient where name = 'Tortilla'));
INSERT INTO public.ingredient (name)
VALUES ('edammer')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burrito '),
        (select max(id) from public.ingredient where name = 'edammer'));
INSERT INTO public.ingredient (name)
VALUES ('chicken')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burrito '),
        (select max(id) from public.ingredient where name = 'chicken'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burrito '),
        (select max(id) from public.ingredient where name = 'mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('rice')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burrito '),
        (select max(id) from public.ingredient where name = 'rice'));
INSERT INTO public.ingredient (name)
VALUES ('tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burrito '),
        (select max(id) from public.ingredient where name = 'tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('red beans')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burrito '),
        (select max(id) from public.ingredient where name = 'red beans'));
INSERT INTO public.ingredient (name)
VALUES ('chilly')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burrito '),
        (select max(id) from public.ingredient where name = 'chilly'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('French fries', 'None', 200, (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'French fries'),
        (select max(id) from public.category where name = 'Appetizers'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('French fries with cheese', 'None', 250, (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'French fries with cheese'),
        (select max(id) from public.category where name = 'Appetizers'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Homemade sausage', 'None', 290, (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Homemade sausage'),
        (select max(id) from public.category where name = 'Appetizers'));
INSERT INTO public.ingredient (name)
VALUES ('Homemade sausagewith leeks')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Homemade sausage'),
        (select max(id) from public.ingredient where name = 'Homemade sausagewith leeks'));
INSERT INTO public.ingredient (name)
VALUES ('mustard')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Homemade sausage'),
        (select max(id) from public.ingredient where name = 'mustard'));
INSERT INTO public.ingredient (name)
VALUES ('pickles')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Homemade sausage'),
        (select max(id) from public.ingredient where name = 'pickles'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Potatoes with cheese', 'None', 260,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Potatoes with cheese'),
        (select max(id) from public.category where name = 'Appetizers'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Baked potatoes', 'None', 230, (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Baked potatoes'),
        (select max(id) from public.category where name = 'Appetizers'));
INSERT INTO public.category (name, photo)
VALUES ('Breads', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Bread sticks', 'None', 100, (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Bread sticks'),
        (select max(id) from public.category where name = 'Breads'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Bread sticks with cheese', ' https://korpa.ba/product_uploads/7 H8mCtk658fZiHl6qmuLvn3dYgFmv5Qk.jpg ', 150,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Bread sticks with cheese'),
        (select max(id) from public.category where name = 'Breads'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Buns with curd', ' https://korpa.ba/product_uploads/aehrbtH3uTANKGQhILRekPpazfyXy7wm.jpg ', 230,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Buns with curd'),
        (select max(id) from public.category where name = 'Breads'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Buns with garlic and mozzarella', ' https://korpa.ba/product_uploads/08 Sl5PxyJJtrHxSskEuwlkAMEK3kDVcn.jpg ',
        210, (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Buns with garlic and mozzarella'),
        (select max(id) from public.category where name = 'Breads'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Bruschetti with tomato, pesto, basil and parmesan cheese',
        'https://korpa.ba/product_uploads/B9wsCjGsa6QYkW7Ov7fTOmCMoUGvvwhW.jpg', 150,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id)
         from public.food
         where name = 'Bruschetti with tomato, pesto, basil and parmesan cheese'), (select max(id) from public.category where name = 'Breads'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Bruschetti with blue cheese and raisins', 'None', 180,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Bruschetti with blue cheese and raisins'),
        (select max(id) from public.category where name = 'Breads'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Bruschetti with smoked salmon, dill and cream', 'None', 210,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id)
         from public.food
         where name = 'Bruschetti with smoked salmon, dill and cream'), (select max(id) from public.category where name = 'Breads'));
INSERT INTO public.category (name, photo)
VALUES ('Pasta', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Primavera', 'https://korpa.ba/product_uploads/Vr4rr4QyBUKMFvI0pCd3RFaRuxv1t1XC.jpg', 310,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Primavera'),
        (select max(id) from public.category where name = 'Pasta'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Primavera'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Primavera'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('basil')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Primavera'),
        (select max(id) from public.ingredient where name = 'basil'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Primavera'),
        (select max(id) from public.ingredient where name = 'parmesan cheese'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Primavera'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Quattro formaggi', 'None', 360, (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Quattro formaggi'),
        (select max(id) from public.category where name = 'Pasta'));
INSERT INTO public.ingredient (name)
VALUES ('Edammer')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quattro formaggi'),
        (select max(id) from public.ingredient where name = 'Edammer'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quattro formaggi'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('roquefort cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quattro formaggi'),
        (select max(id) from public.ingredient where name = 'roquefort cheese'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quattro formaggi'),
        (select max(id) from public.ingredient where name = 'parmesan cheese'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Arrabiata', 'https://korpa.ba/product_uploads/bkUDTv5iIQ03Mqcf4r2ryHKyRsZV691C.jpg', 300,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Arrabiata'),
        (select max(id) from public.category where name = 'Pasta'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Arrabiata'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('bell pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Arrabiata'),
        (select max(id) from public.ingredient where name = 'bell pepper'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Arrabiata'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('olives')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Arrabiata'),
        (select max(id) from public.ingredient where name = 'olives'));
INSERT INTO public.ingredient (name)
VALUES ('chilly')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Arrabiata'),
        (select max(id) from public.ingredient where name = 'chilly'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Arrabiata'),
        (select max(id) from public.ingredient where name = 'parmesan cheese'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Arrabiata'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Carbonara', 'https://korpa.ba/product_uploads/rbI5qXbEivsoWQJ0iHXpAC7oDg0Gb7n4.jpg', 350,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Carbonara'),
        (select max(id) from public.category where name = 'Pasta'));
INSERT INTO public.ingredient (name)
VALUES ('White sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Carbonara'),
        (select max(id) from public.ingredient where name = 'White sauce'));
INSERT INTO public.ingredient (name)
VALUES ('bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Carbonara'),
        (select max(id) from public.ingredient where name = 'bacon'));
INSERT INTO public.ingredient (name)
VALUES ('eggs')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Carbonara'),
        (select max(id) from public.ingredient where name = 'eggs'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Carbonara'),
        (select max(id) from public.ingredient where name = 'parmesan cheese'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Fungi', 'https://korpa.ba/product_uploads/gClYMzExKCkHZni0cnOREFxC1ywsLIDv.jpg', 340,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Fungi'),
        (select max(id) from public.category where name = 'Pasta'));
INSERT INTO public.ingredient (name)
VALUES ('White sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fungi'),
        (select max(id) from public.ingredient where name = 'White sauce'));
INSERT INTO public.ingredient (name)
VALUES ('boletus')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fungi'),
        (select max(id) from public.ingredient where name = 'boletus'));
INSERT INTO public.ingredient (name)
VALUES ('champignon mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fungi'),
        (select max(id) from public.ingredient where name = 'champignon mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fungi'),
        (select max(id) from public.ingredient where name = 'parmesan cheese'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fungi'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Broccoli', 'https://korpa.ba/product_uploads/XuoRMcJwhyBaWkkZmh8Bc21ZBJQSyBND.jpg', 340,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Broccoli'),
        (select max(id) from public.category where name = 'Pasta'));
INSERT INTO public.ingredient (name)
VALUES ('White sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Broccoli'),
        (select max(id) from public.ingredient where name = 'White sauce'));
INSERT INTO public.ingredient (name)
VALUES ('chicken')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Broccoli'),
        (select max(id) from public.ingredient where name = 'chicken'));
INSERT INTO public.ingredient (name)
VALUES ('broccoli')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Broccoli'),
        (select max(id) from public.ingredient where name = 'broccoli'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Broccoli'),
        (select max(id) from public.ingredient where name = 'parmesan cheese'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Broccoli'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.category (name, photo)
VALUES ('Risotto', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Kantina', 'https://korpa.ba/product_uploads/kQGyh5GZNIpdxilRHCFujmVN0sHqbS6J.jpg', 370,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Kantina'),
        (select max(id) from public.category where name = 'Risotto'));
INSERT INTO public.ingredient (name)
VALUES ('Rice')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Kantina'),
        (select max(id) from public.ingredient where name = 'Rice'));
INSERT INTO public.ingredient (name)
VALUES ('boletus')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Kantina'),
        (select max(id) from public.ingredient where name = 'boletus'));
INSERT INTO public.ingredient (name)
VALUES ('beef prosciutto')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Kantina'),
        (select max(id) from public.ingredient where name = 'beef prosciutto'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Kantina'),
        (select max(id) from public.ingredient where name = 'parmesan cheese'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Kantina'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Veggie', 'https://korpa.ba/product_uploads/naatp2fbP9g2zBSVc2oxYWJpreOn9bD5.jpg', 300,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Veggie'),
        (select max(id) from public.category where name = 'Risotto'));
INSERT INTO public.ingredient (name)
VALUES ('Rice')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Veggie'),
        (select max(id) from public.ingredient where name = 'Rice'));
INSERT INTO public.ingredient (name)
VALUES ('mix of vegetables')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Veggie'),
        (select max(id) from public.ingredient where name = 'mix of vegetables'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Veggie'),
        (select max(id) from public.ingredient where name = 'parmesan cheese'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Veggie'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chicken and mushrooms', 'https://korpa.ba/product_uploads/Kue69Z7ktWKPhNgEUO8mZkOYjLgIeTls.jpg', 330,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chicken and mushrooms'),
        (select max(id) from public.category where name = 'Risotto'));
INSERT INTO public.ingredient (name)
VALUES ('Rice')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken and mushrooms'),
        (select max(id) from public.ingredient where name = 'Rice'));
INSERT INTO public.ingredient (name)
VALUES ('chicken')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken and mushrooms'),
        (select max(id) from public.ingredient where name = 'chicken'));
INSERT INTO public.ingredient (name)
VALUES ('champignon mushroom')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken and mushrooms'),
        (select max(id) from public.ingredient where name = 'champignon mushroom'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken and mushrooms'),
        (select max(id) from public.ingredient where name = 'parmesan cheese'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken and mushrooms'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.category (name, photo)
VALUES ('Pizza', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Margherita', 'https://korpa.ba/product_uploads/c1FEQJA5bR5L4oB5bfJMWdYxRi9CMs93.jpg', 330,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Margherita'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Margherita'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('edammer')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Margherita'),
        (select max(id) from public.ingredient where name = 'edammer'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Fungi', 'https://korpa.ba/product_uploads/nXC0hCPpK6MiyGXG6Oq2u2LVPFqHUmsb.jpg', 350,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Fungi'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fungi'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('edammer')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fungi'),
        (select max(id) from public.ingredient where name = 'edammer'));
INSERT INTO public.ingredient (name)
VALUES ('champignon mushroom')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fungi'),
        (select max(id) from public.ingredient where name = 'champignon mushroom'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Pepperoni', 'https://korpa.ba/product_uploads/34xBE4F8xlzE33bP6eJ2bpNYsEqjjDVo.jpg', 400,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Pepperoni'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pepperoni'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('edammer')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pepperoni'),
        (select max(id) from public.ingredient where name = 'edammer'));
INSERT INTO public.ingredient (name)
VALUES ('kulen')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pepperoni'),
        (select max(id) from public.ingredient where name = 'kulen'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Capricciosa', 'https://korpa.ba/product_uploads/zbCN2bRMrOdfOcFa6E0EyRohB181Qq78.jpg', 400,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Capricciosa'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Capricciosa'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('edammer')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Capricciosa'),
        (select max(id) from public.ingredient where name = 'edammer'));
INSERT INTO public.ingredient (name)
VALUES ('champignon mushroom')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Capricciosa'),
        (select max(id) from public.ingredient where name = 'champignon mushroom'));
INSERT INTO public.ingredient (name)
VALUES ('ham')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Capricciosa'),
        (select max(id) from public.ingredient where name = 'ham'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Quattro formaggi', 'https://korpa.ba/product_uploads/8tfwJL7fS4oA20ojqqdKXOhbYpSdRSbp.jpg', 400,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Quattro formaggi'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quattro formaggi'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('edammer')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quattro formaggi'),
        (select max(id) from public.ingredient where name = 'edammer'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quattro formaggi'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('roquefort cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quattro formaggi'),
        (select max(id) from public.ingredient where name = 'roquefort cheese'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quattro formaggi'),
        (select max(id) from public.ingredient where name = 'parmesan cheese'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Prosciutto', 'None', 460, (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Prosciutto'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Prosciutto'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('edammer')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Prosciutto'),
        (select max(id) from public.ingredient where name = 'edammer'));
INSERT INTO public.ingredient (name)
VALUES ('prosciutto')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Prosciutto'),
        (select max(id) from public.ingredient where name = 'prosciutto'));
INSERT INTO public.ingredient (name)
VALUES ('rocket')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Prosciutto'),
        (select max(id) from public.ingredient where name = 'rocket'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Prosciutto'),
        (select max(id) from public.ingredient where name = 'parmesan cheese'));
INSERT INTO public.category (name, photo)
VALUES ('Desserts', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Raspberry Nutella Cake', 'https://korpa.ba/product_uploads/ORM4v5SOsXVRxEepkIqijbu2wzIfGuSQ.jpg', 250,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Raspberry Nutella Cake'),
        (select max(id) from public.category where name = 'Desserts'));
INSERT INTO public.ingredient (name)
VALUES ('Hazelnuts')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Raspberry Nutella Cake'),
        (select max(id) from public.ingredient where name = 'Hazelnuts'));
INSERT INTO public.ingredient (name)
VALUES ('sweet sour cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Raspberry Nutella Cake'),
        (select max(id) from public.ingredient where name = 'sweet sour cream'));
INSERT INTO public.ingredient (name)
VALUES ('eggs')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Raspberry Nutella Cake'),
        (select max(id) from public.ingredient where name = 'eggs'));
INSERT INTO public.ingredient (name)
VALUES ('nutella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Raspberry Nutella Cake'),
        (select max(id) from public.ingredient where name = 'nutella'));
INSERT INTO public.ingredient (name)
VALUES ('rasberry')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Raspberry Nutella Cake'),
        (select max(id) from public.ingredient where name = 'rasberry'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Carrot Cake', 'https://korpa.ba/product_uploads/5LGE6pXK8uV4IBV9OE9uRUrLZVCCe5NO.jpg', 250,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Carrot Cake'),
        (select max(id) from public.category where name = 'Desserts'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('New York Cheesecake with salted caramel',
        'https://korpa.ba/product_uploads/STjaq51xRlK9m0Yl1QiV9J1qlBtks2bg.jpg', 250,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'New York Cheesecake with salted caramel'),
        (select max(id) from public.category where name = 'Desserts'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Redberry Cheesecake', 'https://korpa.ba/product_uploads/3E1daTXSvTx9xeCar3vQsQrEpE2DTWRh.jpg', 250,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Redberry Cheesecake'),
        (select max(id) from public.category where name = 'Desserts'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Tiramisu', 'None', 260, (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Tiramisu'),
        (select max(id) from public.category where name = 'Desserts'));
INSERT INTO public.ingredient (name)
VALUES ('Mascarpone')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tiramisu'),
        (select max(id) from public.ingredient where name = 'Mascarpone'));
INSERT INTO public.ingredient (name)
VALUES ('eggs')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tiramisu'),
        (select max(id) from public.ingredient where name = 'eggs'));
INSERT INTO public.ingredient (name)
VALUES ('sugar')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tiramisu'),
        (select max(id) from public.ingredient where name = 'sugar'));
INSERT INTO public.ingredient (name)
VALUES ('liqueur')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tiramisu'),
        (select max(id) from public.ingredient where name = 'liqueur'));
INSERT INTO public.ingredient (name)
VALUES ('cookies')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tiramisu'),
        (select max(id) from public.ingredient where name = 'cookies'));
INSERT INTO public.ingredient (name)
VALUES ('cacao')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tiramisu'),
        (select max(id) from public.ingredient where name = 'cacao'));
INSERT INTO public.ingredient (name)
VALUES ('espresso')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tiramisu'),
        (select max(id) from public.ingredient where name = 'espresso'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Pistachio Cheesecake', 'https://korpa.ba/product_uploads/DUBBhICLsJBlEQ7eT9aVYzZUCtj8ATvx.jpg', 250,
        (select max(id) from public.restaurant where name = 'Kantina Skopje'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Pistachio Cheesecake'),
        (select max(id) from public.category where name = 'Desserts'));
INSERT INTO public.ingredient (name)
VALUES ('Biscuits')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pistachio Cheesecake'),
        (select max(id) from public.ingredient where name = 'Biscuits'));
INSERT INTO public.ingredient (name)
VALUES ('butter')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pistachio Cheesecake'),
        (select max(id) from public.ingredient where name = 'butter'));
INSERT INTO public.ingredient (name)
VALUES ('Mascarpone')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pistachio Cheesecake'),
        (select max(id) from public.ingredient where name = 'Mascarpone'));
INSERT INTO public.ingredient (name)
VALUES ('sour cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pistachio Cheesecake'),
        (select max(id) from public.ingredient where name = 'sour cream'));