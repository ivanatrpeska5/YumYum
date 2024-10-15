INSERT INTO public.location (number, street)
VALUES ('25,', 'Risto Shishkov');
INSERT INTO public.restaurant (average_rating, delivery_time, logo, name, photo, location_id)
VALUES (0, '30-40 min', 'assets/images/gluvo_kuche.png', 'Gluvo Kuche',
        'https://korpa.ba/restaurant_uploads/W98fJEUcIoP8JV3uT3m78lyFZXcS00eh.jpg',
        (select max(id) from public.location));
INSERT INTO public.users (email, name, password, phone, surname, username, role)
VALUES ('gluvo_kuche_employee@mail.com', 'Employee', '$2a$10$VAlO0DtwWX42GHzGGM0DHOIx2kLX1EAhLwaTrXwEsj5n5K9Lr7EQO',
        '071234567', 'Gluvo Kuche', 'gluvo_kuche_employee', 'employee');
INSERT INTO public.restaurant_employee (user_id, restaurant_id)
VALUES ((select max(user_id) from public.users), (select max(id) from public.restaurant));
INSERT INTO public.category (name, photo)
VALUES ('Salads', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Vitamin salad', 'https://korpa.ba/product_uploads/GeresCKRvXeC6ep74F59UzBxK9MctYCL.jpg', 190,
        (select max(id) from public.restaurant where name = 'Gluvo Kuche'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Vitamin salad'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('cabbage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vitamin salad'),
        (select max(id) from public.ingredient where name = 'cabbage'));
INSERT INTO public.ingredient (name)
VALUES ('beetroot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vitamin salad'),
        (select max(id) from public.ingredient where name = 'beetroot'));
INSERT INTO public.ingredient (name)
VALUES ('carrot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vitamin salad'),
        (select max(id) from public.ingredient where name = 'carrot'));
INSERT INTO public.ingredient (name)
VALUES ('arugula')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vitamin salad'),
        (select max(id) from public.ingredient where name = 'arugula'));
INSERT INTO public.ingredient (name)
VALUES ('cherry tomatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vitamin salad'),
        (select max(id) from public.ingredient where name = 'cherry tomatoes'));
INSERT INTO public.ingredient (name)
VALUES ('seeds')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vitamin salad'),
        (select max(id) from public.ingredient where name = 'seeds'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Rocket salad', 'https://korpa.ba/product_uploads/dWbZNM5z8SkwPdMPoJZXTl7XShHEkUyR.jpg', 250,
        (select max(id) from public.restaurant where name = 'Gluvo Kuche'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Rocket salad'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('cheddar')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Rocket salad'),
        (select max(id) from public.ingredient where name = 'cheddar'));
INSERT INTO public.ingredient (name)
VALUES ('arugula')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Rocket salad'),
        (select max(id) from public.ingredient where name = 'arugula'));
INSERT INTO public.ingredient (name)
VALUES ('goat cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Rocket salad'),
        (select max(id) from public.ingredient where name = 'goat cheese'));
INSERT INTO public.ingredient (name)
VALUES ('cherry tomatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Rocket salad'),
        (select max(id) from public.ingredient where name = 'cherry tomatoes'));
INSERT INTO public.ingredient (name)
VALUES ('seeds')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Rocket salad'),
        (select max(id) from public.ingredient where name = 'seeds'));
INSERT INTO public.ingredient (name)
VALUES ('balsamic cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Rocket salad'),
        (select max(id) from public.ingredient where name = 'balsamic cream'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Neron salad with chicken meat', 'https://korpa.ba/product_uploads/VjwGEalg1Z78yOhNi2gr4tjrg1kslQbf.jpg', 280,
        (select max(id) from public.restaurant where name = 'Gluvo Kuche'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Neron salad with chicken meat'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Neron salad with chicken meat'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('arugula')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Neron salad with chicken meat'),
        (select max(id) from public.ingredient where name = 'arugula'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Neron salad with chicken meat'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('chicken meat')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Neron salad with chicken meat'),
        (select max(id) from public.ingredient where name = 'chicken meat'));
INSERT INTO public.ingredient (name)
VALUES ('dressing')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Neron salad with chicken meat'),
        (select max(id) from public.ingredient where name = 'dressing'));
