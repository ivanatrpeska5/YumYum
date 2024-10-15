INSERT INTO public.location (number, street)
VALUES ('1,', 'Donbas');
INSERT INTO public.restaurant (average_rating, delivery_time, logo, name, photo, location_id)
VALUES (0, '20-30 min', 'assets/images/royal_burger_debar_maalo.png', 'Royal Burger Debar Maalo',
        'https://korpa.ba/restaurant_uploads/F0cwJVxq8NFW77HMay6ckUki6ww6fCOc.jpg',
        (select max(id) from public.location));
INSERT INTO public.users (email, name, password, phone, surname, username, role)
VALUES ('royal_burger_debar_maalo_employee@mail.com', 'Employee',
        '$2a$10$VAlO0DtwWX42GHzGGM0DHOIx2kLX1EAhLwaTrXwEsj5n5K9Lr7EQO', '071234567', 'Royal Burger Debar Maalo',
        'royal_burger_debar_maalo_employee', 'employee');
INSERT INTO public.restaurant_employee (user_id, restaurant_id)
VALUES ((select max(user_id) from public.users), (select max(id) from public.restaurant));
INSERT INTO public.category (name, photo)
VALUES ('Burgers', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Hamburger', 'https://korpa.ba/product_uploads/jJeUKOPaEI9B7zgWU2oH9fD0EJ7W80KN.jpg', 160,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Hamburger'),
        (select max(id) from public.category where name = 'Burgers'));
INSERT INTO public.ingredient (name)
VALUES ('Bun')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Hamburger'),
        (select max(id) from public.ingredient where name = 'Bun'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Hamburger'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Hamburger'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('curry sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Hamburger'),
        (select max(id) from public.ingredient where name = 'curry sauce'));
INSERT INTO public.ingredient (name)
VALUES ('pickles')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Hamburger'),
        (select max(id) from public.ingredient where name = 'pickles'));
INSERT INTO public.ingredient (name)
VALUES ('Burgers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Hamburger'),
        (select max(id) from public.ingredient where name = 'Burgers'));
INSERT INTO public.ingredient (name)
VALUES ('pink sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Hamburger'),
        (select max(id) from public.ingredient where name = 'pink sauce'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Hamburger'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Cheeseburger', 'https://korpa.ba/product_uploads/LFPbiIHmGN5xvISH2rIYzh6DsZ7JPuwG.jpg', 175,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Cheeseburger'),
        (select max(id) from public.category where name = 'Burgers'));
INSERT INTO public.ingredient (name)
VALUES ('Bun')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Cheeseburger'),
        (select max(id) from public.ingredient where name = 'Bun'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Cheeseburger'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Cheeseburger'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('curry sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Cheeseburger'),
        (select max(id) from public.ingredient where name = 'curry sauce'));
INSERT INTO public.ingredient (name)
VALUES ('pickles')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Cheeseburger'),
        (select max(id) from public.ingredient where name = 'pickles'));
INSERT INTO public.ingredient (name)
VALUES ('two pieces of cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Cheeseburger'),
        (select max(id) from public.ingredient where name = 'two pieces of cheese'));
INSERT INTO public.ingredient (name)
VALUES ('Burgers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Cheeseburger'),
        (select max(id) from public.ingredient where name = 'Burgers'));
INSERT INTO public.ingredient (name)
VALUES ('pink sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Cheeseburger'),
        (select max(id) from public.ingredient where name = 'pink sauce'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Cheeseburger'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Baconburger', 'https://korpa.ba/product_uploads/fBWylBpIi3fpyC5Ia79ZkxM4EJxzalM4.jpg', 185,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Baconburger'),
        (select max(id) from public.category where name = 'Burgers'));
INSERT INTO public.ingredient (name)
VALUES ('Bun')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Baconburger'),
        (select max(id) from public.ingredient where name = 'Bun'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Baconburger'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Baconburger'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('two pieces of bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Baconburger'),
        (select max(id) from public.ingredient where name = 'two pieces of bacon'));
INSERT INTO public.ingredient (name)
VALUES ('curry sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Baconburger'),
        (select max(id) from public.ingredient where name = 'curry sauce'));
INSERT INTO public.ingredient (name)
VALUES ('pickles')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Baconburger'),
        (select max(id) from public.ingredient where name = 'pickles'));
INSERT INTO public.ingredient (name)
VALUES ('cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Baconburger'),
        (select max(id) from public.ingredient where name = 'cheese'));
