INSERT INTO public.location (number, street)
VALUES ('2-4,', 'Nikola Vapcarov');
INSERT INTO public.restaurant (average_rating, delivery_time, logo, name, photo, location_id)
VALUES (0, '25-35 min', 'assets/images/trend_centar.png', 'Trend Centar',
        'https://korpa.ba/restaurant_uploads/sgp8AWziosRNms9a8M252wqUhTjpY2ZX.jpg',
        (select max(id) from public.location));
INSERT INTO public.users (email, name, password, phone, surname, username, role)
VALUES ('trend_centar_employee@mail.com', 'Employee', '$2a$10$VAlO0DtwWX42GHzGGM0DHOIx2kLX1EAhLwaTrXwEsj5n5K9Lr7EQO',
        '071234567', 'Trend Centar', 'trend_centar_employee', 'employee');
INSERT INTO public.restaurant_employee (user_id, restaurant_id)
VALUES ((select max(user_id) from public.users), (select max(id) from public.restaurant));
insert into public.category (name, photo)
VALUES ('Salads', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Caesar Salad', 'https://korpa.ba/product_uploads/K9eRx3wcPz8MPQhq8yGw7rF8PbD25mbG.jpg', 390,
        (select max(id) from public.restaurant where name = 'Trend Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Caesar Salad'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Iceberg lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar Salad'),
        (select max(id) from public.ingredient where name = 'Iceberg lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('cherry tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar Salad'),
        (select max(id) from public.ingredient where name = 'cherry tomato'));
INSERT INTO public.ingredient (name)
VALUES ('egg')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar Salad'),
        (select max(id) from public.ingredient where name = 'egg'));
INSERT INTO public.ingredient (name)
VALUES ('croutons')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar Salad'),
        (select max(id) from public.ingredient where name = 'croutons'));
INSERT INTO public.ingredient (name)
VALUES ('Parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar Salad'),
        (select max(id) from public.ingredient where name = 'Parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('chicken steak')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar Salad'),
        (select max(id) from public.ingredient where name = 'chicken steak'));
INSERT INTO public.ingredient (name)
VALUES ('cream balsamic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar Salad'),
        (select max(id) from public.ingredient where name = 'cream balsamic'));
INSERT INTO public.ingredient (name)
VALUES ('Caesar dressing')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar Salad'),
        (select max(id) from public.ingredient where name = 'Caesar dressing'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Tuna Salad', 'https://korpa.ba/product_uploads/uOqpma8Y0QujfdIRu6ubj5GBrOMg0cBZ.jpg', 390,
        (select max(id) from public.restaurant where name = 'Trend Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Tuna Salad'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Mixed salad')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tuna Salad'),
        (select max(id) from public.ingredient where name = 'Mixed salad'));
INSERT INTO public.ingredient (name)
VALUES ('egg')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tuna Salad'),
        (select max(id) from public.ingredient where name = 'egg'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tuna Salad'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('tuna')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tuna Salad'),
        (select max(id) from public.ingredient where name = 'tuna'));
INSERT INTO public.ingredient (name)
VALUES ('olives')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tuna Salad'),
        (select max(id) from public.ingredient where name = 'olives'));
INSERT INTO public.ingredient (name)
VALUES ('corn')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tuna Salad'),
        (select max(id) from public.ingredient where name = 'corn'));
INSERT INTO public.ingredient (name)
VALUES ('sun-dried tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tuna Salad'),
        (select max(id) from public.ingredient where name = 'sun-dried tomato'));
INSERT INTO public.ingredient (name)
VALUES ('red beans')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tuna Salad'),
        (select max(id) from public.ingredient where name = 'red beans'));
INSERT INTO public.ingredient (name)
VALUES ('lemon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tuna Salad'),
        (select max(id) from public.ingredient where name = 'lemon'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Arugula Salad', 'https://korpa.ba/product_uploads/lBmQGrvRg4H12REMYxPpUPkjuiucBTGp.jpg', 360,
        (select max(id) from public.restaurant where name = 'Trend Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Arugula Salad'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Arugula')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Arugula Salad'),
        (select max(id) from public.ingredient where name = 'Arugula'));
INSERT INTO public.ingredient (name)
VALUES ('croutons')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Arugula Salad'),
        (select max(id) from public.ingredient where name = 'croutons'));
INSERT INTO public.ingredient (name)
VALUES ('Parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Arugula Salad'),
        (select max(id) from public.ingredient where name = 'Parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Arugula Salad'),
        (select max(id) from public.ingredient where name = 'mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('raisins')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Arugula Salad'),
        (select max(id) from public.ingredient where name = 'raisins'));
INSERT INTO public.ingredient (name)
VALUES ('sunflower seeds')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Arugula Salad'),
        (select max(id) from public.ingredient where name = 'sunflower seeds'));
INSERT INTO public.ingredient (name)
VALUES ('balsamic cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Arugula Salad'),
        (select max(id) from public.ingredient where name = 'balsamic cream'));