INSERT INTO public.ingredient (name)
VALUES ('nachos')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Neron salad with chicken meat'),
        (select max(id) from public.ingredient where name = 'nachos'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Caprese salad with prosciutto', 'https://korpa.ba/product_uploads/S5xstRsiDP4DFHQNmjpWdio3mXsrM2CX.jpg', 310,
        (select max(id) from public.restaurant where name = 'Gluvo Kuche'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Caprese salad with prosciutto'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caprese salad with prosciutto'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caprese salad with prosciutto'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('pork prosciutto')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caprese salad with prosciutto'),
        (select max(id) from public.ingredient where name = 'pork prosciutto'));
INSERT INTO public.ingredient (name)
VALUES ('basil')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caprese salad with prosciutto'),
        (select max(id) from public.ingredient where name = 'basil'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Tuna salad', 'https://korpa.ba/product_uploads/g8B97ZqQYBahgApv9dc1LTHWkbWJlqt2.jpg', 240,
        (select max(id) from public.restaurant where name = 'Gluvo Kuche'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Tuna salad'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Tuna in pieces')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tuna salad'),
        (select max(id) from public.ingredient where name = 'Tuna in pieces'));
INSERT INTO public.ingredient (name)
VALUES ('arugula')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tuna salad'),
        (select max(id) from public.ingredient where name = 'arugula'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tuna salad'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('corn')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tuna salad'),
        (select max(id) from public.ingredient where name = 'corn'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tuna salad'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tuna salad'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Mushrooms salad', 'https://korpa.ba/product_uploads/6j9D8HR95K5zDfrmxBJcdYqPzqRHAN1T.jpg', 250,
        (select max(id) from public.restaurant where name = 'Gluvo Kuche'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Mushrooms salad'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mushrooms salad'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('arugula')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mushrooms salad'),
        (select max(id) from public.ingredient where name = 'arugula'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mushrooms salad'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('red beans')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mushrooms salad'),
        (select max(id) from public.ingredient where name = 'red beans'));
INSERT INTO public.ingredient (name)
VALUES ('corn')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mushrooms salad'),
        (select max(id) from public.ingredient where name = 'corn'));
INSERT INTO public.ingredient (name)
VALUES ('nachos')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mushrooms salad'),
        (select max(id) from public.ingredient where name = 'nachos'));
INSERT INTO public.ingredient (name)
VALUES ('Mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mushrooms salad'),
        (select max(id) from public.ingredient where name = 'Mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('balsamic cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mushrooms salad'),
        (select max(id) from public.ingredient where name = 'balsamic cream'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Green salad', 'https://korpa.ba/product_uploads/wsYJpWUpkERdBwWbaWeVPV0Hhel93nA7.jpg', 200,
        (select max(id) from public.restaurant where name = 'Gluvo Kuche'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Green salad'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Green salad'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('arugula')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Green salad'),
        (select max(id) from public.ingredient where name = 'arugula'));
INSERT INTO public.ingredient (name)
VALUES ('corn')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Green salad'),
        (select max(id) from public.ingredient where name = 'corn'));
INSERT INTO public.ingredient (name)
VALUES ('beans')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Green salad'),
        (select max(id) from public.ingredient where name = 'beans'));
INSERT INTO public.ingredient (name)
VALUES ('balsamic cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Green salad'),
        (select max(id) from public.ingredient where name = 'balsamic cream'));
INSERT INTO public.category (name, photo)
VALUES ('Burrito', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Mexican burrito', 'None', 260, (select max(id) from public.restaurant where name = 'Gluvo Kuche'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Mexican burrito'),
        (select max(id) from public.category where name = 'Burrito'));
INSERT INTO public.ingredient (name)
VALUES ('Green salad')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mexican burrito'),
        (select max(id) from public.ingredient where name = 'Green salad'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mexican burrito'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('edam')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mexican burrito'),
        (select max(id) from public.ingredient where name = 'edam'));
INSERT INTO public.ingredient (name)
VALUES ('minced meat')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mexican burrito'),
        (select max(id) from public.ingredient where name = 'minced meat'));
INSERT INTO public.ingredient (name)
VALUES ('sausage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mexican burrito'),
        (select max(id) from public.ingredient where name = 'sausage'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mexican burrito'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('beans')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mexican burrito'),
        (select max(id) from public.ingredient where name = 'beans'));
INSERT INTO public.ingredient (name)
VALUES ('corn')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mexican burrito'),
        (select max(id) from public.ingredient where name = 'corn'));