INSERT INTO public.ingredient (name)
VALUES ('Burgers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Baconburger'),
        (select max(id) from public.ingredient where name = 'Burgers'));
INSERT INTO public.ingredient (name)
VALUES ('pink sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Baconburger'),
        (select max(id) from public.ingredient where name = 'pink sauce'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Baconburger'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Doubleburger', 'https://korpa.ba/product_uploads/Rhq69iz3KYVOWEZu5F6MFrlCto5cYkJy.jpg', 225,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Doubleburger'),
        (select max(id) from public.category where name = 'Burgers'));
INSERT INTO public.ingredient (name)
VALUES ('Bun')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Doubleburger'),
        (select max(id) from public.ingredient where name = 'Bun'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Doubleburger'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Doubleburger'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('curry sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Doubleburger'),
        (select max(id) from public.ingredient where name = 'curry sauce'));
INSERT INTO public.ingredient (name)
VALUES ('pickles')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Doubleburger'),
        (select max(id) from public.ingredient where name = 'pickles'));
INSERT INTO public.ingredient (name)
VALUES ('four pieces of cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Doubleburger'),
        (select max(id) from public.ingredient where name = 'four pieces of cheese'));
INSERT INTO public.ingredient (name)
VALUES ('two burgers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Doubleburger'),
        (select max(id) from public.ingredient where name = 'two burgers'));
INSERT INTO public.ingredient (name)
VALUES ('pink sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Doubleburger'),
        (select max(id) from public.ingredient where name = 'pink sauce'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Doubleburger'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Royalburger', 'https://korpa.ba/product_uploads/fGsgepnJNNzFjlsOsTFV2bCCNX5pfyJS.jpg', 215,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Royalburger'),
        (select max(id) from public.category where name = 'Burgers'));
INSERT INTO public.ingredient (name)
VALUES ('Bun')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Royalburger'),
        (select max(id) from public.ingredient where name = 'Bun'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Royalburger'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Royalburger'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Royalburger'),
        (select max(id) from public.ingredient where name = 'bacon'));
INSERT INTO public.ingredient (name)
VALUES ('curry sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Royalburger'),
        (select max(id) from public.ingredient where name = 'curry sauce'));
INSERT INTO public.ingredient (name)
VALUES ('pickles')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Royalburger'),
        (select max(id) from public.ingredient where name = 'pickles'));
INSERT INTO public.ingredient (name)
VALUES ('clotted cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Royalburger'),
        (select max(id) from public.ingredient where name = 'clotted cream'));
INSERT INTO public.ingredient (name)
VALUES ('Burgers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Royalburger'),
        (select max(id) from public.ingredient where name = 'Burgers'));
INSERT INTO public.ingredient (name)
VALUES ('pink sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Royalburger'),
        (select max(id) from public.ingredient where name = 'pink sauce'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Royalburger'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Vege Burger', 'https://korpa.ba/product_uploads/Xia3u2tiATZyiQIKXnETmMTwGTTJd3Mb.jpg', 120,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Vege Burger'),
        (select max(id) from public.category where name = 'Burgers'));
INSERT INTO public.ingredient (name)
VALUES ('Bun')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vege Burger'),
        (select max(id) from public.ingredient where name = 'Bun'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vege Burger'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vege Burger'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('curry sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vege Burger'),
        (select max(id) from public.ingredient where name = 'curry sauce'));
INSERT INTO public.ingredient (name)
VALUES ('pickles')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vege Burger'),
        (select max(id) from public.ingredient where name = 'pickles'));
INSERT INTO public.ingredient (name)
VALUES ('cheese x 3')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vege Burger'),
        (select max(id) from public.ingredient where name = 'cheese x 3'));
INSERT INTO public.ingredient (name)
VALUES ('pink sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vege Burger'),
        (select max(id) from public.ingredient where name = 'pink sauce'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vege Burger'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.category (name, photo)
VALUES ('Chicken Burger', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Crispy Chicken', 'https://korpa.ba/product_uploads/ZSiyHLVITpZf7atFPdhHDf2CvHESylqR.jpg', 165,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Crispy Chicken'),
        (select max(id) from public.category where name = 'Chicken Burger'));
INSERT INTO public.ingredient (name)
VALUES ('Bun')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Crispy Chicken'),
        (select max(id) from public.ingredient where name = 'Bun'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Crispy Chicken'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Crispy Chicken'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('curry sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Crispy Chicken'),
        (select max(id) from public.ingredient where name = 'curry sauce'));
INSERT INTO public.ingredient (name)
VALUES ('pickles')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Crispy Chicken'),
        (select max(id) from public.ingredient where name = 'pickles'));