INSERT INTO public.ingredient (name)
VALUES ('dressing')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Arugula Salad'),
        (select max(id) from public.ingredient where name = 'dressing'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Trend Grilled Chicken Salad', 'https://korpa.ba/product_uploads/Jy9xf1arqvHJ9BWN1D40rgzEuSFAUt4Z.jpg', 390,
        (select max(id) from public.restaurant where name = 'Trend Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Trend Grilled Chicken Salad'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Mixed salad')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Trend Grilled Chicken Salad'),
        (select max(id) from public.ingredient where name = 'Mixed salad'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Trend Grilled Chicken Salad'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('chicken steak')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Trend Grilled Chicken Salad'),
        (select max(id) from public.ingredient where name = 'chicken steak'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Trend Grilled Chicken Salad'),
        (select max(id) from public.ingredient where name = 'mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('cucumber')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Trend Grilled Chicken Salad'),
        (select max(id) from public.ingredient where name = 'cucumber'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Trend Grilled Chicken Salad'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('olives')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Trend Grilled Chicken Salad'),
        (select max(id) from public.ingredient where name = 'olives'));
INSERT INTO public.ingredient (name)
VALUES ('basil pesto')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Trend Grilled Chicken Salad'),
        (select max(id) from public.ingredient where name = 'basil pesto'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Salmon Salad', 'https://korpa.ba/product_uploads/OvVJ3qbozjbbxuXZSQAGQ2sbGXLY2ToF.jpg', 610,
        (select max(id) from public.restaurant where name = 'Trend Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Salmon Salad'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Mixed salad')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Salmon Salad'),
        (select max(id) from public.ingredient where name = 'Mixed salad'));
INSERT INTO public.ingredient (name)
VALUES ('smoked salmon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Salmon Salad'),
        (select max(id) from public.ingredient where name = 'smoked salmon'));
INSERT INTO public.ingredient (name)
VALUES ('egg')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Salmon Salad'),
        (select max(id) from public.ingredient where name = 'egg'));
INSERT INTO public.ingredient (name)
VALUES ('capers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Salmon Salad'),
        (select max(id) from public.ingredient where name = 'capers'));
INSERT INTO public.ingredient (name)
VALUES ('lemon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Salmon Salad'),
        (select max(id) from public.ingredient where name = 'lemon'));
INSERT INTO public.ingredient (name)
VALUES ('avocado')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Salmon Salad'),
        (select max(id) from public.ingredient where name = 'avocado'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Date Salad', 'https://korpa.ba/product_uploads/DlOUm6hJ9nDpqHlQmyat2FwcnN3JyxFZ.jpg', 450,
        (select max(id) from public.restaurant where name = 'Trend Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Date Salad'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Mixed salad')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Date Salad'),
        (select max(id) from public.ingredient where name = 'Mixed salad'));
INSERT INTO public.ingredient (name)
VALUES ('almonds')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Date Salad'),
        (select max(id) from public.ingredient where name = 'almonds'));
INSERT INTO public.ingredient (name)
VALUES ('Parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Date Salad'),
        (select max(id) from public.ingredient where name = 'Parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('dates')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Date Salad'),
        (select max(id) from public.ingredient where name = 'dates'));
INSERT INTO public.ingredient (name)
VALUES ('pancetta')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Date Salad'),
        (select max(id) from public.ingredient where name = 'pancetta'));
insert into public.category (name, photo)
VALUES ('Burgers', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Bacon Burger', 'https://korpa.ba/product_uploads/MICJ4TiKlcMfEM8OCAAI5Yddf6FlVI0x.jpg', 390,
        (select max(id) from public.restaurant where name = 'Trend Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Bacon Burger'),
        (select max(id) from public.category where name = 'Burgers'));
INSERT INTO public.ingredient (name)
VALUES ('Bun')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bacon Burger'),
        (select max(id) from public.ingredient where name = 'Bun'));
INSERT INTO public.ingredient (name)
VALUES ('patty')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bacon Burger'),
        (select max(id) from public.ingredient where name = 'patty'));
INSERT INTO public.ingredient (name)
VALUES ('cheddar')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bacon Burger'),
        (select max(id) from public.ingredient where name = 'cheddar'));
INSERT INTO public.ingredient (name)
VALUES ('bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bacon Burger'),
        (select max(id) from public.ingredient where name = 'bacon'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bacon Burger'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('pickles')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bacon Burger'),
        (select max(id) from public.ingredient where name = 'pickles'));
INSERT INTO public.ingredient (name)
VALUES ('onion jam')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bacon Burger'),
        (select max(id) from public.ingredient where name = 'onion jam'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bacon Burger'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('fries')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bacon Burger'),
        (select max(id) from public.ingredient where name = 'fries'));
INSERT INTO public.ingredient (name)
VALUES ('ketchup')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bacon Burger'),
        (select max(id) from public.ingredient where name = 'ketchup'));
INSERT INTO public.ingredient (name)
VALUES ('mayonnaise')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bacon Burger'),
        (select max(id) from public.ingredient where name = 'mayonnaise'));
INSERT INTO public.ingredient (name)
VALUES ('burger sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bacon Burger'),
        (select max(id) from public.ingredient where name = 'burger sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Ultimate Burger', 'https://korpa.ba/product_uploads/IejF3GIvEtPgW0tvefuKTPem40lmzvgZ.jpg', 380,
        (select max(id) from public.restaurant where name = 'Trend Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Ultimate Burger'),
        (select max(id) from public.category where name = 'Burgers'));
INSERT INTO public.ingredient (name)
VALUES ('Bun')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Ultimate Burger'),
        (select max(id) from public.ingredient where name = 'Bun'));
INSERT INTO public.ingredient (name)
VALUES ('patty')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Ultimate Burger'),
        (select max(id) from public.ingredient where name = 'patty'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Ultimate Burger'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('pickles')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Ultimate Burger'),
        (select max(id) from public.ingredient where name = 'pickles'));
INSERT INTO public.ingredient (name)
VALUES ('ajdamer cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Ultimate Burger'),
        (select max(id) from public.ingredient where name = 'ajdamer cheese'));