INSERT INTO public.ingredient (name)
VALUES ('barbeque sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mexican burrito'),
        (select max(id) from public.ingredient where name = 'barbeque sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chicken Burrito', 'https://korpa.ba/product_uploads/sEEmWAe3oarSB7cm38O3NkChvSFa1hUm.jpg', 260,
        (select max(id) from public.restaurant where name = 'Gluvo Kuche'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chicken Burrito'),
        (select max(id) from public.category where name = 'Burrito'));
INSERT INTO public.ingredient (name)
VALUES ('chicken meat')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Burrito'),
        (select max(id) from public.ingredient where name = 'chicken meat'));
INSERT INTO public.ingredient (name)
VALUES ('Green salad')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Burrito'),
        (select max(id) from public.ingredient where name = 'Green salad'));
INSERT INTO public.ingredient (name)
VALUES ('edam')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Burrito'),
        (select max(id) from public.ingredient where name = 'edam'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Burrito'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Vegetarian Burrito', 'https://korpa.ba/product_uploads/psIKb8yEj9N2SNn1qzVnBe2oVB04TFK6.jpg', 250,
        (select max(id) from public.restaurant where name = 'Gluvo Kuche'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Vegetarian Burrito'),
        (select max(id) from public.category where name = 'Burrito'));
INSERT INTO public.ingredient (name)
VALUES ('hummus')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetarian Burrito'),
        (select max(id) from public.ingredient where name = 'hummus'));
INSERT INTO public.ingredient (name)
VALUES ('Green salad')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetarian Burrito'),
        (select max(id) from public.ingredient where name = 'Green salad'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetarian Burrito'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('corn')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetarian Burrito'),
        (select max(id) from public.ingredient where name = 'corn'));
INSERT INTO public.ingredient (name)
VALUES ('beans')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetarian Burrito'),
        (select max(id) from public.ingredient where name = 'beans'));
INSERT INTO public.ingredient (name)
VALUES ('Mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetarian Burrito'),
        (select max(id) from public.ingredient where name = 'Mushrooms'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Burrito with Vegetarian falafel', 'https://korpa.ba/product_uploads/r65HxtCuvklIniCd2BwAzRjf9nFCaS65.jpg', 260,
        (select max(id) from public.restaurant where name = 'Gluvo Kuche'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Burrito with Vegetarian falafel'),
        (select max(id) from public.category where name = 'Burrito'));
INSERT INTO public.ingredient (name)
VALUES ('Tortilla')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burrito with Vegetarian falafel'),
        (select max(id) from public.ingredient where name = 'Tortilla'));
INSERT INTO public.ingredient (name)
VALUES ('salads')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burrito with Vegetarian falafel'),
        (select max(id) from public.ingredient where name = 'salads'));
INSERT INTO public.ingredient (name)
VALUES ('sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burrito with Vegetarian falafel'),
        (select max(id) from public.ingredient where name = 'sauce'));
INSERT INTO public.ingredient (name)
VALUES ('falafel')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burrito with Vegetarian falafel'),
        (select max(id) from public.ingredient where name = 'falafel'));
INSERT INTO public.ingredient (name)
VALUES ('corn')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burrito with Vegetarian falafel'),
        (select max(id) from public.ingredient where name = 'corn'));
INSERT INTO public.ingredient (name)
VALUES ('beans')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burrito with Vegetarian falafel'),
        (select max(id) from public.ingredient where name = 'beans'));
INSERT INTO public.ingredient (name)
VALUES ('hummus')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burrito with Vegetarian falafel'),
        (select max(id) from public.ingredient where name = 'hummus'));
INSERT INTO public.category (name, photo)
VALUES ('Burgers', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Classic burger with potatoes', 'https://korpa.ba/product_uploads/mNIxnmJNH1YDjdcpDCAfm8ww8xq2P7Wn.jpg',
        330, (select max(id) from public.restaurant where name = 'Gluvo Kuche'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Classic burger with potatoes'),
        (select max(id) from public.category where name = 'Burgers'));
INSERT INTO public.ingredient (name)
VALUES ('Bread')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Classic burger with potatoes'),
        (select max(id) from public.ingredient where name = 'Bread'));