INSERT INTO public.ingredient (name)
VALUES ('two pieces of fried steak')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Crispy Chicken'),
        (select max(id) from public.ingredient where name = 'two pieces of fried steak'));
INSERT INTO public.ingredient (name)
VALUES ('pink sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Crispy Chicken'),
        (select max(id) from public.ingredient where name = 'pink sauce'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Crispy Chicken'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Cheese Chicken', 'https://korpa.ba/product_uploads/Muoo7vncO83FmUdDHPnbLaJUSDipiYWj.jpg', 180,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Cheese Chicken'),
        (select max(id) from public.category where name = 'Chicken Burger'));
INSERT INTO public.ingredient (name)
VALUES ('Bun')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Cheese Chicken'),
        (select max(id) from public.ingredient where name = 'Bun'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Cheese Chicken'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Cheese Chicken'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('curry sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Cheese Chicken'),
        (select max(id) from public.ingredient where name = 'curry sauce'));
INSERT INTO public.ingredient (name)
VALUES ('pickles')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Cheese Chicken'),
        (select max(id) from public.ingredient where name = 'pickles'));
INSERT INTO public.ingredient (name)
VALUES ('two pieces of cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Cheese Chicken'),
        (select max(id) from public.ingredient where name = 'two pieces of cheese'));
INSERT INTO public.ingredient (name)
VALUES ('two pieces of fried steak')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Cheese Chicken'),
        (select max(id) from public.ingredient where name = 'two pieces of fried steak'));
INSERT INTO public.ingredient (name)
VALUES ('pink sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Cheese Chicken'),
        (select max(id) from public.ingredient where name = 'pink sauce'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Cheese Chicken'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Bacon Chicken', 'https://korpa.ba/product_uploads/HtnIKDsKTgtiWepEV8OkNye9TdeuNdnW.jpg', 190,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Bacon Chicken'),
        (select max(id) from public.category where name = 'Chicken Burger'));
INSERT INTO public.ingredient (name)
VALUES ('Bun')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bacon Chicken'),
        (select max(id) from public.ingredient where name = 'Bun'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bacon Chicken'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bacon Chicken'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('two pieces of bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bacon Chicken'),
        (select max(id) from public.ingredient where name = 'two pieces of bacon'));
INSERT INTO public.ingredient (name)
VALUES ('curry sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bacon Chicken'),
        (select max(id) from public.ingredient where name = 'curry sauce'));
INSERT INTO public.ingredient (name)
VALUES ('pickles')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bacon Chicken'),
        (select max(id) from public.ingredient where name = 'pickles'));
INSERT INTO public.ingredient (name)
VALUES ('cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bacon Chicken'),
        (select max(id) from public.ingredient where name = 'cheese'));
INSERT INTO public.ingredient (name)
VALUES ('two pieces of fried steak')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bacon Chicken'),
        (select max(id) from public.ingredient where name = 'two pieces of fried steak'));
INSERT INTO public.ingredient (name)
VALUES ('pink sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bacon Chicken'),
        (select max(id) from public.ingredient where name = 'pink sauce'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bacon Chicken'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Spicy Chicken', 'https://korpa.ba/product_uploads/gEIDNisaMuZMbrScIo72pSpKXiwQGZ1A.jpg', 170,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Spicy Chicken'),
        (select max(id) from public.category where name = 'Chicken Burger'));
INSERT INTO public.ingredient (name)
VALUES ('Bun')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spicy Chicken'),
        (select max(id) from public.ingredient where name = 'Bun'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spicy Chicken'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('pink sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spicy Chicken'),
        (select max(id) from public.ingredient where name = 'pink sauce'));
INSERT INTO public.ingredient (name)
VALUES ('two pieces of fried chicken')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spicy Chicken'),
        (select max(id) from public.ingredient where name = 'two pieces of fried chicken'));
INSERT INTO public.ingredient (name)
VALUES ('pickles')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spicy Chicken'),
        (select max(id) from public.ingredient where name = 'pickles'));
INSERT INTO public.ingredient (name)
VALUES ('curry sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spicy Chicken'),
        (select max(id) from public.ingredient where name = 'curry sauce'));
