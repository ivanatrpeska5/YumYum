INSERT INTO public.location (number, street)
VALUES ('83,', 'Orce Nikolov');
INSERT INTO public.restaurant (average_rating, delivery_time, logo, name, photo, location_id)
VALUES (0, '20-30 min', 'assets/images/teenytajni.png', 'TeenyTajni',
        'https://korpa.ba/restaurant_uploads/NwTEsxZfAuTkcwNTJxbEgpvWXR1qdtVg.jpg',
        (select max(id) from public.location));
INSERT INTO public.users (email, name, password, phone, surname, username, role)
VALUES ('teenytajni_employee@mail.com', 'Employee', '$2a$10$VAlO0DtwWX42GHzGGM0DHOIx2kLX1EAhLwaTrXwEsj5n5K9Lr7EQO',
        '071234567', 'TeenyTajni', 'teenytajni_employee', 'employee');
INSERT INTO public.restaurant_employee (user_id, restaurant_id)
VALUES ((select max(user_id) from public.users), (select max(id) from public.restaurant));
INSERT INTO public.category (name, photo)
VALUES ('Healthy', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Banana Bread', 'https://korpa.ba/product_uploads/JRnQpfIUrX6dFxz86X4PzGqLXsyrumbs.jpg', 150,
        (select max(id) from public.restaurant where name = 'TeenyTajni'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Banana Bread'),
        (select max(id) from public.category where name = 'Healthy'));
INSERT INTO public.ingredient (name)
VALUES ('Banana cake with cashew cream and seasonal fruit')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Banana Bread'),
        (select max(id) from public.ingredient where name = 'Banana cake with cashew cream and seasonal fruit'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Cookie', 'https://korpa.ba/product_uploads/KNCPErGioK5PpRShwi1Z7iEeB09waapP.jpg', 90,
        (select max(id) from public.restaurant where name = 'TeenyTajni'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Cookie'),
        (select max(id) from public.category where name = 'Healthy'));
INSERT INTO public.ingredient (name)
VALUES ('Like from a milk commercial')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Cookie'),
        (select max(id) from public.ingredient where name = 'Like from a milk commercial'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Whole Grain Granola', 'https://korpa.ba/product_uploads/HQ3LVH4WLND0SZ4pI8bflmbtajX5qkwo.jpg', 190,
        (select max(id) from public.restaurant where name = 'TeenyTajni'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Whole Grain Granola'),
        (select max(id) from public.category where name = 'Healthy'));
INSERT INTO public.ingredient (name)
VALUES ('Greek yogurt')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Whole Grain Granola'),
        (select max(id) from public.ingredient where name = 'Greek yogurt'));
INSERT INTO public.ingredient (name)
VALUES ('almonds')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Whole Grain Granola'),
        (select max(id) from public.ingredient where name = 'almonds'));
INSERT INTO public.ingredient (name)
VALUES ('coconut')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Whole Grain Granola'),
        (select max(id) from public.ingredient where name = 'coconut'));
INSERT INTO public.ingredient (name)
VALUES ('chocolate + seasonal fruit')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Whole Grain Granola'),
        (select max(id) from public.ingredient where name = 'chocolate + seasonal fruit'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Avocado toast', 'https://korpa.ba/product_uploads/xmaQiverLLL0yKl5PT0440EgfwhW01ei.jpg', 280,
        (select max(id) from public.restaurant where name = 'TeenyTajni'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Avocado toast'),
        (select max(id) from public.category where name = 'Healthy'));
INSERT INTO public.ingredient (name)
VALUES ('Homemade bun')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Avocado toast'),
        (select max(id) from public.ingredient where name = 'Homemade bun'));
INSERT INTO public.ingredient (name)
VALUES ('beetroot hummus')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Avocado toast'),
        (select max(id) from public.ingredient where name = 'beetroot hummus'));
INSERT INTO public.ingredient (name)
VALUES ('avocado')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Avocado toast'),
        (select max(id) from public.ingredient where name = 'avocado'));