INSERT INTO public.ingredient (name)
VALUES ('crispy onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Ultimate Burger'),
        (select max(id) from public.ingredient where name = 'crispy onion'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Ultimate Burger'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('fries')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Ultimate Burger'),
        (select max(id) from public.ingredient where name = 'fries'));
INSERT INTO public.ingredient (name)
VALUES ('ketchup')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Ultimate Burger'),
        (select max(id) from public.ingredient where name = 'ketchup'));
INSERT INTO public.ingredient (name)
VALUES ('mayonnaise')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Ultimate Burger'),
        (select max(id) from public.ingredient where name = 'mayonnaise'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chicken Crispy Burger', 'https://korpa.ba/product_uploads/IoVZ9O8MXC2Iam72hQN90uZdpn7gvlyI.jpg', 360,
        (select max(id) from public.restaurant where name = 'Trend Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chicken Crispy Burger'),
        (select max(id) from public.category where name = 'Burgers'));
INSERT INTO public.ingredient (name)
VALUES ('Chicken steak')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Crispy Burger'),
        (select max(id) from public.ingredient where name = 'Chicken steak'));
INSERT INTO public.ingredient (name)
VALUES ('cornflakes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Crispy Burger'),
        (select max(id) from public.ingredient where name = 'cornflakes'));
INSERT INTO public.ingredient (name)
VALUES ('bun')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Crispy Burger'),
        (select max(id) from public.ingredient where name = 'bun'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Crispy Burger'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Crispy Burger'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('cucumber')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Crispy Burger'),
        (select max(id) from public.ingredient where name = 'cucumber'));
INSERT INTO public.ingredient (name)
VALUES ('crispy onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Crispy Burger'),
        (select max(id) from public.ingredient where name = 'crispy onion'));
INSERT INTO public.ingredient (name)
VALUES ('fries')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Crispy Burger'),
        (select max(id) from public.ingredient where name = 'fries'));
INSERT INTO public.ingredient (name)
VALUES ('ketchup')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Crispy Burger'),
        (select max(id) from public.ingredient where name = 'ketchup'));
INSERT INTO public.ingredient (name)
VALUES ('mayonnaise')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Crispy Burger'),
        (select max(id) from public.ingredient where name = 'mayonnaise'));
INSERT INTO public.ingredient (name)
VALUES ('burger sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Crispy Burger'),
        (select max(id) from public.ingredient where name = 'burger sauce'));
INSERT INTO public.ingredient (name)
VALUES ('tartar sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Crispy Burger'),
        (select max(id) from public.ingredient where name = 'tartar sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Fish Burger', 'https://korpa.ba/product_uploads/68Tub9QlpfxpXP2txqD7BYOz87rTcqXq.jpg', 360,
        (select max(id) from public.restaurant where name = 'Trend Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Fish Burger'),
        (select max(id) from public.category where name = 'Burgers'));
INSERT INTO public.ingredient (name)
VALUES ('Bun')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fish Burger'),
        (select max(id) from public.ingredient where name = 'Bun'));
INSERT INTO public.ingredient (name)
VALUES ('fish patty')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fish Burger'),
        (select max(id) from public.ingredient where name = 'fish patty'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fish Burger'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('fries')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fish Burger'),
        (select max(id) from public.ingredient where name = 'fries'));
INSERT INTO public.ingredient (name)
VALUES ('tartar sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fish Burger'),
        (select max(id) from public.ingredient where name = 'tartar sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Trend Mini Burgers', 'https://korpa.ba/product_uploads/qr1rcbpEF7vIPBhyVLib4KnB5PZakR7I.jpg', 330,
        (select max(id) from public.restaurant where name = 'Trend Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Trend Mini Burgers'),
        (select max(id) from public.category where name = 'Burgers'));
INSERT INTO public.ingredient (name)
VALUES ('3 mini buns with patties')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Trend Mini Burgers'),
        (select max(id) from public.ingredient where name = '3 mini buns with patties'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Trend Mini Burgers'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Trend Mini Burgers'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('mayonnaise')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Trend Mini Burgers'),
        (select max(id) from public.ingredient where name = 'mayonnaise'));
INSERT INTO public.ingredient (name)
VALUES ('ketchup')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Trend Mini Burgers'),
        (select max(id) from public.ingredient where name = 'ketchup'));
INSERT INTO public.ingredient (name)
VALUES ('fries')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Trend Mini Burgers'),
        (select max(id) from public.ingredient where name = 'fries'));
insert into public.category (name, photo)
VALUES ('Pasta', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Penne Arrabbiata', 'https://korpa.ba/product_uploads/Wxw8lOV36bZCLj1f5yrSDShaTYHNxAQI.jpg', 370,
        (select max(id) from public.restaurant where name = 'Trend Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Penne Arrabbiata'),
        (select max(id) from public.category where name = 'Pasta'));
INSERT INTO public.ingredient (name)
VALUES ('Penne')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Penne Arrabbiata'),
        (select max(id) from public.ingredient where name = 'Penne'));
INSERT INTO public.ingredient (name)
VALUES ('tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Penne Arrabbiata'),
        (select max(id) from public.ingredient where name = 'tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('olives')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Penne Arrabbiata'),
        (select max(id) from public.ingredient where name = 'olives'));
INSERT INTO public.ingredient (name)
VALUES ('Parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Penne Arrabbiata'),
        (select max(id) from public.ingredient where name = 'Parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Penne Arrabbiata'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.ingredient (name)
VALUES ('basil')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Penne Arrabbiata'),
        (select max(id) from public.ingredient where name = 'basil'));
INSERT INTO public.ingredient (name)
VALUES ('pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Penne Arrabbiata'),
        (select max(id) from public.ingredient where name = 'pepper'));