INSERT INTO public.ingredient (name)
VALUES ('chili spice')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spicy Chicken'),
        (select max(id) from public.ingredient where name = 'chili spice'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spicy Chicken'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spicy Chicken'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Royal Chicken', 'https://korpa.ba/product_uploads/4TozrDOGJWNsnTTaGIXLjNTOHdyqkOEu.jpg', 215,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Royal Chicken'),
        (select max(id) from public.category where name = 'Chicken Burger'));
INSERT INTO public.ingredient (name)
VALUES ('Bun')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Royal Chicken'),
        (select max(id) from public.ingredient where name = 'Bun'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Royal Chicken'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Royal Chicken'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('two pieces of bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Royal Chicken'),
        (select max(id) from public.ingredient where name = 'two pieces of bacon'));
INSERT INTO public.ingredient (name)
VALUES ('curry sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Royal Chicken'),
        (select max(id) from public.ingredient where name = 'curry sauce'));
INSERT INTO public.ingredient (name)
VALUES ('pickles')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Royal Chicken'),
        (select max(id) from public.ingredient where name = 'pickles'));
INSERT INTO public.ingredient (name)
VALUES ('clotted cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Royal Chicken'),
        (select max(id) from public.ingredient where name = 'clotted cream'));
INSERT INTO public.ingredient (name)
VALUES ('two pieces of fried steak')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Royal Chicken'),
        (select max(id) from public.ingredient where name = 'two pieces of fried steak'));
INSERT INTO public.ingredient (name)
VALUES ('pink sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Royal Chicken'),
        (select max(id) from public.ingredient where name = 'pink sauce'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Royal Chicken'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chicken Burger', 'https://korpa.ba/product_uploads/CtBZAqc5hVTLe8gkCLb2zsipQb2cyOMa.jpg', 175,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chicken Burger'),
        (select max(id) from public.category where name = 'Chicken Burger'));
INSERT INTO public.ingredient (name)
VALUES ('Bun')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Burger'),
        (select max(id) from public.ingredient where name = 'Bun'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Burger'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Burger'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('curry sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Burger'),
        (select max(id) from public.ingredient where name = 'curry sauce'));
INSERT INTO public.ingredient (name)
VALUES ('pickles')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Burger'),
        (select max(id) from public.ingredient where name = 'pickles'));
INSERT INTO public.ingredient (name)
VALUES ('two pieces of grilled steak')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Burger'),
        (select max(id) from public.ingredient where name = 'two pieces of grilled steak'));