INSERT INTO public.ingredient (name)
VALUES ('burger sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Classic burger with potatoes'),
        (select max(id) from public.ingredient where name = 'burger sauce'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Classic burger with potatoes'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('onion on grill')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Classic burger with potatoes'),
        (select max(id) from public.ingredient where name = 'onion on grill'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Classic burger with potatoes'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Cheeseburger with potatoes', 'https://korpa.ba/product_uploads/RBCgp4QUS5dgChxdFloIhcCSYzLsA6pU.jpg', 350,
        (select max(id) from public.restaurant where name = 'Gluvo Kuche'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Cheeseburger with potatoes'),
        (select max(id) from public.category where name = 'Burgers'));
INSERT INTO public.ingredient (name)
VALUES ('Bread')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Cheeseburger with potatoes'),
        (select max(id) from public.ingredient where name = 'Bread'));
INSERT INTO public.ingredient (name)
VALUES ('burger sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Cheeseburger with potatoes'),
        (select max(id) from public.ingredient where name = 'burger sauce'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Cheeseburger with potatoes'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('caramelized onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Cheeseburger with potatoes'),
        (select max(id) from public.ingredient where name = 'caramelized onion'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Cheeseburger with potatoes'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('cheddar and edam')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Cheeseburger with potatoes'),
        (select max(id) from public.ingredient where name = 'cheddar and edam'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Burger with slowly cooked pork meat', 'https://korpa.ba/product_uploads/Wvhdq0LmAeKB0OGPPMg27rp4jXLcoL3s.jpg',
        360, (select max(id) from public.restaurant where name = 'Gluvo Kuche'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Burger with slowly cooked pork meat'),
        (select max(id) from public.category where name = 'Burgers'));
INSERT INTO public.ingredient (name)
VALUES ('Bread')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger with slowly cooked pork meat'),
        (select max(id) from public.ingredient where name = 'Bread'));
INSERT INTO public.ingredient (name)
VALUES ('pork meat')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger with slowly cooked pork meat'),
        (select max(id) from public.ingredient where name = 'pork meat'));
INSERT INTO public.ingredient (name)
VALUES ('salad')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger with slowly cooked pork meat'),
        (select max(id) from public.ingredient where name = 'salad'));
INSERT INTO public.ingredient (name)
VALUES ('sauces')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger with slowly cooked pork meat'),
        (select max(id) from public.ingredient where name = 'sauces'));
INSERT INTO public.ingredient (name)
VALUES ('potatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger with slowly cooked pork meat'),
        (select max(id) from public.ingredient where name = 'potatoes'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Vegetarian burger with potatoes', 'https://korpa.ba/product_uploads/DoTq5ju94VjBTUYSF5NPUlOA2xzyYDgG.jpg', 300,
        (select max(id) from public.restaurant where name = 'Gluvo Kuche'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Vegetarian burger with potatoes'),
        (select max(id) from public.category where name = 'Burgers'));
INSERT INTO public.ingredient (name)
VALUES ('falafel')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetarian burger with potatoes'),
        (select max(id) from public.ingredient where name = 'falafel'));
INSERT INTO public.ingredient (name)
VALUES ('Bread')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetarian burger with potatoes'),
        (select max(id) from public.ingredient where name = 'Bread'));
INSERT INTO public.ingredient (name)
VALUES ('hummus')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetarian burger with potatoes'),
        (select max(id) from public.ingredient where name = 'hummus'));
INSERT INTO public.ingredient (name)
VALUES ('onion on grill')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetarian burger with potatoes'),
        (select max(id) from public.ingredient where name = 'onion on grill'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetarian burger with potatoes'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('black beans')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetarian burger with potatoes'),
        (select max(id) from public.ingredient where name = 'black beans'));