INSERT INTO public.ingredient (name)
VALUES ('chili flakes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Penne Arrabbiata'),
        (select max(id) from public.ingredient where name = 'chili flakes'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Spaghetti Carbonara', 'https://korpa.ba/product_uploads/77zlJErYJZF7bMmTybrsEBvT3mOkrJH4.jpg', 400,
        (select max(id) from public.restaurant where name = 'Trend Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Spaghetti Carbonara'),
        (select max(id) from public.category where name = 'Pasta'));
INSERT INTO public.ingredient (name)
VALUES ('Spaghetti')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spaghetti Carbonara'),
        (select max(id) from public.ingredient where name = 'Spaghetti'));
INSERT INTO public.ingredient (name)
VALUES ('bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spaghetti Carbonara'),
        (select max(id) from public.ingredient where name = 'bacon'));
INSERT INTO public.ingredient (name)
VALUES ('cooking cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spaghetti Carbonara'),
        (select max(id) from public.ingredient where name = 'cooking cream'));
INSERT INTO public.ingredient (name)
VALUES ('Parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spaghetti Carbonara'),
        (select max(id) from public.ingredient where name = 'Parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('egg')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spaghetti Carbonara'),
        (select max(id) from public.ingredient where name = 'egg'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spaghetti Carbonara'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.ingredient (name)
VALUES ('pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spaghetti Carbonara'),
        (select max(id) from public.ingredient where name = 'pepper'));
INSERT INTO public.ingredient (name)
VALUES ('broth')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spaghetti Carbonara'),
        (select max(id) from public.ingredient where name = 'broth'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Spaghetti Bolognese', 'https://korpa.ba/product_uploads/9l9oMdXuEPtKxunyKgof3KPnruNevhC7.jpg', 450,
        (select max(id) from public.restaurant where name = 'Trend Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Spaghetti Bolognese'),
        (select max(id) from public.category where name = 'Pasta'));
INSERT INTO public.ingredient (name)
VALUES ('Spaghetti')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spaghetti Bolognese'),
        (select max(id) from public.ingredient where name = 'Spaghetti'));
INSERT INTO public.ingredient (name)
VALUES ('tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spaghetti Bolognese'),
        (select max(id) from public.ingredient where name = 'tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spaghetti Bolognese'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('carrot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spaghetti Bolognese'),
        (select max(id) from public.ingredient where name = 'carrot'));
INSERT INTO public.ingredient (name)
VALUES ('ground beef')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spaghetti Bolognese'),
        (select max(id) from public.ingredient where name = 'ground beef'));
INSERT INTO public.ingredient (name)
VALUES ('Parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spaghetti Bolognese'),
        (select max(id) from public.ingredient where name = 'Parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spaghetti Bolognese'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.ingredient (name)
VALUES ('pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spaghetti Bolognese'),
        (select max(id) from public.ingredient where name = 'pepper'));
INSERT INTO public.ingredient (name)
VALUES ('broth')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spaghetti Bolognese'),
        (select max(id) from public.ingredient where name = 'broth'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Penne Pomodoro Basilico', 'https://korpa.ba/product_uploads/A3Ao2oKrrQDCG6QALBm5H9W8EGJs0jqo.jpg', 350,
        (select max(id) from public.restaurant where name = 'Trend Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Penne Pomodoro Basilico'),
        (select max(id) from public.category where name = 'Pasta'));
INSERT INTO public.ingredient (name)
VALUES ('Penne')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Penne Pomodoro Basilico'),
        (select max(id) from public.ingredient where name = 'Penne'));
INSERT INTO public.ingredient (name)
VALUES ('tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Penne Pomodoro Basilico'),
        (select max(id) from public.ingredient where name = 'tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('Parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Penne Pomodoro Basilico'),
        (select max(id) from public.ingredient where name = 'Parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('basil pesto')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Penne Pomodoro Basilico'),
        (select max(id) from public.ingredient where name = 'basil pesto'));
INSERT INTO public.ingredient (name)
VALUES ('pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Penne Pomodoro Basilico'),
        (select max(id) from public.ingredient where name = 'pepper'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Penne Pomodoro Basilico'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.ingredient (name)
VALUES ('broth')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Penne Pomodoro Basilico'),
        (select max(id) from public.ingredient where name = 'broth'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Penne Veggie', 'https://korpa.ba/product_uploads/DhwkmVUul2N3RllcmIjfYMe5cIE86VyP.jpg', 390,
        (select max(id) from public.restaurant where name = 'Trend Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Penne Veggie'),
        (select max(id) from public.category where name = 'Pasta'));
INSERT INTO public.ingredient (name)
VALUES ('Penne')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Penne Veggie'),
        (select max(id) from public.ingredient where name = 'Penne'));
INSERT INTO public.ingredient (name)
VALUES ('eggplant')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Penne Veggie'),
        (select max(id) from public.ingredient where name = 'eggplant'));
INSERT INTO public.ingredient (name)
VALUES ('broccoli')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Penne Veggie'),
        (select max(id) from public.ingredient where name = 'broccoli'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Penne Veggie'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Penne Veggie'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.ingredient (name)
VALUES ('zucchini')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Penne Veggie'),
        (select max(id) from public.ingredient where name = 'zucchini'));
INSERT INTO public.ingredient (name)
VALUES ('sesame')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Penne Veggie'),
        (select max(id) from public.ingredient where name = 'sesame'));
INSERT INTO public.ingredient (name)
VALUES ('soy sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Penne Veggie'),
        (select max(id) from public.ingredient where name = 'soy sauce'));