INSERT INTO public.ingredient (name)
VALUES ('pink sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Burger'),
        (select max(id) from public.ingredient where name = 'pink sauce'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Burger'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.category (name, photo)
VALUES ('Chicken', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('6 pc. Chicken Wings', 'https://korpa.ba/product_uploads/1YxAZ01ZgjITn2Hl2W44Wlz7TBf0myI8.jpg', 170,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = '6 pc. Chicken Wings'),
        (select max(id) from public.category where name = 'Chicken'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('9 pc. Chicken Wings', 'https://korpa.ba/product_uploads/rNOjWer7YQSBnwLFJr2VzkPcMYPmkVcK.jpg', 200,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = '9 pc. Chicken Wings'),
        (select max(id) from public.category where name = 'Chicken'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('6 pc. Nuggets', 'https://korpa.ba/product_uploads/kAKbsinuBDX3Sef6WEsEEJnlyJ4BLEvx.jpg', 165,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = '6 pc. Nuggets'),
        (select max(id) from public.category where name = 'Chicken'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('9 pc. Nuggets', 'https://korpa.ba/product_uploads/5SwAjKhtqH48TyIkf7Lez1i8X3nW9Y5Z.jpg', 200,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = '9 pc. Nuggets'),
        (select max(id) from public.category where name = 'Chicken'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('15 pc. Nuggets', 'https://korpa.ba/product_uploads/j0avvQDXGLUnRBO2lHhMpW27Y4SzM8ms.jpg', 320,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = '15 pc. Nuggets'),
        (select max(id) from public.category where name = 'Chicken'));
INSERT INTO public.category (name, photo)
VALUES ('Wrap', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Royal Wrap', 'https://korpa.ba/product_uploads/YD958eiggOHJudT8m7cReqVzwPQ2FIrP.jpg', 175,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Royal Wrap'),
        (select max(id) from public.category where name = 'Wrap'));
INSERT INTO public.ingredient (name)
VALUES ('Tortilla')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Royal Wrap'),
        (select max(id) from public.ingredient where name = 'Tortilla'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Royal Wrap'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('pink sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Royal Wrap'),
        (select max(id) from public.ingredient where name = 'pink sauce'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Royal Wrap'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('two pieces of fried chicken')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Royal Wrap'),
        (select max(id) from public.ingredient where name = 'two pieces of fried chicken'));
INSERT INTO public.ingredient (name)
VALUES ('curry sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Royal Wrap'),
        (select max(id) from public.ingredient where name = 'curry sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Nuggets Wrap', 'None', 175, (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Nuggets Wrap'),
        (select max(id) from public.category where name = 'Wrap'));
INSERT INTO public.ingredient (name)
VALUES ('Марула')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Nuggets Wrap'),
        (select max(id) from public.ingredient where name = 'Марула'));
INSERT INTO public.ingredient (name)
VALUES ('ранч сос')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Nuggets Wrap'),
        (select max(id) from public.ingredient where name = 'ранч сос'));
INSERT INTO public.ingredient (name)
VALUES ('фета сирење')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Nuggets Wrap'),
        (select max(id) from public.ingredient where name = 'фета сирење'));
INSERT INTO public.ingredient (name)
VALUES ('доматни коцки')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Nuggets Wrap'),
        (select max(id) from public.ingredient where name = 'доматни коцки'));
INSERT INTO public.ingredient (name)
VALUES ('nuggets x 5')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Nuggets Wrap'),
        (select max(id) from public.ingredient where name = 'nuggets x 5'));
INSERT INTO public.category (name, photo)
VALUES ('Hot Dog', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chicago Hot Dog', 'https://korpa.ba/product_uploads/R51iUFi3uTqZDbpOmBQaDhxZVNhzZinV.jpg', 130,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chicago Hot Dog'),
        (select max(id) from public.category where name = 'Hot Dog'));
INSERT INTO public.ingredient (name)
VALUES ('Bun')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicago Hot Dog'),
        (select max(id) from public.ingredient where name = 'Bun'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicago Hot Dog'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicago Hot Dog'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('ketchup')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicago Hot Dog'),
        (select max(id) from public.ingredient where name = 'ketchup'));
INSERT INTO public.ingredient (name)
VALUES ('curry sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicago Hot Dog'),
        (select max(id) from public.ingredient where name = 'curry sauce'));
INSERT INTO public.ingredient (name)
VALUES ('hot dog')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicago Hot Dog'),
        (select max(id) from public.ingredient where name = 'hot dog'));
INSERT INTO public.ingredient (name)
VALUES ('pink sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicago Hot Dog'),
        (select max(id) from public.ingredient where name = 'pink sauce'));
INSERT INTO public.ingredient (name)
VALUES ('pickles')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicago Hot Dog'),
        (select max(id) from public.ingredient where name = 'pickles'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Double Chicago Hot Dog', 'None', 150,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Double Chicago Hot Dog'),
        (select max(id) from public.category where name = 'Hot Dog'));
INSERT INTO public.ingredient (name)
VALUES ('Лепче')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Double Chicago Hot Dog'),
        (select max(id) from public.ingredient where name = 'Лепче'));
INSERT INTO public.ingredient (name)
VALUES ('кромид')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Double Chicago Hot Dog'),
        (select max(id) from public.ingredient where name = 'кромид'));
INSERT INTO public.ingredient (name)
VALUES ('домат')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Double Chicago Hot Dog'),
        (select max(id) from public.ingredient where name = 'домат'));
INSERT INTO public.ingredient (name)
VALUES ('кечап')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Double Chicago Hot Dog'),
        (select max(id) from public.ingredient where name = 'кечап'));
INSERT INTO public.ingredient (name)
VALUES ('кари сос')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Double Chicago Hot Dog'),
        (select max(id) from public.ingredient where name = 'кари сос'));
INSERT INTO public.ingredient (name)
VALUES ('2x виршла')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Double Chicago Hot Dog'),
        (select max(id) from public.ingredient where name = '2x виршла'));
INSERT INTO public.ingredient (name)
VALUES ('розев сос')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Double Chicago Hot Dog'),
        (select max(id) from public.ingredient where name = 'розев сос'));
INSERT INTO public.ingredient (name)
VALUES ('кисели краставички')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Double Chicago Hot Dog'),
        (select max(id) from public.ingredient where name = 'кисели краставички'));