INSERT INTO public.category (name, photo)
VALUES ('Appetizers with beer', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Bacon chips', 'https://korpa.ba/product_uploads/5lfmaIIE8jRBcPdthOEpLvUX7vujlQYg.jpg', 310,
        (select max(id) from public.restaurant where name = 'Gluvo Kuche'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Bacon chips'),
        (select max(id) from public.category where name = 'Appetizers with beer'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chicken wings with barbeque sauce', 'https://korpa.ba/product_uploads/W9tGgV06ZHMY8D42U2r90wbR3ngqfNw8.jpg', 260,
        (select max(id) from public.restaurant where name = 'Gluvo Kuche'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chicken wings with barbeque sauce'),
        (select max(id) from public.category where name = 'Appetizers with beer'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Home potatoes', 'https://korpa.ba/product_uploads/IBOVtu2mWqFksf2W2ow24S05ROj3T1OG.jpg', 230,
        (select max(id) from public.restaurant where name = 'Gluvo Kuche'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Home potatoes'),
        (select max(id) from public.category where name = 'Appetizers with beer'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Fried onion', 'https://korpa.ba/product_uploads/GBXSPVcSIfkSg0xokDMBGdCWIUlHrBCd.jpg', 280,
        (select max(id) from public.restaurant where name = 'Gluvo Kuche'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Fried onion'),
        (select max(id) from public.category where name = 'Appetizers with beer'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chicken tenders', 'https://korpa.ba/product_uploads/CNJUmP1LnqGocJ1hl83jQMKcsaDzWmSv.jpg', 310,
        (select max(id) from public.restaurant where name = 'Gluvo Kuche'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chicken tenders'),
        (select max(id) from public.category where name = 'Appetizers with beer'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Fried squid', 'https://korpa.ba/product_uploads/uDpeXvwgM5uo6kwCSSBcYfUX2YG0MGWF.jpg', 490,
        (select max(id) from public.restaurant where name = 'Gluvo Kuche'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Fried squid'),
        (select max(id) from public.category where name = 'Appetizers with beer'));
INSERT INTO public.ingredient (name)
VALUES ('Sweet-chilli sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fried squid'),
        (select max(id) from public.ingredient where name = 'Sweet-chilli sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Mushrooms with parmesan', 'https://korpa.ba/product_uploads/XimH5nKNxe3Tf7eIc6u7KSsOZ33VcXpX.jpg', 310,
        (select max(id) from public.restaurant where name = 'Gluvo Kuche'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Mushrooms with parmesan'),
        (select max(id) from public.category where name = 'Appetizers with beer'));
INSERT INTO public.ingredient (name)
VALUES ('Mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mushrooms with parmesan'),
        (select max(id) from public.ingredient where name = 'Mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mushrooms with parmesan'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Potatoes covered with cheddar and edam cheese', 'None', 290,
        (select max(id) from public.restaurant where name = 'Gluvo Kuche'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Potatoes covered with cheddar and edam cheese'),
        (select max(id) from public.category where name = 'Appetizers with beer'));
INSERT INTO public.ingredient (name)
VALUES ('Potatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Potatoes covered with cheddar and edam cheese'),
        (select max(id) from public.ingredient where name = 'Potatoes'));
INSERT INTO public.ingredient (name)
VALUES ('cheddar')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Potatoes covered with cheddar and edam cheese'),
        (select max(id) from public.ingredient where name = 'cheddar'));
INSERT INTO public.ingredient (name)
VALUES ('edam')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Potatoes covered with cheddar and edam cheese'),
        (select max(id) from public.ingredient where name = 'edam'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Falafel with hummus', 'https://korpa.ba/product_uploads/hk85kTfGR2nW6M2dFaUtFYVpHDIbXRY0.jpg', 230,
        (select max(id) from public.restaurant where name = 'Gluvo Kuche'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Falafel with hummus'),
        (select max(id) from public.category where name = 'Appetizers with beer'));
INSERT INTO public.category (name, photo)
VALUES ('Mixed meats', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Mixed meats with beer', 'https://korpa.ba/product_uploads/7nPe10O0z447ldFwYo7g4IhusCX6pxEL.jpg', 890,
        (select max(id) from public.restaurant where name = 'Gluvo Kuche'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Mixed meats with beer'),
        (select max(id) from public.category where name = 'Mixed meats'));
INSERT INTO public.ingredient (name)
VALUES ('Chicken wings')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mixed meats with beer'),
        (select max(id) from public.ingredient where name = 'Chicken wings'));
INSERT INTO public.ingredient (name)
VALUES ('fried onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mixed meats with beer'),
        (select max(id) from public.ingredient where name = 'fried onion'));
INSERT INTO public.ingredient (name)
VALUES ('Home sausage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mixed meats with beer'),
        (select max(id) from public.ingredient where name = 'Home sausage'));
INSERT INTO public.ingredient (name)
VALUES ('Chicken tenders')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mixed meats with beer'),
        (select max(id) from public.ingredient where name = 'Chicken tenders'));
INSERT INTO public.ingredient (name)
VALUES ('nachos')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mixed meats with beer'),
        (select max(id) from public.ingredient where name = 'nachos'));
INSERT INTO public.category (name, photo)
VALUES ('Meat on grill', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('BBQ Ribs', 'https://korpa.ba/product_uploads/8LzdphIiQ4K5hTS1LbvN7SpI4VdMxrhE.jpg', 450,
        (select max(id) from public.restaurant where name = 'Gluvo Kuche'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'BBQ Ribs'),
        (select max(id) from public.category where name = 'Meat on grill'));
INSERT INTO public.ingredient (name)
VALUES ('Ribs with BBQ sauce and potatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'BBQ Ribs'),
        (select max(id) from public.ingredient where name = 'Ribs with BBQ sauce and potatoes'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Pork chop', 'https://korpa.ba/product_uploads/lihMf1rLY0aQHhclCl8dj85rW7jxdOyz.jpg', 690,
        (select max(id) from public.restaurant where name = 'Gluvo Kuche'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Pork chop'),
        (select max(id) from public.category where name = 'Meat on grill'));
INSERT INTO public.ingredient (name)
VALUES ('Pork chop')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork chop'),
        (select max(id) from public.ingredient where name = 'Pork chop'));
INSERT INTO public.ingredient (name)
VALUES ('potatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork chop'),
        (select max(id) from public.ingredient where name = 'potatoes'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Kebab on grill', 'https://korpa.ba/product_uploads/snOnz9rh8jR5GzfjTUi7s4xZG0Rgcdma.jpg', 380,
        (select max(id) from public.restaurant where name = 'Gluvo Kuche'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Kebab on grill'),
        (select max(id) from public.category where name = 'Meat on grill'));
INSERT INTO public.ingredient (name)
VALUES ('Kebab on grill with potatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Kebab on grill'),
        (select max(id) from public.ingredient where name = 'Kebab on grill with potatoes'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Home sausage on grill', 'https://korpa.ba/product_uploads/wBfriMM2geR1iveWO5mrL3mPOMWl7pTF.jpg', 390,
        (select max(id) from public.restaurant where name = 'Gluvo Kuche'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Home sausage on grill'),
        (select max(id) from public.category where name = 'Meat on grill'));
INSERT INTO public.ingredient (name)
VALUES ('Home sausage on grill with potatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Home sausage on grill'),
        (select max(id) from public.ingredient where name = 'Home sausage on grill with potatoes'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Grilled Meat on a Stick', 'https://korpa.ba/product_uploads/d8lZfhEsbdrWEWMZTr21IKCiqJWaipEm.jpg', 390,
        (select max(id) from public.restaurant where name = 'Gluvo Kuche'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Grilled Meat on a Stick'),
        (select max(id) from public.category where name = 'Meat on grill'));
INSERT INTO public.ingredient (name)
VALUES ('chicken fillet')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Grilled Meat on a Stick'),
        (select max(id) from public.ingredient where name = 'chicken fillet'));
INSERT INTO public.ingredient (name)
VALUES ('bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Grilled Meat on a Stick'),
        (select max(id) from public.ingredient where name = 'bacon'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Pork chop and mushrooms', 'https://korpa.ba/product_uploads/4S2dvkBYlWgOcdUnqnaBYtaDS41pE9dr.jpg',
        400, (select max(id) from public.restaurant where name = 'Gluvo Kuche'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Pork chop and mushrooms'),
        (select max(id) from public.category where name = 'Meat on grill'));
INSERT INTO public.ingredient (name)
VALUES ('pork chop')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork chop and mushrooms'),
        (select max(id) from public.ingredient where name = 'pork chop'));
INSERT INTO public.ingredient (name)
VALUES ('Mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork chop and mushrooms'),
        (select max(id) from public.ingredient where name = 'Mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork chop and mushrooms'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('mustard')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork chop and mushrooms'),
        (select max(id) from public.ingredient where name = 'mustard'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Pork fillet', 'https://korpa.ba/product_uploads/W4qXp4GTplAatPQXLZ9TIzfoVcEb6Cne.jpg', 690,
        (select max(id) from public.restaurant where name = 'Gluvo Kuche'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Pork fillet'),
        (select max(id) from public.category where name = 'Meat on grill'));
INSERT INTO public.ingredient (name)
VALUES ('potatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork fillet'),
        (select max(id) from public.ingredient where name = 'potatoes'));