INSERT INTO public.ingredient (name)
VALUES ('Parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Penne Veggie'),
        (select max(id) from public.ingredient where name = 'Parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Penne Veggie'),
        (select max(id) from public.ingredient where name = 'pepper'));
INSERT INTO public.ingredient (name)
VALUES ('carrot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Penne Veggie'),
        (select max(id) from public.ingredient where name = 'carrot'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Penne Chicken Karpa', 'https://korpa.ba/product_uploads/ORwlRrzSYl1vxdh7TqxIi55gmqIYjfP1.jpg', 450,
        (select max(id) from public.restaurant where name = 'Trend Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Penne Chicken Karpa'),
        (select max(id) from public.category where name = 'Pasta'));
INSERT INTO public.ingredient (name)
VALUES ('Penne')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Penne Chicken Karpa'),
        (select max(id) from public.ingredient where name = 'Penne'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Penne Chicken Karpa'),
        (select max(id) from public.ingredient where name = 'mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('spinach')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Penne Chicken Karpa'),
        (select max(id) from public.ingredient where name = 'spinach'));
INSERT INTO public.ingredient (name)
VALUES ('chicken steak')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Penne Chicken Karpa'),
        (select max(id) from public.ingredient where name = 'chicken steak'));
INSERT INTO public.ingredient (name)
VALUES ('goat cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Penne Chicken Karpa'),
        (select max(id) from public.ingredient where name = 'goat cheese'));
INSERT INTO public.ingredient (name)
VALUES ('cooking cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Penne Chicken Karpa'),
        (select max(id) from public.ingredient where name = 'cooking cream'));
INSERT INTO public.ingredient (name)
VALUES ('Parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Penne Chicken Karpa'),
        (select max(id) from public.ingredient where name = 'Parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Penne Chicken Karpa'),
        (select max(id) from public.ingredient where name = 'pepper'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Penne Chicken Karpa'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.ingredient (name)
VALUES ('broth')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Penne Chicken Karpa'),
        (select max(id) from public.ingredient where name = 'broth'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Linguini Truffle', 'https://korpa.ba/product_uploads/wkAiCnfUeAjiy0keOnkszdGaUSJr0RMk.jpg', 930,
        (select max(id) from public.restaurant where name = 'Trend Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Linguini Truffle'),
        (select max(id) from public.category where name = 'Pasta'));
INSERT INTO public.ingredient (name)
VALUES ('Linguini')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Linguini Truffle'),
        (select max(id) from public.ingredient where name = 'Linguini'));
INSERT INTO public.ingredient (name)
VALUES ('cooking cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Linguini Truffle'),
        (select max(id) from public.ingredient where name = 'cooking cream'));
INSERT INTO public.ingredient (name)
VALUES ('ribeye steak')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Linguini Truffle'),
        (select max(id) from public.ingredient where name = 'ribeye steak'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Linguini Truffle'),
        (select max(id) from public.ingredient where name = 'mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('Parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Linguini Truffle'),
        (select max(id) from public.ingredient where name = 'Parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Linguini Truffle'),
        (select max(id) from public.ingredient where name = 'pepper'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Linguini Truffle'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.ingredient (name)
VALUES ('truffle oil')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Linguini Truffle'),
        (select max(id) from public.ingredient where name = 'truffle oil'));
INSERT INTO public.ingredient (name)
VALUES ('broth')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Linguini Truffle'),
        (select max(id) from public.ingredient where name = 'broth'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Linguini Salmon', 'https://korpa.ba/product_uploads/sMv91dUrWWXVWcaIgxn727mNrGNEcpx6.jpg', 760,
        (select max(id) from public.restaurant where name = 'Trend Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Linguini Salmon'),
        (select max(id) from public.category where name = 'Pasta'));
INSERT INTO public.ingredient (name)
VALUES ('Linguini')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Linguini Salmon'),
        (select max(id) from public.ingredient where name = 'Linguini'));
INSERT INTO public.ingredient (name)
VALUES ('cooking cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Linguini Salmon'),
        (select max(id) from public.ingredient where name = 'cooking cream'));
INSERT INTO public.ingredient (name)
VALUES ('broccoli')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Linguini Salmon'),
        (select max(id) from public.ingredient where name = 'broccoli'));
INSERT INTO public.ingredient (name)
VALUES ('smoked salmon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Linguini Salmon'),
        (select max(id) from public.ingredient where name = 'smoked salmon'));
INSERT INTO public.ingredient (name)
VALUES ('Parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Linguini Salmon'),
        (select max(id) from public.ingredient where name = 'Parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Linguini Salmon'),
        (select max(id) from public.ingredient where name = 'pepper'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Linguini Salmon'),
        (select max(id) from public.ingredient where name = 'garlic'));
insert into public.category (name, photo)
VALUES ('Risotto', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Vegetable Risotto', 'https://korpa.ba/product_uploads/EV6B55UdtC3N7sde35In41Jk6626Srxe.jpg', 370,
        (select max(id) from public.restaurant where name = 'Trend Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Vegetable Risotto'),
        (select max(id) from public.category where name = 'Risotto'));
INSERT INTO public.ingredient (name)
VALUES ('Arborio rice')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetable Risotto'),
        (select max(id) from public.ingredient where name = 'Arborio rice'));
INSERT INTO public.ingredient (name)
VALUES ('beef')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetable Risotto'),
        (select max(id) from public.ingredient where name = 'beef'));
INSERT INTO public.ingredient (name)
VALUES ('zucchini')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetable Risotto'),
        (select max(id) from public.ingredient where name = 'zucchini'));