INSERT INTO public.category (name, photo)
VALUES ('Fish', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Fish & Chips', 'https://korpa.ba/product_uploads/iE2jp46jwqUsS4s6XrbJJsARjgQBOLrG.jpg', 205,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Fish & Chips'),
        (select max(id) from public.category where name = 'Fish'));
INSERT INTO public.ingredient (name)
VALUES ('Bun')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fish & Chips'),
        (select max(id) from public.ingredient where name = 'Bun'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fish & Chips'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fish & Chips'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('curry sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fish & Chips'),
        (select max(id) from public.ingredient where name = 'curry sauce'));
INSERT INTO public.ingredient (name)
VALUES ('pickles')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fish & Chips'),
        (select max(id) from public.ingredient where name = 'pickles'));
INSERT INTO public.ingredient (name)
VALUES ('fried fish')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fish & Chips'),
        (select max(id) from public.ingredient where name = 'fried fish'));
INSERT INTO public.ingredient (name)
VALUES ('pink sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fish & Chips'),
        (select max(id) from public.ingredient where name = 'pink sauce'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fish & Chips'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Calamari Burger', 'https://korpa.ba/product_uploads/C0zPw3UiUPTB2KsWSsDd3Q9oSb32mNBF.jpg', 185,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Calamari Burger'),
        (select max(id) from public.category where name = 'Fish'));
INSERT INTO public.ingredient (name)
VALUES ('Bun')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Calamari Burger'),
        (select max(id) from public.ingredient where name = 'Bun'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Calamari Burger'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Calamari Burger'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('tartar sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Calamari Burger'),
        (select max(id) from public.ingredient where name = 'tartar sauce'));
INSERT INTO public.ingredient (name)
VALUES ('5 squids')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Calamari Burger'),
        (select max(id) from public.ingredient where name = '5 squids'));
INSERT INTO public.ingredient (name)
VALUES ('pink sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Calamari Burger'),
        (select max(id) from public.ingredient where name = 'pink sauce'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Calamari Burger'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('bun')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Calamari Burger'),
        (select max(id) from public.ingredient where name = 'bun'));
INSERT INTO public.category (name, photo)
VALUES ('Kids Menu', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Kids Burger Menu', 'https://korpa.ba/product_uploads/xzMcvB0PwrHz1xPr1YoGSY50O1Do0qET.jpg', 200,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Kids Burger Menu'),
        (select max(id) from public.category where name = 'Kids Menu'));
INSERT INTO public.ingredient (name)
VALUES ('Burger with burger')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Kids Burger Menu'),
        (select max(id) from public.ingredient where name = 'Burger with burger'));
INSERT INTO public.ingredient (name)
VALUES ('fries')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Kids Burger Menu'),
        (select max(id) from public.ingredient where name = 'fries'));
INSERT INTO public.ingredient (name)
VALUES ('childrens juice + toy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id) VALUES ((select max(id) from public.food where name = 'Kids Burger Menu'), (select max(id) from public.ingredient where name = 'childrens juice + toy') );
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Kids Chicken Menu', 'https://korpa.ba/product_uploads/btljPt9xFA4pMs3VDybgcg6DMa1KCEwZ.jpg', 200,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Kids Chicken Menu'),
        (select max(id) from public.category where name = 'Kids Menu'));
INSERT INTO public.ingredient (name)
VALUES ('Burger with grilled or fried steak')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Kids Chicken Menu'),
        (select max(id) from public.ingredient where name = 'Burger with grilled or fried steak'));
INSERT INTO public.ingredient (name)
VALUES ('fries')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Kids Chicken Menu'),
        (select max(id) from public.ingredient where name = 'fries'));
INSERT INTO public.ingredient (name)
VALUES ('childrens juice + toy') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id) VALUES ((select max(id) from public.food where name = 'Kids Chicken Menu'), (select max(id) from public.ingredient where name = 'childrens juice + toy') );
INSERT INTO public.category (name, photo)
VALUES ('Salads', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Caesar Salad', 'https://korpa.ba/product_uploads/Uy2O2bOBUwqrpMsaCcqNZhq70EHdm64I.jpg', 200,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Caesar Salad'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Chopped steak x 2')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar Salad'),
        (select max(id) from public.ingredient where name = 'Chopped steak x 2'));
INSERT INTO public.ingredient (name)
VALUES ('cubes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar Salad'),
        (select max(id) from public.ingredient where name = 'cubes'));