INSERT INTO public.ingredient (name)
VALUES ('poached egg')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Avocado toast'),
        (select max(id) from public.ingredient where name = 'poached egg'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Buddha Bowl', 'https://korpa.ba/product_uploads/xRiSjMzwskaqu9vh4UwfJDhHiNj6H14x.jpg', 280,
        (select max(id) from public.restaurant where name = 'TeenyTajni'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Buddha Bowl'),
        (select max(id) from public.category where name = 'Healthy'));
INSERT INTO public.ingredient (name)
VALUES ('Quinoa')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Buddha Bowl'),
        (select max(id) from public.ingredient where name = 'Quinoa'));
INSERT INTO public.ingredient (name)
VALUES ('chickpeas')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Buddha Bowl'),
        (select max(id) from public.ingredient where name = 'chickpeas'));
INSERT INTO public.ingredient (name)
VALUES ('broccoli')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Buddha Bowl'),
        (select max(id) from public.ingredient where name = 'broccoli'));
INSERT INTO public.ingredient (name)
VALUES ('carrots')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Buddha Bowl'),
        (select max(id) from public.ingredient where name = 'carrots'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Buddha Bowl'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('radishes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Buddha Bowl'),
        (select max(id) from public.ingredient where name = 'radishes'));
INSERT INTO public.ingredient (name)
VALUES ('beetroot hummus')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Buddha Bowl'),
        (select max(id) from public.ingredient where name = 'beetroot hummus'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Pomodoro Abbrustolito', 'https://korpa.ba/product_uploads/MTbgaq65VjHPv1fMUKOgS7b8DFdqI6d4.jpg', 280,
        (select max(id) from public.restaurant where name = 'TeenyTajni'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Pomodoro Abbrustolito'),
        (select max(id) from public.category where name = 'Healthy'));
INSERT INTO public.ingredient (name)
VALUES ('Homemade bread')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pomodoro Abbrustolito'),
        (select max(id) from public.ingredient where name = 'Homemade bread'));
INSERT INTO public.ingredient (name)
VALUES ('homemade feta cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pomodoro Abbrustolito'),
        (select max(id) from public.ingredient where name = 'homemade feta cream'));
INSERT INTO public.ingredient (name)
VALUES ('caramelized cherry tomatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pomodoro Abbrustolito'),
        (select max(id) from public.ingredient where name = 'caramelized cherry tomatoes'));
INSERT INTO public.ingredient (name)
VALUES ('fresh basil')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pomodoro Abbrustolito'),
        (select max(id) from public.ingredient where name = 'fresh basil'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Beat for Beat Salad', 'https://korpa.ba/product_uploads/q5nnRJAkvFIBFSNVb147EamS9AatTstF.jpg', 300,
        (select max(id) from public.restaurant where name = 'TeenyTajni'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Beat for Beat Salad'),
        (select max(id) from public.category where name = 'Healthy'));
INSERT INTO public.ingredient (name)
VALUES ('Baby arugula and spinach')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Beat for Beat Salad'),
        (select max(id) from public.ingredient where name = 'Baby arugula and spinach'));
INSERT INTO public.ingredient (name)
VALUES ('beetroot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Beat for Beat Salad'),
        (select max(id) from public.ingredient where name = 'beetroot'));
INSERT INTO public.ingredient (name)
VALUES ('pear')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Beat for Beat Salad'),
        (select max(id) from public.ingredient where name = 'pear'));
INSERT INTO public.ingredient (name)
VALUES ('gorgonzola')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Beat for Beat Salad'),
        (select max(id) from public.ingredient where name = 'gorgonzola'));
INSERT INTO public.ingredient (name)
VALUES ('crushed walnuts')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Beat for Beat Salad'),
        (select max(id) from public.ingredient where name = 'crushed walnuts'));