INSERT INTO public.ingredient (name)
VALUES ('eggplant')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetable Risotto'),
        (select max(id) from public.ingredient where name = 'eggplant'));
INSERT INTO public.ingredient (name)
VALUES ('carrot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetable Risotto'),
        (select max(id) from public.ingredient where name = 'carrot'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetable Risotto'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('shallot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetable Risotto'),
        (select max(id) from public.ingredient where name = 'shallot'));
INSERT INTO public.ingredient (name)
VALUES ('butter')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetable Risotto'),
        (select max(id) from public.ingredient where name = 'butter'));
INSERT INTO public.ingredient (name)
VALUES ('Parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetable Risotto'),
        (select max(id) from public.ingredient where name = 'Parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('white wine')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetable Risotto'),
        (select max(id) from public.ingredient where name = 'white wine'));
INSERT INTO public.ingredient (name)
VALUES ('pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetable Risotto'),
        (select max(id) from public.ingredient where name = 'pepper'));
INSERT INTO public.ingredient (name)
VALUES ('broth')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetable Risotto'),
        (select max(id) from public.ingredient where name = 'broth'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chicken Risotto', 'https://korpa.ba/product_uploads/N6CY0qT07w891MFaQ0SzqphbXMQvqJm7.jpg', 440,
        (select max(id) from public.restaurant where name = 'Trend Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chicken Risotto'),
        (select max(id) from public.category where name = 'Risotto'));
INSERT INTO public.ingredient (name)
VALUES ('Arborio rice')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Risotto'),
        (select max(id) from public.ingredient where name = 'Arborio rice'));
INSERT INTO public.ingredient (name)
VALUES ('chicken steak')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Risotto'),
        (select max(id) from public.ingredient where name = 'chicken steak'));
INSERT INTO public.ingredient (name)
VALUES ('zucchini')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Risotto'),
        (select max(id) from public.ingredient where name = 'zucchini'));
INSERT INTO public.ingredient (name)
VALUES ('eggplant')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Risotto'),
        (select max(id) from public.ingredient where name = 'eggplant'));
INSERT INTO public.ingredient (name)
VALUES ('carrot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Risotto'),
        (select max(id) from public.ingredient where name = 'carrot'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Risotto'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('shallot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Risotto'),
        (select max(id) from public.ingredient where name = 'shallot'));
INSERT INTO public.ingredient (name)
VALUES ('butter')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Risotto'),
        (select max(id) from public.ingredient where name = 'butter'));
INSERT INTO public.ingredient (name)
VALUES ('Parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Risotto'),
        (select max(id) from public.ingredient where name = 'Parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('white wine')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Risotto'),
        (select max(id) from public.ingredient where name = 'white wine'));
INSERT INTO public.ingredient (name)
VALUES ('pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Risotto'),
        (select max(id) from public.ingredient where name = 'pepper'));
INSERT INTO public.ingredient (name)
VALUES ('broth')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Risotto'),
        (select max(id) from public.ingredient where name = 'broth'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Trend Risotto', 'https://korpa.ba/product_uploads/XfeAofXAfwFqrw7shg833IcEJLF9YBuZ.jpg', 370,
        (select max(id) from public.restaurant where name = 'Trend Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Trend Risotto'),
        (select max(id) from public.category where name = 'Risotto'));
INSERT INTO public.ingredient (name)
VALUES ('Arborio rice')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Trend Risotto'),
        (select max(id) from public.ingredient where name = 'Arborio rice'));
INSERT INTO public.ingredient (name)
VALUES ('chicken steak')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Trend Risotto'),
        (select max(id) from public.ingredient where name = 'chicken steak'));
INSERT INTO public.ingredient (name)
VALUES ('Parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Trend Risotto'),
        (select max(id) from public.ingredient where name = 'Parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('shallot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Trend Risotto'),
        (select max(id) from public.ingredient where name = 'shallot'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Trend Risotto'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('white wine')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Trend Risotto'),
        (select max(id) from public.ingredient where name = 'white wine'));
INSERT INTO public.ingredient (name)
VALUES ('broth')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Trend Risotto'),
        (select max(id) from public.ingredient where name = 'broth'));
INSERT INTO public.ingredient (name)
VALUES ('ketchup')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Trend Risotto'),
        (select max(id) from public.ingredient where name = 'ketchup'));
INSERT INTO public.ingredient (name)
VALUES ('curry')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Trend Risotto'),
        (select max(id) from public.ingredient where name = 'curry'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Beef Risotto', 'https://korpa.ba/product_uploads/VYBfBf3N0DGOgIGO0DIpgATFrx5WFS3n.jpg', 500,
        (select max(id) from public.restaurant where name = 'Trend Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Beef Risotto'),
        (select max(id) from public.category where name = 'Risotto'));
INSERT INTO public.ingredient (name)
VALUES ('Arborio rice')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Beef Risotto'),
        (select max(id) from public.ingredient where name = 'Arborio rice'));
INSERT INTO public.ingredient (name)
VALUES ('beef')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Beef Risotto'),
        (select max(id) from public.ingredient where name = 'beef'));
INSERT INTO public.ingredient (name)
VALUES ('Parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Beef Risotto'),
        (select max(id) from public.ingredient where name = 'Parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('shallot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Beef Risotto'),
        (select max(id) from public.ingredient where name = 'shallot'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Beef Risotto'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('white wine')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Beef Risotto'),
        (select max(id) from public.ingredient where name = 'white wine'));
INSERT INTO public.ingredient (name)
VALUES ('broth')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Beef Risotto'),
        (select max(id) from public.ingredient where name = 'broth'));