INSERT INTO public.ingredient (name)
VALUES ('tomato cubes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar Salad'),
        (select max(id) from public.ingredient where name = 'tomato cubes'));
INSERT INTO public.ingredient (name)
VALUES ('pink sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar Salad'),
        (select max(id) from public.ingredient where name = 'pink sauce'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar Salad'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chicken Salad', 'https://korpa.ba/product_uploads/uoSPTMTi1oiUOhq8831bvaaezEsno1sS.jpg', 210,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chicken Salad'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Fried steak')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Salad'),
        (select max(id) from public.ingredient where name = 'Fried steak'));
INSERT INTO public.ingredient (name)
VALUES ('tomato cubes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Salad'),
        (select max(id) from public.ingredient where name = 'tomato cubes'));
INSERT INTO public.ingredient (name)
VALUES ('pink sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Salad'),
        (select max(id) from public.ingredient where name = 'pink sauce'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Salad'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Coral Salad', 'https://korpa.ba/product_uploads/Djp9GMHWQK4wiXbNdK9m106ecnzECaUk.jpg', 200,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Coral Salad'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Fried squid x 4')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Coral Salad'),
        (select max(id) from public.ingredient where name = 'Fried squid x 4'));
INSERT INTO public.ingredient (name)
VALUES ('corn')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Coral Salad'),
        (select max(id) from public.ingredient where name = 'corn'));
INSERT INTO public.ingredient (name)
VALUES ('tomato cubes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Coral Salad'),
        (select max(id) from public.ingredient where name = 'tomato cubes'));