INSERT INTO public.ingredient (name)
VALUES ('mustard and honey dressing')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Beat for Beat Salad'),
        (select max(id) from public.ingredient where name = 'mustard and honey dressing'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Avocado Smash', 'https://korpa.ba/product_uploads/uqsc3qMd6rxTLxO4vcuTizKP5qmvIv3b.jpg', 280,
        (select max(id) from public.restaurant where name = 'TeenyTajni'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Avocado Smash'),
        (select max(id) from public.category where name = 'Healthy'));
INSERT INTO public.ingredient (name)
VALUES ('avocado puree')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Avocado Smash'),
        (select max(id) from public.ingredient where name = 'avocado puree'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Avocado Smash'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('poached egg')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Avocado Smash'),
        (select max(id) from public.ingredient where name = 'poached egg'));
INSERT INTO public.ingredient (name)
VALUES ('red pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Avocado Smash'),
        (select max(id) from public.ingredient where name = 'red pepper'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Pear Pressure', 'https://korpa.ba/product_uploads/XXNictgp4JoOF8USl84FLq2rm49cnCAD.jpg', 280,
        (select max(id) from public.restaurant where name = 'TeenyTajni'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Pear Pressure'),
        (select max(id) from public.category where name = 'Healthy'));
INSERT INTO public.ingredient (name)
VALUES ('homemade feta cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pear Pressure'),
        (select max(id) from public.ingredient where name = 'homemade feta cream'));
INSERT INTO public.ingredient (name)
VALUES ('prosciutto')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pear Pressure'),
        (select max(id) from public.ingredient where name = 'prosciutto'));
INSERT INTO public.ingredient (name)
VALUES ('arugula')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pear Pressure'),
        (select max(id) from public.ingredient where name = 'arugula'));
INSERT INTO public.ingredient (name)
VALUES ('pear')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pear Pressure'),
        (select max(id) from public.ingredient where name = 'pear'));
INSERT INTO public.ingredient (name)
VALUES ('honey & mustard sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pear Pressure'),
        (select max(id) from public.ingredient where name = 'honey & mustard sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Le French Connection', 'https://korpa.ba/product_uploads/E14JgR7prPlbX8XkweiJdN8sj800SSZ4.jpg', 260,
        (select max(id) from public.restaurant where name = 'TeenyTajni'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Le French Connection'),
        (select max(id) from public.category where name = 'Healthy'));
INSERT INTO public.ingredient (name)
VALUES ('Fluffy scrambled eggs')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Le French Connection'),
        (select max(id) from public.ingredient where name = 'Fluffy scrambled eggs'));
INSERT INTO public.ingredient (name)
VALUES ('french croissant')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Le French Connection'),
        (select max(id) from public.ingredient where name = 'french croissant'));
INSERT INTO public.ingredient (name)
VALUES ('homemade feta cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Le French Connection'),
        (select max(id) from public.ingredient where name = 'homemade feta cream'));
INSERT INTO public.ingredient (name)
VALUES ('arugula')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Le French Connection'),
        (select max(id) from public.ingredient where name = 'arugula'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Potage', 'None', 250, (select max(id) from public.restaurant where name = 'TeenyTajni'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Potage'),
        (select max(id) from public.category where name = 'Healthy'));
INSERT INTO public.ingredient (name)
VALUES ('Carrot soup')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Potage'),
        (select max(id) from public.ingredient where name = 'Carrot soup'));
INSERT INTO public.ingredient (name)
VALUES ('fresh ginger')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Potage'),
        (select max(id) from public.ingredient where name = 'fresh ginger'));
INSERT INTO public.ingredient (name)
VALUES ('coconut cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Potage'),
        (select max(id) from public.ingredient where name = 'coconut cream'));
INSERT INTO public.ingredient (name)
VALUES ('pomegranate')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Potage'),
        (select max(id) from public.ingredient where name = 'pomegranate'));
INSERT INTO public.ingredient (name)
VALUES ('cashew nut')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Potage'),
        (select max(id) from public.ingredient where name = 'cashew nut'));