INSERT INTO public.ingredient (name)
VALUES ('ketchup')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Beef Risotto'),
        (select max(id) from public.ingredient where name = 'ketchup'));
INSERT INTO public.ingredient (name)
VALUES ('curry')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Beef Risotto'),
        (select max(id) from public.ingredient where name = 'curry'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Shrimp Risotto', 'https://korpa.ba/product_uploads/MKz4cGiO0tLVP4JLWGUAuPUFPEoJ7XdW.jpg', 820,
        (select max(id) from public.restaurant where name = 'Trend Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Shrimp Risotto'),
        (select max(id) from public.category where name = 'Risotto'));
INSERT INTO public.ingredient (name)
VALUES ('Arborio rice')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Shrimp Risotto'),
        (select max(id) from public.ingredient where name = 'Arborio rice'));
INSERT INTO public.ingredient (name)
VALUES ('cherry tomatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Shrimp Risotto'),
        (select max(id) from public.ingredient where name = 'cherry tomatoes'));
INSERT INTO public.ingredient (name)
VALUES ('Parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Shrimp Risotto'),
        (select max(id) from public.ingredient where name = 'Parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('shrimp')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Shrimp Risotto'),
        (select max(id) from public.ingredient where name = 'shrimp'));
INSERT INTO public.ingredient (name)
VALUES ('butter')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Shrimp Risotto'),
        (select max(id) from public.ingredient where name = 'butter'));
INSERT INTO public.ingredient (name)
VALUES ('white wine')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Shrimp Risotto'),
        (select max(id) from public.ingredient where name = 'white wine'));
INSERT INTO public.ingredient (name)
VALUES ('salt')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Shrimp Risotto'),
        (select max(id) from public.ingredient where name = 'salt'));
INSERT INTO public.ingredient (name)
VALUES ('pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Shrimp Risotto'),
        (select max(id) from public.ingredient where name = 'pepper'));
INSERT INTO public.ingredient (name)
VALUES ('broth')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Shrimp Risotto'),
        (select max(id) from public.ingredient where name = 'broth'));
insert into public.category (name, photo)
VALUES ('Pizza', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Margherita Pizza', 'https://korpa.ba/product_uploads/ocHC1LG77ePUTeUuiaEGlJOKVfQnKutG.jpg', 350,
        (select max(id) from public.restaurant where name = 'Trend Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Margherita Pizza'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('Pizza dough')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Margherita Pizza'),
        (select max(id) from public.ingredient where name = 'Pizza dough'));
INSERT INTO public.ingredient (name)
VALUES ('ajdamer cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Margherita Pizza'),
        (select max(id) from public.ingredient where name = 'ajdamer cheese'));
INSERT INTO public.ingredient (name)
VALUES ('tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Margherita Pizza'),
        (select max(id) from public.ingredient where name = 'tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('oregano')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Margherita Pizza'),
        (select max(id) from public.ingredient where name = 'oregano'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Capricciosa Pizza', 'https://korpa.ba/product_uploads/RDCC9ZhJcTwGrL1hv6ERPueB5RsHUiti.jpg', 430,
        (select max(id) from public.restaurant where name = 'Trend Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Capricciosa Pizza'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('Pizza dough')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Capricciosa Pizza'),
        (select max(id) from public.ingredient where name = 'Pizza dough'));
INSERT INTO public.ingredient (name)
VALUES ('ajdamer cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Capricciosa Pizza'),
        (select max(id) from public.ingredient where name = 'ajdamer cheese'));
INSERT INTO public.ingredient (name)
VALUES ('ham')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Capricciosa Pizza'),
        (select max(id) from public.ingredient where name = 'ham'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Capricciosa Pizza'),
        (select max(id) from public.ingredient where name = 'mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('oregano')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Capricciosa Pizza'),
        (select max(id) from public.ingredient where name = 'oregano'));
INSERT INTO public.ingredient (name)
VALUES ('tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Capricciosa Pizza'),
        (select max(id) from public.ingredient where name = 'tomato sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Kulen Pizza', 'https://korpa.ba/product_uploads/7YjUoeJ1YeZpcDGvIYWH7KeF5nY44GJK.jpg', 460,
        (select max(id) from public.restaurant where name = 'Trend Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Kulen Pizza'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('Pizza dough')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Kulen Pizza'),
        (select max(id) from public.ingredient where name = 'Pizza dough'));
INSERT INTO public.ingredient (name)
VALUES ('ajdamer cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Kulen Pizza'),
        (select max(id) from public.ingredient where name = 'ajdamer cheese'));
INSERT INTO public.ingredient (name)
VALUES ('kulen sausage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Kulen Pizza'),
        (select max(id) from public.ingredient where name = 'kulen sausage'));
INSERT INTO public.ingredient (name)
VALUES ('tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Kulen Pizza'),
        (select max(id) from public.ingredient where name = 'tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('oregano')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Kulen Pizza'),
        (select max(id) from public.ingredient where name = 'oregano'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Beef Prosciutto Pizza', 'https://korpa.ba/product_uploads/J6gE5tUDDt5YKJbdeDby62Eddd8v89u2.jpg', 570,
        (select max(id) from public.restaurant where name = 'Trend Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Beef Prosciutto Pizza'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('Pizza dough')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Beef Prosciutto Pizza'),
        (select max(id) from public.ingredient where name = 'Pizza dough'));
INSERT INTO public.ingredient (name)
VALUES ('ajdamer cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Beef Prosciutto Pizza'),
        (select max(id) from public.ingredient where name = 'ajdamer cheese'));