INSERT INTO public.ingredient (name)
VALUES ('pink sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Coral Salad'),
        (select max(id) from public.ingredient where name = 'pink sauce'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Coral Salad'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.category (name, photo)
VALUES ('Extras', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Small French Fries', 'https://korpa.ba/product_uploads/6PaI7IPlMnDsW7grOPGY8vFtR7LOUW4F.jpg', 65,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Small French Fries'),
        (select max(id) from public.category where name = 'Extras'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Big French Fries', 'https://korpa.ba/product_uploads/Xd6JgWP1j83pl8vj1cnfIpjn9HsADs0k.jpg', 85,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Big French Fries'),
        (select max(id) from public.category where name = 'Extras'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Small Canoe French Fries', 'https://korpa.ba/product_uploads/CzK3ZJX6vjUSaXWJ8vkAOoeiglOGMSxM.jpg', 75,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Small Canoe French Fries'),
        (select max(id) from public.category where name = 'Extras'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Big Canoe French Fries', 'https://korpa.ba/product_uploads/C5afYF0FjDt3aNOB797HbNZdZK0jgZzs.jpg', 95,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Big Canoe French Fries'),
        (select max(id) from public.category where name = 'Extras'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Curry Sauce', 'https://korpa.ba/product_uploads/3ZXVrSFOPradBHi9Qe9JLbWPPiGgeixH.jpg', 25,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Curry Sauce'),
        (select max(id) from public.category where name = 'Extras'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Pink Sauce', 'https://korpa.ba/product_uploads/ivGDufQMIg0RWG5MTiWOPmQ3eJroUcCq.jpg', 25,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Pink Sauce'),
        (select max(id) from public.category where name = 'Extras'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Kechap', 'https://korpa.ba/product_uploads/g8XRHyB1iCaIhsfqtwOuwWIWFcoV3QGC.jpg', 25,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Kechap'),
        (select max(id) from public.category where name = 'Extras'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Ranch sauce', 'None', 25, (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Ranch sauce'),
        (select max(id) from public.category where name = 'Extras'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Комбо: Помфрит + Coca Cola 0.33', 'None', 100,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Комбо: Помфрит + Coca Cola 0.33'),
        (select max(id) from public.category where name = 'Extras'));
INSERT INTO public.category (name, photo)
VALUES ('Drinks', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Coca Cola 0.45', 'https://korpa.ba/product_uploads/NNBIJtovHgCa8weAqgJAYBHLHiNuzNkH.jpg', 70,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Coca Cola 0.45'),
        (select max(id) from public.category where name = 'Drinks'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Coca Cola 0.33', 'https://korpa.ba/product_uploads/uf23v7HXawRkHwCOQvfUa3gz2SfxaWXg.jpg', 60,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Coca Cola 0.33'),
        (select max(id) from public.category where name = 'Drinks'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Fanta 0.33', 'https://korpa.ba/product_uploads/ik2mM9FwIt3F3Y53a4EzdA6D3K7ANQSU.jpg', 60,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Fanta 0.33'),
        (select max(id) from public.category where name = 'Drinks'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Fanta 0.45', 'https://korpa.ba/product_uploads/uR93rozpCz3moCzdO68lZ7VrQVKEbDeC.jpg', 70,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Fanta 0.45'),
        (select max(id) from public.category where name = 'Drinks'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Sprite 0.33', 'https://korpa.ba/product_uploads/3NVA3IlqU3wYzKcASiSTzEO80qu4G4dP.jpg', 60,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Sprite 0.33'),
        (select max(id) from public.category where name = 'Drinks'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Sprite 0.45', 'https://korpa.ba/product_uploads/qGp9Fa9OP19HCTWAyZ2xeIQkMndn9Egw.jpg', 70,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Sprite 0.45'),
        (select max(id) from public.category where name = 'Drinks'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Schweppes 0.33', 'https://korpa.ba/product_uploads/TuHHIbuHzm7I88YptVi5MXGojfBBJLHC.jpeg', 60,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Schweppes 0.33'),
        (select max(id) from public.category where name = 'Drinks'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Schweppes 0.5', 'https://korpa.ba/product_uploads/Ea9p8neavQPkkfTbGTysEeNvVmlGSPis.jpg', 70,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Schweppes 0.5'),
        (select max(id) from public.category where name = 'Drinks'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Rosa 0.5', 'https://korpa.ba/product_uploads/3AY0aGXqy7w6an7v9g7UZdJ0Gdy11F1w.png', 50,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Rosa 0.5'),
        (select max(id) from public.category where name = 'Drinks'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Fuze Ice Tea Peach 0.5', 'https://korpa.ba/product_uploads/XOBrkUGEIP3yD4ypjvjXB2XsbnA6lf3y.png', 80,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Fuze Ice Tea Peach 0.5'),
        (select max(id) from public.category where name = 'Drinks'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Fuze Ice Tea Lemon 0.5', 'https://korpa.ba/product_uploads/GzfsWI7V3XHnB0XcJZK3dOTwE4pybhMr.png', 80,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Fuze Ice Tea Lemon 0.5'),
        (select max(id) from public.category where name = 'Drinks'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Next Joy Bozel 0.5', 'https://korpa.ba/product_uploads/yF9mPWammmt9BVgxpsm1xs7FihOwYkAH.png', 80,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Next Joy Bozel 0.5'),
        (select max(id) from public.category where name = 'Drinks'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Next Joy Cherry 0.5', 'https://korpa.ba/product_uploads/xGK07JL7CImZ4Ef0u1QNnSc2Dt66GbyF.png', 80,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Next Joy Cherry 0.5'),
        (select max(id) from public.category where name = 'Drinks'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Next Lemonade 0.4', 'https://korpa.ba/product_uploads/4JhMrjmPcgGTrXpg6YZmDIGXDkrocrMi.jpg', 80,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Next Lemonade 0.4'),
        (select max(id) from public.category where name = 'Drinks'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Next Lemonade Mint 0.4', 'https://korpa.ba/product_uploads/7jKFnjoLGEZjVfGUcdwMqzIHj99y5pLM.jpg', 80,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Next Lemonade Mint 0.4'),
        (select max(id) from public.category where name = 'Drinks'));
INSERT INTO public.category (name, photo)
VALUES ('Beer', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Heineken 0.33', 'https://korpa.ba/product_uploads/HOUzmNeZYRpRxz6GivdfeT5dci4QWMl8.jpg', 90,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Heineken 0.33'),
        (select max(id) from public.category where name = 'Beer'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Skopsko 0.33', 'https://korpa.ba/product_uploads/af9vqKg7OWxXVuOhfqhHam7HSJa85gzU.jpg', 80,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Skopsko 0.33'),
        (select max(id) from public.category where name = 'Beer'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Skopsko 0.5', 'https://korpa.ba/product_uploads/TaSyOSYU3pf0TW3tQibkZpVr7MLj9kir.jpg', 90,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Skopsko 0.5'),
        (select max(id) from public.category where name = 'Beer'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Amstel 0.33', 'https://korpa.ba/product_uploads/s68J5ZnofrVfkqrH44GoqXZMKlTfjZgs.png', 90,
        (select max(id) from public.restaurant where name = 'Royal Burger Debar Maalo'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Amstel 0.33'),
        (select max(id) from public.category where name = 'Beer'));