INSERT INTO public.ingredient (name)
VALUES ('beef prosciutto')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Beef Prosciutto Pizza'),
        (select max(id) from public.ingredient where name = 'beef prosciutto'));
INSERT INTO public.ingredient (name)
VALUES ('tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Beef Prosciutto Pizza'),
        (select max(id) from public.ingredient where name = 'tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('arugula')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Beef Prosciutto Pizza'),
        (select max(id) from public.ingredient where name = 'arugula'));
INSERT INTO public.ingredient (name)
VALUES ('Parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Beef Prosciutto Pizza'),
        (select max(id) from public.ingredient where name = 'Parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('oregano')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Beef Prosciutto Pizza'),
        (select max(id) from public.ingredient where name = 'oregano'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Pork Prosciutto Pizza', 'https://korpa.ba/product_uploads/2kBgWlw0X2US0t9sXZGuBD3c82cOQSWA.jpg', 480,
        (select max(id) from public.restaurant where name = 'Trend Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Pork Prosciutto Pizza'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('Pizza dough')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork Prosciutto Pizza'),
        (select max(id) from public.ingredient where name = 'Pizza dough'));
INSERT INTO public.ingredient (name)
VALUES ('ajdamer cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork Prosciutto Pizza'),
        (select max(id) from public.ingredient where name = 'ajdamer cheese'));
INSERT INTO public.ingredient (name)
VALUES ('pork prosciutto')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork Prosciutto Pizza'),
        (select max(id) from public.ingredient where name = 'pork prosciutto'));
INSERT INTO public.ingredient (name)
VALUES ('arugula')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork Prosciutto Pizza'),
        (select max(id) from public.ingredient where name = 'arugula'));
INSERT INTO public.ingredient (name)
VALUES ('Parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork Prosciutto Pizza'),
        (select max(id) from public.ingredient where name = 'Parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork Prosciutto Pizza'),
        (select max(id) from public.ingredient where name = 'tomato sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Quattro Formaggi Pizza', 'https://korpa.ba/product_uploads/Exr7Yah3gL8rtIuhxKGyMIKT6mYDJLAa.jpg', 540,
        (select max(id) from public.restaurant where name = 'Trend Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Quattro Formaggi Pizza'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('Pizza dough')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quattro Formaggi Pizza'),
        (select max(id) from public.ingredient where name = 'Pizza dough'));
INSERT INTO public.ingredient (name)
VALUES ('tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quattro Formaggi Pizza'),
        (select max(id) from public.ingredient where name = 'tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('ajdamer cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quattro Formaggi Pizza'),
        (select max(id) from public.ingredient where name = 'ajdamer cheese'));
INSERT INTO public.ingredient (name)
VALUES ('blue cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quattro Formaggi Pizza'),
        (select max(id) from public.ingredient where name = 'blue cheese'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quattro Formaggi Pizza'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('Parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quattro Formaggi Pizza'),
        (select max(id) from public.ingredient where name = 'Parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('oregano')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quattro Formaggi Pizza'),
        (select max(id) from public.ingredient where name = 'oregano'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Macedonian Pizza', 'https://korpa.ba/product_uploads/VxLOMuwEjTpgOiLOob8G3SR91SB0fXWW.jpg', 570,
        (select max(id) from public.restaurant where name = 'Trend Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Macedonian Pizza'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('Pizza dough')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian Pizza'),
        (select max(id) from public.ingredient where name = 'Pizza dough'));
INSERT INTO public.ingredient (name)
VALUES ('tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian Pizza'),
        (select max(id) from public.ingredient where name = 'tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('ajdamer cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian Pizza'),
        (select max(id) from public.ingredient where name = 'ajdamer cheese'));
INSERT INTO public.ingredient (name)
VALUES ('ajvar')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian Pizza'),
        (select max(id) from public.ingredient where name = 'ajvar'));
INSERT INTO public.ingredient (name)
VALUES ('peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian Pizza'),
        (select max(id) from public.ingredient where name = 'peppers'));
INSERT INTO public.ingredient (name)
VALUES ('bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian Pizza'),
        (select max(id) from public.ingredient where name = 'bacon'));
INSERT INTO public.ingredient (name)
VALUES ('cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian Pizza'),
        (select max(id) from public.ingredient where name = 'cheese'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Mediterranean Pizza', 'https://korpa.ba/product_uploads/lESRaHrmuft1mwsqPZoHgTtXuJZs54at.jpg', 460,
        (select max(id) from public.restaurant where name = 'Trend Centar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Mediterranean Pizza'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('Pizza dough')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mediterranean Pizza'),
        (select max(id) from public.ingredient where name = 'Pizza dough'));
INSERT INTO public.ingredient (name)
VALUES ('tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mediterranean Pizza'),
        (select max(id) from public.ingredient where name = 'tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('ajdamer cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mediterranean Pizza'),
        (select max(id) from public.ingredient where name = 'ajdamer cheese'));
INSERT INTO public.ingredient (name)
VALUES ('eggplant')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mediterranean Pizza'),
        (select max(id) from public.ingredient where name = 'eggplant'));
INSERT INTO public.ingredient (name)
VALUES ('zucchini')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mediterranean Pizza'),
        (select max(id) from public.ingredient where name = 'zucchini'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mediterranean Pizza'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mediterranean Pizza'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('olives')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mediterranean Pizza'),
        (select max(id) from public.ingredient where name = 'olives'));
INSERT INTO public.ingredient (name)
VALUES ('oregano')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mediterranean Pizza'),
        (select max(id) from public.ingredient where name = 'oregano'));