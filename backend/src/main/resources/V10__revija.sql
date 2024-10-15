INSERT INTO public.location (number, street)
VALUES ('66,', 'Blvd. Partizanski Odredi');
INSERT INTO public.restaurant (average_rating, delivery_time, logo, name, photo, location_id)
VALUES (0, '30-40 min', 'assets/images/revija_bar_&_food.png', 'Revija Bar & Food',
        'https://korpa.ba/restaurant_uploads/rEye1wynuqMD6DcYXmkhSQbJ40nMGshJ.jpg',
        (select max(id) from public.location));
INSERT INTO public.users (email, name, password, phone, surname, username, role)
VALUES ('revija_bar_&_food_employee@mail.com', 'Employee',
        '$2a$10$VAlO0DtwWX42GHzGGM0DHOIx2kLX1EAhLwaTrXwEsj5n5K9Lr7EQO', '071234567', 'Revija Bar & Food',
        'revija_bar_&_food_employee', 'employee');
INSERT INTO public.restaurant_employee (user_id, restaurant_id)
VALUES ((select max(user_id) from public.users), (select max(id) from public.restaurant));
INSERT INTO public.category (name, photo)
VALUES ('Pasta', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('4 types of cheese paste', 'https://korpa.ba/product_uploads/F8wdrckeCvK1ZoysRVhe2JbXc4bkp3oI.jpg', 330,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = '4 types of cheese paste'),
        (select max(id) from public.category where name = 'Pasta'));
INSERT INTO public.ingredient (name)
VALUES ('Edamer')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = '4 types of cheese paste'),
        (select max(id) from public.ingredient where name = 'Edamer'));
INSERT INTO public.ingredient (name)
VALUES ('cheddar')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = '4 types of cheese paste'),
        (select max(id) from public.ingredient where name = 'cheddar'));
INSERT INTO public.ingredient (name)
VALUES ('blue cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = '4 types of cheese paste'),
        (select max(id) from public.ingredient where name = 'blue cheese'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = '4 types of cheese paste'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Parma pasta', 'https://korpa.ba/product_uploads/Lm3Xb04azvVBIJ5aYNazkQGqXdo94ThJ.jpg', 300,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Parma pasta'),
        (select max(id) from public.category where name = 'Pasta'));
INSERT INTO public.ingredient (name)
VALUES ('Prosciutto')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Parma pasta'),
        (select max(id) from public.ingredient where name = 'Prosciutto'));
INSERT INTO public.ingredient (name)
VALUES ('pelati')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Parma pasta'),
        (select max(id) from public.ingredient where name = 'pelati'));
INSERT INTO public.ingredient (name)
VALUES ('hopla')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Parma pasta'),
        (select max(id) from public.ingredient where name = 'hopla'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Parma pasta'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Parma pasta'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Carbonara pasta', 'https://korpa.ba/product_uploads/Vcsw2HihxnsX5NruRqCzy2LOgtKuBP5L.jpg', 315,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Carbonara pasta'),
        (select max(id) from public.category where name = 'Pasta'));
INSERT INTO public.ingredient (name)
VALUES ('Bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Carbonara pasta'),
        (select max(id) from public.ingredient where name = 'Bacon'));
INSERT INTO public.ingredient (name)
VALUES ('hopla')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Carbonara pasta'),
        (select max(id) from public.ingredient where name = 'hopla'));
INSERT INTO public.ingredient (name)
VALUES ('eggs')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Carbonara pasta'),
        (select max(id) from public.ingredient where name = 'eggs'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Carbonara pasta'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Carbonara pasta'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Prosciutto pizza', 'https://korpa.ba/product_uploads/NgAWnPRb7uPE1h6DwtoYySJDG1YxpCxa.jpg', 428,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Prosciutto pizza'),
        (select max(id) from public.category where name = 'Pasta'));
INSERT INTO public.ingredient (name)
VALUES ('Pelati')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Prosciutto pizza'),
        (select max(id) from public.ingredient where name = 'Pelati'));
INSERT INTO public.ingredient (name)
VALUES ('prosciutto')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Prosciutto pizza'),
        (select max(id) from public.ingredient where name = 'prosciutto'));
INSERT INTO public.ingredient (name)
VALUES ('cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Prosciutto pizza'),
        (select max(id) from public.ingredient where name = 'cheese'));
INSERT INTO public.ingredient (name)
VALUES ('arugula')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Prosciutto pizza'),
        (select max(id) from public.ingredient where name = 'arugula'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Quattro formaggi pizza', 'https://korpa.ba/product_uploads/nUfkPLnR2YvixgH7x59mPvZjcvHzIILu.jpg', 420,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Quattro formaggi pizza'),
        (select max(id) from public.category where name = 'Pasta'));
INSERT INTO public.ingredient (name)
VALUES ('Pelati')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quattro formaggi pizza'),
        (select max(id) from public.ingredient where name = 'Pelati'));
INSERT INTO public.ingredient (name)
VALUES ('blue cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quattro formaggi pizza'),
        (select max(id) from public.ingredient where name = 'blue cheese'));
INSERT INTO public.ingredient (name)
VALUES ('cheddar')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quattro formaggi pizza'),
        (select max(id) from public.ingredient where name = 'cheddar'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quattro formaggi pizza'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('edamer')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quattro formaggi pizza'),
        (select max(id) from public.ingredient where name = 'edamer'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Revija pizza', 'https://korpa.ba/product_uploads/JafZThWrlRprqmyy5T6kooHLzBknRrr0.jpg', 480,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Revija pizza'),
        (select max(id) from public.category where name = 'Pasta'));
INSERT INTO public.ingredient (name)
VALUES ('Pelati')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Revija pizza'),
        (select max(id) from public.ingredient where name = 'Pelati'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Revija pizza'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('chicken steak')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Revija pizza'),
        (select max(id) from public.ingredient where name = 'chicken steak'));
INSERT INTO public.ingredient (name)
VALUES ('prosciutto')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Revija pizza'),
        (select max(id) from public.ingredient where name = 'prosciutto'));
INSERT INTO public.ingredient (name)
VALUES ('arugula')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Revija pizza'),
        (select max(id) from public.ingredient where name = 'arugula'));
INSERT INTO public.ingredient (name)
VALUES ('BBQ')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Revija pizza'),
        (select max(id) from public.ingredient where name = 'BBQ'));
INSERT INTO public.category (name, photo)
VALUES ('Soups', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Beef soup', 'https://korpa.ba/product_uploads/rnpMfNIZ663m1TiBO9yfz7GIICWVHxay.jpg', 173,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Beef soup'),
        (select max(id) from public.category where name = 'Soups'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chicken soup', 'https://korpa.ba/product_uploads/S5GK5fCa4wCMTuEIqHpMIa65omSmjSXZ.jpg', 173,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chicken soup'),
        (select max(id) from public.category where name = 'Soups'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Bun', 'https://korpa.ba/product_uploads/E8MX8198tH5U5XmLuNF5fdNjWbbJpVAM.jpg', 45,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Bun'),
        (select max(id) from public.category where name = 'Soups'));
INSERT INTO public.category (name, photo)
VALUES ('Starters', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Bruschetta with salmon', 'https://korpa.ba/product_uploads/0LV4jUytR9wd9KG4HGkvCmSKGT5XvonY.jpg', 263,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Bruschetta with salmon'),
        (select max(id) from public.category where name = 'Starters'));
INSERT INTO public.ingredient (name)
VALUES ('Smoked salmon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bruschetta with salmon'),
        (select max(id) from public.ingredient where name = 'Smoked salmon'));
INSERT INTO public.ingredient (name)
VALUES ('butter')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bruschetta with salmon'),
        (select max(id) from public.ingredient where name = 'butter'));
INSERT INTO public.ingredient (name)
VALUES ('dill')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bruschetta with salmon'),
        (select max(id) from public.ingredient where name = 'dill'));
INSERT INTO public.ingredient (name)
VALUES ('sherry')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bruschetta with salmon'),
        (select max(id) from public.ingredient where name = 'sherry'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Bruschetti Italiano', 'https://korpa.ba/product_uploads/TynNhY8VviT2jyjcxuLh4TAtW1sAFtHU.jpg', 240,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Bruschetti Italiano'),
        (select max(id) from public.category where name = 'Starters'));
INSERT INTO public.ingredient (name)
VALUES ('Basil')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bruschetti Italiano'),
        (select max(id) from public.ingredient where name = 'Basil'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bruschetti Italiano'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('olive oil')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bruschetti Italiano'),
        (select max(id) from public.ingredient where name = 'olive oil'));
INSERT INTO public.ingredient (name)
VALUES ('white cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bruschetti Italiano'),
        (select max(id) from public.ingredient where name = 'white cheese'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Bruschetti duomo', 'https://korpa.ba/product_uploads/qHsB5DiHacA5VqLk0LekfaNuPPe6pSbH.jpg', 263,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Bruschetti duomo'),
        (select max(id) from public.category where name = 'Starters'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bruschetti duomo'),
        (select max(id) from public.ingredient where name = 'Tomato'));
INSERT INTO public.ingredient (name)
VALUES ('pesto')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bruschetti duomo'),
        (select max(id) from public.ingredient where name = 'pesto'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bruschetti duomo'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('olive oil')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bruschetti duomo'),
        (select max(id) from public.ingredient where name = 'olive oil'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Zucchini chips', 'https://korpa.ba/product_uploads/byqb1G3kDFClAv5soM00dsqY9MUoZH28.jpg', 240,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Zucchini chips'),
        (select max(id) from public.category where name = 'Starters'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chicken fingers with fries', 'https://korpa.ba/product_uploads/0D5jyiNPVL86CN2zhgP13Os00Lb6fbxh.jpg', 338,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chicken fingers with fries'),
        (select max(id) from public.category where name = 'Starters'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Fries', 'https://korpa.ba/product_uploads/E5vAI8DZIn4fnHoafCrzDkghG2aEQHi9.jpg', 173,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Fries'),
        (select max(id) from public.category where name = 'Starters'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Fried onion', 'https://korpa.ba/product_uploads/MRdm3gXgeIOqIXzG1TGPhwLSc7zWPMH0.jpg', 240,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Fried onion'),
        (select max(id) from public.category where name = 'Starters'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chicken Wings', 'https://korpa.ba/product_uploads/cnyy4BbxFawsl1Xj9LPpp6ziUFsSt4Lc.jpg', 255,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chicken Wings'),
        (select max(id) from public.category where name = 'Starters'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Grilled vegetables', 'https://korpa.ba/product_uploads/cfW7fJTiIdJt9BN1IA4Uwm41tKL27Svr.jpg', 308,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Grilled vegetables'),
        (select max(id) from public.category where name = 'Starters'));
INSERT INTO public.ingredient (name)
VALUES ('Eggplant')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Grilled vegetables'),
        (select max(id) from public.ingredient where name = 'Eggplant'));
INSERT INTO public.ingredient (name)
VALUES ('pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Grilled vegetables'),
        (select max(id) from public.ingredient where name = 'pepper'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Grilled vegetables'),
        (select max(id) from public.ingredient where name = 'mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Grilled vegetables'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Champignons with butter', 'https://korpa.ba/product_uploads/IuvimLRnG1pSLpRgLlN3wcjtpvWpcs3v.jpg', 263,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Champignons with butter'),
        (select max(id) from public.category where name = 'Starters'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Boletus on butter', 'https://korpa.ba/product_uploads/mvYBEmAOAhrLgq9yGKa4iRKylpX2zH1D.jpg', 435,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Boletus on butter'),
        (select max(id) from public.category where name = 'Starters'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Grilled cheese', 'https://korpa.ba/product_uploads/8WsGl2Es8btbzyP1JW2F033fD8zpaQeu.jpg', 345,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Grilled cheese'),
        (select max(id) from public.category where name = 'Starters'));
INSERT INTO public.ingredient (name)
VALUES ('Pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Grilled cheese'),
        (select max(id) from public.ingredient where name = 'Pepper'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Grilled cheese'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('sheeps cheese') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id) VALUES ((select max(id) from public.food where name = 'Grilled cheese'), (select max(id) from public.ingredient where name = 'sheeps cheese') );
INSERT INTO public.ingredient (name)
VALUES ('cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Grilled cheese'),
        (select max(id) from public.ingredient where name = 'cheese'));
INSERT INTO public.ingredient (name)
VALUES ('blue cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Grilled cheese'),
        (select max(id) from public.ingredient where name = 'blue cheese'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Mexican Chicken Roll', 'https://korpa.ba/product_uploads/Zh3gPAqG9xMALy2kZYqbk4sYy741onWg.jpg', 308,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Mexican Chicken Roll'),
        (select max(id) from public.category where name = 'Starters'));
INSERT INTO public.ingredient (name)
VALUES ('Chicken steak')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mexican Chicken Roll'),
        (select max(id) from public.ingredient where name = 'Chicken steak'));
INSERT INTO public.ingredient (name)
VALUES ('tortilla')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mexican Chicken Roll'),
        (select max(id) from public.ingredient where name = 'tortilla'));
INSERT INTO public.ingredient (name)
VALUES ('revija white sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mexican Chicken Roll'),
        (select max(id) from public.ingredient where name = 'revija white sauce'));
INSERT INTO public.ingredient (name)
VALUES ('salsa')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mexican Chicken Roll'),
        (select max(id) from public.ingredient where name = 'salsa'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Nachos Chips', 'https://korpa.ba/product_uploads/bgYMaFyxUZsIxTCL2gGIQyPiukfQOtK2.jpg', 263,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Nachos Chips'),
        (select max(id) from public.category where name = 'Starters'));
INSERT INTO public.ingredient (name)
VALUES ('Nachos chips')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Nachos Chips'),
        (select max(id) from public.ingredient where name = 'Nachos chips'));
INSERT INTO public.ingredient (name)
VALUES ('melted cheddar')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Nachos Chips'),
        (select max(id) from public.ingredient where name = 'melted cheddar'));
INSERT INTO public.ingredient (name)
VALUES ('hot sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Nachos Chips'),
        (select max(id) from public.ingredient where name = 'hot sauce'));
INSERT INTO public.ingredient (name)
VALUES ('salsa')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Nachos Chips'),
        (select max(id) from public.ingredient where name = 'salsa'));
INSERT INTO public.category (name, photo)
VALUES ('Salads', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Shopska salad', 'https://korpa.ba/product_uploads/Enjko5ZfVzkTr7Dz2Z0ke1qx7gxSeRp2.jpg', 210,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Shopska salad'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Shopska salad'),
        (select max(id) from public.ingredient where name = 'Tomato'));
INSERT INTO public.ingredient (name)
VALUES ('cucumber')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Shopska salad'),
        (select max(id) from public.ingredient where name = 'cucumber'));
INSERT INTO public.ingredient (name)
VALUES ('cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Shopska salad'),
        (select max(id) from public.ingredient where name = 'cheese'));
INSERT INTO public.ingredient (name)
VALUES ('olive')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Shopska salad'),
        (select max(id) from public.ingredient where name = 'olive'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Macedonian salad', 'https://korpa.ba/product_uploads/K7UQpPPGYKZFSCe72imej6gY7Orj1JsP.jpg', 210,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Macedonian salad'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian salad'),
        (select max(id) from public.ingredient where name = 'Tomato'));
INSERT INTO public.ingredient (name)
VALUES ('pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian salad'),
        (select max(id) from public.ingredient where name = 'pepper'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian salad'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('olives')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian salad'),
        (select max(id) from public.ingredient where name = 'olives'));
INSERT INTO public.ingredient (name)
VALUES ('parsley')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian salad'),
        (select max(id) from public.ingredient where name = 'parsley'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Greek salad', 'https://korpa.ba/product_uploads/GBkFC2x9m787I8v3MmQ91ubTTYtLlr5U.jpg', 210,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Greek salad'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Cucumber')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Greek salad'),
        (select max(id) from public.ingredient where name = 'Cucumber'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Greek salad'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Greek salad'),
        (select max(id) from public.ingredient where name = 'pepper'));
INSERT INTO public.ingredient (name)
VALUES ('olives')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Greek salad'),
        (select max(id) from public.ingredient where name = 'olives'));
INSERT INTO public.ingredient (name)
VALUES ('cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Greek salad'),
        (select max(id) from public.ingredient where name = 'cheese'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Greek salad'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Mediterranean salad', 'None', 188, (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Mediterranean salad'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Beetroot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mediterranean salad'),
        (select max(id) from public.ingredient where name = 'Beetroot'));
INSERT INTO public.ingredient (name)
VALUES ('cabbage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mediterranean salad'),
        (select max(id) from public.ingredient where name = 'cabbage'));
INSERT INTO public.ingredient (name)
VALUES ('carrot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mediterranean salad'),
        (select max(id) from public.ingredient where name = 'carrot'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mediterranean salad'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mediterranean salad'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('cucumber')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mediterranean salad'),
        (select max(id) from public.ingredient where name = 'cucumber'));
INSERT INTO public.ingredient (name)
VALUES ('olives')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mediterranean salad'),
        (select max(id) from public.ingredient where name = 'olives'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Tuna salad', 'https://korpa.ba/product_uploads/QSJnwNbbYIJUf7DS8ZbwGvMYvGjQxa6P.jpg', 345,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Tuna salad'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Tuna')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tuna salad'),
        (select max(id) from public.ingredient where name = 'Tuna'));
INSERT INTO public.ingredient (name)
VALUES ('iceberg')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tuna salad'),
        (select max(id) from public.ingredient where name = 'iceberg'));
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
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tuna salad'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('olive')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tuna salad'),
        (select max(id) from public.ingredient where name = 'olive'));
INSERT INTO public.ingredient (name)
VALUES ('cucumber')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tuna salad'),
        (select max(id) from public.ingredient where name = 'cucumber'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Arugula salad', 'https://korpa.ba/product_uploads/WNyjTnsp9FlldjoVGh5uwhu2txryf9NT.jpg', 278,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Arugula salad'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Arugula')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Arugula salad'),
        (select max(id) from public.ingredient where name = 'Arugula'));
INSERT INTO public.ingredient (name)
VALUES ('sherry')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Arugula salad'),
        (select max(id) from public.ingredient where name = 'sherry'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Arugula salad'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Caesar salad with crispy chicken', 'https://korpa.ba/product_uploads/FWaU9eP0zApWrSWynHJX4RMuVWd4oycF.jpg',
        315, (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Caesar salad with crispy chicken'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar salad with crispy chicken'),
        (select max(id) from public.ingredient where name = 'Lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('corn')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar salad with crispy chicken'),
        (select max(id) from public.ingredient where name = 'corn'));
INSERT INTO public.ingredient (name)
VALUES ('chicken steak')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar salad with crispy chicken'),
        (select max(id) from public.ingredient where name = 'chicken steak'));
INSERT INTO public.ingredient (name)
VALUES ('iceberg')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar salad with crispy chicken'),
        (select max(id) from public.ingredient where name = 'iceberg'));
INSERT INTO public.ingredient (name)
VALUES ('croutons')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar salad with crispy chicken'),
        (select max(id) from public.ingredient where name = 'croutons'));
INSERT INTO public.ingredient (name)
VALUES ('dressing')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar salad with crispy chicken'),
        (select max(id) from public.ingredient where name = 'dressing'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Seafood salad', 'https://korpa.ba/product_uploads/XIC2ltmmfF4GbtC7NbaSymX2eHctfFTI.jpg', 435,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Seafood salad'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Seafood')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Seafood salad'),
        (select max(id) from public.ingredient where name = 'Seafood'));
INSERT INTO public.ingredient (name)
VALUES ('iceberg')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Seafood salad'),
        (select max(id) from public.ingredient where name = 'iceberg'));
INSERT INTO public.ingredient (name)
VALUES ('sherry')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Seafood salad'),
        (select max(id) from public.ingredient where name = 'sherry'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Seafood salad'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Seafood salad'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('dressing')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Seafood salad'),
        (select max(id) from public.ingredient where name = 'dressing'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Caesar salad with crispy squid', 'https://korpa.ba/product_uploads/yrYHVmH3eSTHTGB3vb5Tc5s1q6HXr8Cm.jpg', 503,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Caesar salad with crispy squid'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar salad with crispy squid'),
        (select max(id) from public.ingredient where name = 'Lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar salad with crispy squid'),
        (select max(id) from public.ingredient where name = 'bacon'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar salad with crispy squid'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('iceberg')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar salad with crispy squid'),
        (select max(id) from public.ingredient where name = 'iceberg'));
INSERT INTO public.ingredient (name)
VALUES ('squid')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar salad with crispy squid'),
        (select max(id) from public.ingredient where name = 'squid'));
INSERT INTO public.ingredient (name)
VALUES ('croutons')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar salad with crispy squid'),
        (select max(id) from public.ingredient where name = 'croutons'));
INSERT INTO public.ingredient (name)
VALUES ('dressing')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar salad with crispy squid'),
        (select max(id) from public.ingredient where name = 'dressing'));
INSERT INTO public.category (name, photo)
VALUES ('Starters', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Beer appetizer for 4 people', 'https://korpa.ba/product_uploads/zmHtqf0dvl45JMdDbext6Eik1dd4dkk3.jpeg', 1140,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Beer appetizer for 4 people'),
        (select max(id) from public.category where name = 'Starters'));
INSERT INTO public.ingredient (name)
VALUES ('Chicken wings')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Beer appetizer for 4 people'),
        (select max(id) from public.ingredient where name = 'Chicken wings'));
INSERT INTO public.ingredient (name)
VALUES ('zucchini chips')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Beer appetizer for 4 people'),
        (select max(id) from public.ingredient where name = 'zucchini chips'));
INSERT INTO public.ingredient (name)
VALUES ('fried onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Beer appetizer for 4 people'),
        (select max(id) from public.ingredient where name = 'fried onion'));
INSERT INTO public.ingredient (name)
VALUES ('fried chicken')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Beer appetizer for 4 people'),
        (select max(id) from public.ingredient where name = 'fried chicken'));
INSERT INTO public.ingredient (name)
VALUES ('fried olive')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Beer appetizer for 4 people'),
        (select max(id) from public.ingredient where name = 'fried olive'));
INSERT INTO public.ingredient (name)
VALUES ('chicken fingers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Beer appetizer for 4 people'),
        (select max(id) from public.ingredient where name = 'chicken fingers'));
INSERT INTO public.ingredient (name)
VALUES ('baked potato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Beer appetizer for 4 people'),
        (select max(id) from public.ingredient where name = 'baked potato'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Wine appetizer for 4 people', 'https://korpa.ba/product_uploads/YcyJWc0KGhTc8tkSTxdNeiH9d81HjbS1.jpg', 1230,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Wine appetizer for 4 people'),
        (select max(id) from public.category where name = 'Starters'));
INSERT INTO public.ingredient (name)
VALUES ('Dairy products')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Wine appetizer for 4 people'),
        (select max(id) from public.ingredient where name = 'Dairy products'));
INSERT INTO public.ingredient (name)
VALUES ('cured meats')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Wine appetizer for 4 people'),
        (select max(id) from public.ingredient where name = 'cured meats'));
INSERT INTO public.ingredient (name)
VALUES ('butter mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Wine appetizer for 4 people'),
        (select max(id) from public.ingredient where name = 'butter mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('fruit')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Wine appetizer for 4 people'),
        (select max(id) from public.ingredient where name = 'fruit'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Mixed plate', 'None', 1230, (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Mixed plate'),
        (select max(id) from public.category where name = 'Starters'));
INSERT INTO public.ingredient (name)
VALUES ('Dairy products')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mixed plate'),
        (select max(id) from public.ingredient where name = 'Dairy products'));
INSERT INTO public.ingredient (name)
VALUES ('cured meats')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mixed plate'),
        (select max(id) from public.ingredient where name = 'cured meats'));
INSERT INTO public.ingredient (name)
VALUES ('baked potatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mixed plate'),
        (select max(id) from public.ingredient where name = 'baked potatoes'));
INSERT INTO public.category (name, photo)
VALUES ('Chicken', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chicken steak with fries', 'https://korpa.ba/product_uploads/uHm9njuL6no1ytFQViuCNPWKXFFUjvIJ.jpg', 315,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chicken steak with fries'),
        (select max(id) from public.category where name = 'Chicken'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chicken with curry sauce', 'https://korpa.ba/product_uploads/OhNJM4D5ZWDCp5Zvo9mUuexvR5viFzGT.jpg', 353,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chicken with curry sauce'),
        (select max(id) from public.category where name = 'Chicken'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chicken in Peanut Sauce', 'https://korpa.ba/product_uploads/PgMHLg9jfgaxn7t30oiPgTQeY3SkMdRb.jpg', 375,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chicken in Peanut Sauce'),
        (select max(id) from public.category where name = 'Chicken'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Stuffed Chicken', 'https://korpa.ba/product_uploads/SqnbuLFFm3evPo109LsIBD9Bw0J4shGS.jpg', 443,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Stuffed Chicken'),
        (select max(id) from public.category where name = 'Chicken'));
INSERT INTO public.ingredient (name)
VALUES ('Steak')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Stuffed Chicken'),
        (select max(id) from public.ingredient where name = 'Steak'));
INSERT INTO public.ingredient (name)
VALUES ('cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Stuffed Chicken'),
        (select max(id) from public.ingredient where name = 'cheese'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Stuffed Chicken'),
        (select max(id) from public.ingredient where name = 'mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('prosciutto')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Stuffed Chicken'),
        (select max(id) from public.ingredient where name = 'prosciutto'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chicken in vegetables', 'https://korpa.ba/product_uploads/1zlEeruJFgylHbfBqXW9VrL5xShLYtAv.jpg', 353,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chicken in vegetables'),
        (select max(id) from public.category where name = 'Chicken'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chicken in white sauce', 'https://korpa.ba/product_uploads/bvfxB8TBokvhx5M8JT47QWhdUYYoYy8t.jpg', 353,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chicken in white sauce'),
        (select max(id) from public.category where name = 'Chicken'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Saltimbocca', 'https://korpa.ba/product_uploads/DBQEDCWOt1NUlAOklsgsSpBrDf8eli17.jpg', 435,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Saltimbocca'),
        (select max(id) from public.category where name = 'Chicken'));
INSERT INTO public.ingredient (name)
VALUES ('Chicken')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Saltimbocca'),
        (select max(id) from public.ingredient where name = 'Chicken'));
INSERT INTO public.ingredient (name)
VALUES ('hopla')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Saltimbocca'),
        (select max(id) from public.ingredient where name = 'hopla'));
INSERT INTO public.ingredient (name)
VALUES ('arugula')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Saltimbocca'),
        (select max(id) from public.ingredient where name = 'arugula'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Saltimbocca'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Saltimbocca'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.ingredient (name)
VALUES ('parsley')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Saltimbocca'),
        (select max(id) from public.ingredient where name = 'parsley'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Sweet & Hot', 'https://korpa.ba/product_uploads/LEFElFtvdC4ZWsoaRLsI2m3jFbVFC5Te.jpg', 375,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Sweet & Hot'),
        (select max(id) from public.category where name = 'Chicken'));
INSERT INTO public.ingredient (name)
VALUES ('Chicken')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Sweet & Hot'),
        (select max(id) from public.ingredient where name = 'Chicken'));
INSERT INTO public.ingredient (name)
VALUES ('beef prosciutto')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Sweet & Hot'),
        (select max(id) from public.ingredient where name = 'beef prosciutto'));
INSERT INTO public.ingredient (name)
VALUES ('pelat')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Sweet & Hot'),
        (select max(id) from public.ingredient where name = 'pelat'));
INSERT INTO public.ingredient (name)
VALUES ('hot sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Sweet & Hot'),
        (select max(id) from public.ingredient where name = 'hot sauce'));
INSERT INTO public.ingredient (name)
VALUES ('honey')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Sweet & Hot'),
        (select max(id) from public.ingredient where name = 'honey'));
INSERT INTO public.ingredient (name)
VALUES ('french fries')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Sweet & Hot'),
        (select max(id) from public.ingredient where name = 'french fries'));
INSERT INTO public.category (name, photo)
VALUES ('Pork', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Vienna schnitzel', 'https://korpa.ba/product_uploads/UK16c7eisOdHWjADfsYfN3ttPQ1v68gi.jpg', 375,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Vienna schnitzel'),
        (select max(id) from public.category where name = 'Pork'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Rib BBQ', 'https://korpa.ba/product_uploads/d95Zd9eH0Fgj6nu4LVFphVYi5IQYCEPa.jpg', 398,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Rib BBQ'),
        (select max(id) from public.category where name = 'Pork'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Stuffed Pork Fillet', 'https://korpa.ba/product_uploads/OzNcNvfkDKICItbkfRorjYQWzfnRcA3G.jpg', 443,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Stuffed Pork Fillet'),
        (select max(id) from public.category where name = 'Pork'));
INSERT INTO public.ingredient (name)
VALUES ('Mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Stuffed Pork Fillet'),
        (select max(id) from public.ingredient where name = 'Mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Stuffed Pork Fillet'),
        (select max(id) from public.ingredient where name = 'bacon'));
INSERT INTO public.ingredient (name)
VALUES ('cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Stuffed Pork Fillet'),
        (select max(id) from public.ingredient where name = 'cheese'));
INSERT INTO public.ingredient (name)
VALUES ('French fries')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Stuffed Pork Fillet'),
        (select max(id) from public.ingredient where name = 'French fries'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Pork Fillet', 'https://korpa.ba/product_uploads/XZAdE6LTtXmj4zquae9JrMY35goscigy.jpg', 420,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Pork Fillet'),
        (select max(id) from public.category where name = 'Pork'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Pork medallions', 'https://korpa.ba/product_uploads/ddcrE5tSUKrlxlLJJPLfQbKB4KGhSfS5.jpg', 435,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Pork medallions'),
        (select max(id) from public.category where name = 'Pork'));
INSERT INTO public.ingredient (name)
VALUES ('Medallions')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork medallions'),
        (select max(id) from public.ingredient where name = 'Medallions'));
INSERT INTO public.ingredient (name)
VALUES ('Espanol sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork medallions'),
        (select max(id) from public.ingredient where name = 'Espanol sauce'));
INSERT INTO public.category (name, photo)
VALUES ('Burgers', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Classic Burger', 'https://korpa.ba/product_uploads/ZDBiR1WqrvXjNF3UmYqVhgNfH8R3ByRd.jpg', 330,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Classic Burger'),
        (select max(id) from public.category where name = 'Burgers'));
INSERT INTO public.ingredient (name)
VALUES ('Pure beef')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Classic Burger'),
        (select max(id) from public.ingredient where name = 'Pure beef'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Classic Burger'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('cheddar')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Classic Burger'),
        (select max(id) from public.ingredient where name = 'cheddar'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Classic Burger'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('buns')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Classic Burger'),
        (select max(id) from public.ingredient where name = 'buns'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Classic Burger'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('potato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Classic Burger'),
        (select max(id) from public.ingredient where name = 'potato'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Revia Burger', 'https://korpa.ba/product_uploads/qXUUytQChP227QRjmZ03hS3BC4l228OX.jpg', 375,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Revia Burger'),
        (select max(id) from public.category where name = 'Burgers'));
INSERT INTO public.ingredient (name)
VALUES ('Pure beef')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Revia Burger'),
        (select max(id) from public.ingredient where name = 'Pure beef'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Revia Burger'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Revia Burger'),
        (select max(id) from public.ingredient where name = 'bacon'));
INSERT INTO public.ingredient (name)
VALUES ('cheddar')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Revia Burger'),
        (select max(id) from public.ingredient where name = 'cheddar'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Revia Burger'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Revia Burger'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('eggs')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Revia Burger'),
        (select max(id) from public.ingredient where name = 'eggs'));
INSERT INTO public.ingredient (name)
VALUES ('BBQ sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Revia Burger'),
        (select max(id) from public.ingredient where name = 'BBQ sauce'));
INSERT INTO public.ingredient (name)
VALUES ('buns')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Revia Burger'),
        (select max(id) from public.ingredient where name = 'buns'));
INSERT INTO public.ingredient (name)
VALUES ('potatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Revia Burger'),
        (select max(id) from public.ingredient where name = 'potatoes'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Jalapeno Burger', 'https://korpa.ba/product_uploads/zvPaiQ1JiAyQLVRPX5oxyfHTC98RdjQc.jpg', 330,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Jalapeno Burger'),
        (select max(id) from public.category where name = 'Burgers'));
INSERT INTO public.ingredient (name)
VALUES ('Pure beef')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Jalapeno Burger'),
        (select max(id) from public.ingredient where name = 'Pure beef'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Jalapeno Burger'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('cheddar')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Jalapeno Burger'),
        (select max(id) from public.ingredient where name = 'cheddar'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Jalapeno Burger'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('Jalapeno pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Jalapeno Burger'),
        (select max(id) from public.ingredient where name = 'Jalapeno pepper'));
INSERT INTO public.ingredient (name)
VALUES ('potato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Jalapeno Burger'),
        (select max(id) from public.ingredient where name = 'potato'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Rockstar Burger', 'https://korpa.ba/product_uploads/DUSIzV0awKIpeL9huLSKbc6TjD1BQzut.jpg', 360,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Rockstar Burger'),
        (select max(id) from public.category where name = 'Burgers'));
INSERT INTO public.ingredient (name)
VALUES ('Pure beef')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Rockstar Burger'),
        (select max(id) from public.ingredient where name = 'Pure beef'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Rockstar Burger'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('cheddar')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Rockstar Burger'),
        (select max(id) from public.ingredient where name = 'cheddar'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Rockstar Burger'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Rockstar Burger'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('potato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Rockstar Burger'),
        (select max(id) from public.ingredient where name = 'potato'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chicken burger', 'https://korpa.ba/product_uploads/UjH4hCFzOUh5GCPLunsrl0wUhMxU2eF5.jpg', 330,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chicken burger'),
        (select max(id) from public.category where name = 'Burgers'));
INSERT INTO public.ingredient (name)
VALUES ('Chicken burger')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken burger'),
        (select max(id) from public.ingredient where name = 'Chicken burger'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken burger'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('cheddar')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken burger'),
        (select max(id) from public.ingredient where name = 'cheddar'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken burger'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken burger'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('potato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken burger'),
        (select max(id) from public.ingredient where name = 'potato'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Big King Burger', 'https://korpa.ba/product_uploads/no2Qt4XfyO9qcc4fDWDokkolt14SmQls.jpg', 585,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Big King Burger'),
        (select max(id) from public.category where name = 'Burgers'));
INSERT INTO public.ingredient (name)
VALUES ('Pure beef')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Big King Burger'),
        (select max(id) from public.ingredient where name = 'Pure beef'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Big King Burger'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('pickles')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Big King Burger'),
        (select max(id) from public.ingredient where name = 'pickles'));
INSERT INTO public.ingredient (name)
VALUES ('cheddar')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Big King Burger'),
        (select max(id) from public.ingredient where name = 'cheddar'));
INSERT INTO public.ingredient (name)
VALUES ('red onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Big King Burger'),
        (select max(id) from public.ingredient where name = 'red onion'));
INSERT INTO public.ingredient (name)
VALUES ('vegetables')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Big King Burger'),
        (select max(id) from public.ingredient where name = 'vegetables'));
INSERT INTO public.ingredient (name)
VALUES ('dressing')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Big King Burger'),
        (select max(id) from public.ingredient where name = 'dressing'));
INSERT INTO public.ingredient (name)
VALUES ('potatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Big King Burger'),
        (select max(id) from public.ingredient where name = 'potatoes'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Crispy King Burger', 'https://korpa.ba/product_uploads/I3fuc45cMLUlh9s2llUKL8rl6KgAtzYR.jpg', 405,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Crispy King Burger'),
        (select max(id) from public.category where name = 'Burgers'));
INSERT INTO public.ingredient (name)
VALUES ('Crispy chicken steak')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Crispy King Burger'),
        (select max(id) from public.ingredient where name = 'Crispy chicken steak'));
INSERT INTO public.ingredient (name)
VALUES ('cheddar')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Crispy King Burger'),
        (select max(id) from public.ingredient where name = 'cheddar'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Crispy King Burger'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('red onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Crispy King Burger'),
        (select max(id) from public.ingredient where name = 'red onion'));
INSERT INTO public.ingredient (name)
VALUES ('vegetables')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Crispy King Burger'),
        (select max(id) from public.ingredient where name = 'vegetables'));
INSERT INTO public.ingredient (name)
VALUES ('potato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Crispy King Burger'),
        (select max(id) from public.ingredient where name = 'potato'));
INSERT INTO public.category (name, photo)
VALUES ('Burrito', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Tuna burrito', 'https://korpa.ba/product_uploads/w2a42aROD1n08wTysyjWHylzuvshUtBG.jpg', 330,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Tuna burrito'),
        (select max(id) from public.category where name = 'Burrito'));
INSERT INTO public.ingredient (name)
VALUES ('Tortilla')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tuna burrito'),
        (select max(id) from public.ingredient where name = 'Tortilla'));
INSERT INTO public.ingredient (name)
VALUES ('tuna')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tuna burrito'),
        (select max(id) from public.ingredient where name = 'tuna'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tuna burrito'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('corn')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tuna burrito'),
        (select max(id) from public.ingredient where name = 'corn'));
INSERT INTO public.ingredient (name)
VALUES ('olive')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tuna burrito'),
        (select max(id) from public.ingredient where name = 'olive'));
INSERT INTO public.ingredient (name)
VALUES ('red onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tuna burrito'),
        (select max(id) from public.ingredient where name = 'red onion'));
INSERT INTO public.ingredient (name)
VALUES ('mayonnaise')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tuna burrito'),
        (select max(id) from public.ingredient where name = 'mayonnaise'));
INSERT INTO public.ingredient (name)
VALUES ('french fries')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tuna burrito'),
        (select max(id) from public.ingredient where name = 'french fries'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Caesar Burrito', 'https://korpa.ba/product_uploads/jY8tJC9D8YNKxGGdNsHw74qt9zXAk0d7.jpg', 330,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Caesar Burrito'),
        (select max(id) from public.category where name = 'Burrito'));
INSERT INTO public.ingredient (name)
VALUES ('Tortilla')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar Burrito'),
        (select max(id) from public.ingredient where name = 'Tortilla'));
INSERT INTO public.ingredient (name)
VALUES ('steak')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar Burrito'),
        (select max(id) from public.ingredient where name = 'steak'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar Burrito'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('iceberg')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar Burrito'),
        (select max(id) from public.ingredient where name = 'iceberg'));
INSERT INTO public.ingredient (name)
VALUES ('corn')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar Burrito'),
        (select max(id) from public.ingredient where name = 'corn'));
INSERT INTO public.ingredient (name)
VALUES ('dressing')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar Burrito'),
        (select max(id) from public.ingredient where name = 'dressing'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar Burrito'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('sherry')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar Burrito'),
        (select max(id) from public.ingredient where name = 'sherry'));
INSERT INTO public.ingredient (name)
VALUES ('fries')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar Burrito'),
        (select max(id) from public.ingredient where name = 'fries'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Honey burrito', 'https://korpa.ba/product_uploads/ANOCCnmo5FQChbfKgCORAn08H5TGrlzF.jpg', 330,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Honey burrito'),
        (select max(id) from public.category where name = 'Burrito'));
INSERT INTO public.ingredient (name)
VALUES ('Tortilla')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Honey burrito'),
        (select max(id) from public.ingredient where name = 'Tortilla'));
INSERT INTO public.ingredient (name)
VALUES ('bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Honey burrito'),
        (select max(id) from public.ingredient where name = 'bacon'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Honey burrito'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Honey burrito'),
        (select max(id) from public.ingredient where name = 'cheese'));
INSERT INTO public.ingredient (name)
VALUES ('BBQ sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Honey burrito'),
        (select max(id) from public.ingredient where name = 'BBQ sauce'));
INSERT INTO public.ingredient (name)
VALUES ('corn')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Honey burrito'),
        (select max(id) from public.ingredient where name = 'corn'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Honey burrito'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('french fries')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Honey burrito'),
        (select max(id) from public.ingredient where name = 'french fries'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Mexican burrito', 'https://korpa.ba/product_uploads/yHN4X9R1bPcqn6sN0Xv1ITeluAHYbf2z.jpg', 330,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Mexican burrito'),
        (select max(id) from public.category where name = 'Burrito'));
INSERT INTO public.ingredient (name)
VALUES ('Tortilla')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mexican burrito'),
        (select max(id) from public.ingredient where name = 'Tortilla'));
INSERT INTO public.ingredient (name)
VALUES ('steak')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mexican burrito'),
        (select max(id) from public.ingredient where name = 'steak'));
INSERT INTO public.ingredient (name)
VALUES ('chili sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mexican burrito'),
        (select max(id) from public.ingredient where name = 'chili sauce'));
INSERT INTO public.ingredient (name)
VALUES ('corn')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mexican burrito'),
        (select max(id) from public.ingredient where name = 'corn'));
INSERT INTO public.ingredient (name)
VALUES ('cheddar')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mexican burrito'),
        (select max(id) from public.ingredient where name = 'cheddar'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mexican burrito'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('red pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mexican burrito'),
        (select max(id) from public.ingredient where name = 'red pepper'));
INSERT INTO public.ingredient (name)
VALUES ('french fries')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mexican burrito'),
        (select max(id) from public.ingredient where name = 'french fries'));
INSERT INTO public.category (name, photo)
VALUES ('Risotto', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chicken risotto', 'https://korpa.ba/product_uploads/Srfv82EOBA7vTlta7vvuGskIzuZRtkPP.jpg', 300,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chicken risotto'),
        (select max(id) from public.category where name = 'Risotto'));
INSERT INTO public.ingredient (name)
VALUES ('Chicken')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken risotto'),
        (select max(id) from public.ingredient where name = 'Chicken'));
INSERT INTO public.ingredient (name)
VALUES ('eggplant')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken risotto'),
        (select max(id) from public.ingredient where name = 'eggplant'));
INSERT INTO public.ingredient (name)
VALUES ('zucchini')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken risotto'),
        (select max(id) from public.ingredient where name = 'zucchini'));
INSERT INTO public.ingredient (name)
VALUES ('red pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken risotto'),
        (select max(id) from public.ingredient where name = 'red pepper'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken risotto'),
        (select max(id) from public.ingredient where name = 'mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken risotto'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('rice')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken risotto'),
        (select max(id) from public.ingredient where name = 'rice'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Boletus risotto', 'https://korpa.ba/product_uploads/KCEJXToWRxo1IHloKSRQEIazl9dXB14z.jpg', 398,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Boletus risotto'),
        (select max(id) from public.category where name = 'Risotto'));
INSERT INTO public.ingredient (name)
VALUES ('Rice')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Boletus risotto'),
        (select max(id) from public.ingredient where name = 'Rice'));
INSERT INTO public.ingredient (name)
VALUES ('porcini')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Boletus risotto'),
        (select max(id) from public.ingredient where name = 'porcini'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Boletus risotto'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Boletus risotto'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.ingredient (name)
VALUES ('parsley')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Boletus risotto'),
        (select max(id) from public.ingredient where name = 'parsley'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Primavera risotto', 'https://korpa.ba/product_uploads/6f2r3S58W35iSIveMFAyp3eckiF1W7Fi.jpg', 285,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Primavera risotto'),
        (select max(id) from public.category where name = 'Risotto'));
INSERT INTO public.ingredient (name)
VALUES ('Eggplant')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Primavera risotto'),
        (select max(id) from public.ingredient where name = 'Eggplant'));
INSERT INTO public.ingredient (name)
VALUES ('red pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Primavera risotto'),
        (select max(id) from public.ingredient where name = 'red pepper'));
INSERT INTO public.ingredient (name)
VALUES ('zucchini')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Primavera risotto'),
        (select max(id) from public.ingredient where name = 'zucchini'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Primavera risotto'),
        (select max(id) from public.ingredient where name = 'mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Primavera risotto'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('rice')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Primavera risotto'),
        (select max(id) from public.ingredient where name = 'rice'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Seafood Risotto', 'https://korpa.ba/product_uploads/203cc5cEQLe4F3K47cohRDo5yiVh9bRW.jpg', 435,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Seafood Risotto'),
        (select max(id) from public.category where name = 'Risotto'));
INSERT INTO public.ingredient (name)
VALUES ('Arborio rice')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Seafood Risotto'),
        (select max(id) from public.ingredient where name = 'Arborio rice'));
INSERT INTO public.ingredient (name)
VALUES ('seafood')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Seafood Risotto'),
        (select max(id) from public.ingredient where name = 'seafood'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Seafood Risotto'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.ingredient (name)
VALUES ('parsley')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Seafood Risotto'),
        (select max(id) from public.ingredient where name = 'parsley'));
INSERT INTO public.ingredient (name)
VALUES ('cherry tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Seafood Risotto'),
        (select max(id) from public.ingredient where name = 'cherry tomato'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Seafood Risotto'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.category (name, photo)
VALUES ('Pizza', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Margarita pizza', 'https://korpa.ba/product_uploads/wd4r0NjmroX0lMEWStAEpoI87VWL1Upf.jpg', 308,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Margarita pizza'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('Pelati')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Margarita pizza'),
        (select max(id) from public.ingredient where name = 'Pelati'));
INSERT INTO public.ingredient (name)
VALUES ('cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Margarita pizza'),
        (select max(id) from public.ingredient where name = 'cheese'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Fungi pizza', 'None', 315, (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Fungi pizza'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('Pelati')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fungi pizza'),
        (select max(id) from public.ingredient where name = 'Pelati'));
INSERT INTO public.ingredient (name)
VALUES ('cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fungi pizza'),
        (select max(id) from public.ingredient where name = 'cheese'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fungi pizza'),
        (select max(id) from public.ingredient where name = 'mushrooms'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Vesuvio Pizza', 'https://korpa.ba/product_uploads/wp0VsmNTEYrlymsQbKjuKbHqDmMteLmv.jpg', 315,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Vesuvio Pizza'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('Pelati')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vesuvio Pizza'),
        (select max(id) from public.ingredient where name = 'Pelati'));
INSERT INTO public.ingredient (name)
VALUES ('cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vesuvio Pizza'),
        (select max(id) from public.ingredient where name = 'cheese'));
INSERT INTO public.ingredient (name)
VALUES ('ham')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vesuvio Pizza'),
        (select max(id) from public.ingredient where name = 'ham'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Capricciosa pizza', 'https://korpa.ba/product_uploads/OFMsf4GrAF4oRrZxe4UtZxRSEpChriNr.jpg', 330,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Capricciosa pizza'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('Pelati')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Capricciosa pizza'),
        (select max(id) from public.ingredient where name = 'Pelati'));
INSERT INTO public.ingredient (name)
VALUES ('cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Capricciosa pizza'),
        (select max(id) from public.ingredient where name = 'cheese'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Capricciosa pizza'),
        (select max(id) from public.ingredient where name = 'mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('ham')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Capricciosa pizza'),
        (select max(id) from public.ingredient where name = 'ham'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Quattro formaggi pizza', 'https://korpa.ba/product_uploads/ATtLUlbIgnHJtvSMvEZzWmlCf3bbH4LH.jpg', 420,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Quattro formaggi pizza'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('Pelati')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quattro formaggi pizza'),
        (select max(id) from public.ingredient where name = 'Pelati'));
INSERT INTO public.ingredient (name)
VALUES ('blue cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quattro formaggi pizza'),
        (select max(id) from public.ingredient where name = 'blue cheese'));
INSERT INTO public.ingredient (name)
VALUES ('cheddar')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quattro formaggi pizza'),
        (select max(id) from public.ingredient where name = 'cheddar'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quattro formaggi pizza'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('edamer')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quattro formaggi pizza'),
        (select max(id) from public.ingredient where name = 'edamer'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Frutti di mare pizza', 'https://korpa.ba/product_uploads/8GtqPna1m0HlSE1iGNMzJ5sNcL3hU6Ey.jpg', 435,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Frutti di mare pizza'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('Seafood')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Frutti di mare pizza'),
        (select max(id) from public.ingredient where name = 'Seafood'));
INSERT INTO public.ingredient (name)
VALUES ('cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Frutti di mare pizza'),
        (select max(id) from public.ingredient where name = 'cheese'));
INSERT INTO public.ingredient (name)
VALUES ('pelate')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Frutti di mare pizza'),
        (select max(id) from public.ingredient where name = 'pelate'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Bacon pizza', 'https://korpa.ba/product_uploads/pf0YWqiKtkYgDrzAqiJH6JKRnSXr8Klc.jpeg', 345,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Bacon pizza'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('Pelati')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bacon pizza'),
        (select max(id) from public.ingredient where name = 'Pelati'));
INSERT INTO public.ingredient (name)
VALUES ('cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bacon pizza'),
        (select max(id) from public.ingredient where name = 'cheese'));
INSERT INTO public.ingredient (name)
VALUES ('bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bacon pizza'),
        (select max(id) from public.ingredient where name = 'bacon'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bacon pizza'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bacon pizza'),
        (select max(id) from public.ingredient where name = 'mushrooms'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Vegetarian pizza', 'https://korpa.ba/product_uploads/2lnDstYbf21zV999JuCXK1My5bHrfty6.jpg', 315,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Vegetarian pizza'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('Pelati')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetarian pizza'),
        (select max(id) from public.ingredient where name = 'Pelati'));
INSERT INTO public.ingredient (name)
VALUES ('vegetable cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetarian pizza'),
        (select max(id) from public.ingredient where name = 'vegetable cheese'));
INSERT INTO public.ingredient (name)
VALUES ('olives')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetarian pizza'),
        (select max(id) from public.ingredient where name = 'olives'));
INSERT INTO public.ingredient (name)
VALUES ('pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetarian pizza'),
        (select max(id) from public.ingredient where name = 'pepper'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetarian pizza'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetarian pizza'),
        (select max(id) from public.ingredient where name = 'mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('zucchini')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetarian pizza'),
        (select max(id) from public.ingredient where name = 'zucchini'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Pepperoni pizza', 'https://korpa.ba/product_uploads/zv3ZmpQ0cRftZ0x6Jo9OH8RL1og83Px5.jpg', 353,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Pepperoni pizza'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('Pelati')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pepperoni pizza'),
        (select max(id) from public.ingredient where name = 'Pelati'));
INSERT INTO public.ingredient (name)
VALUES ('cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pepperoni pizza'),
        (select max(id) from public.ingredient where name = 'cheese'));
INSERT INTO public.ingredient (name)
VALUES ('pepperoni')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pepperoni pizza'),
        (select max(id) from public.ingredient where name = 'pepperoni'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Prosciutto pizza', 'https://korpa.ba/product_uploads/OTEvc9oIQuW2trPwkUvRXIUKaHgXYPOP.jpg', 428,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Prosciutto pizza'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('Pelati')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Prosciutto pizza'),
        (select max(id) from public.ingredient where name = 'Pelati'));
INSERT INTO public.ingredient (name)
VALUES ('prosciutto')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Prosciutto pizza'),
        (select max(id) from public.ingredient where name = 'prosciutto'));
INSERT INTO public.ingredient (name)
VALUES ('cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Prosciutto pizza'),
        (select max(id) from public.ingredient where name = 'cheese'));
INSERT INTO public.ingredient (name)
VALUES ('arugula')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Prosciutto pizza'),
        (select max(id) from public.ingredient where name = 'arugula'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Tuna pizza', 'https://korpa.ba/product_uploads/L41eKgdfRq09KaEmQeVt6aRg3ZiSzxt6.jpeg', 338,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Tuna pizza'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('Pelati')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tuna pizza'),
        (select max(id) from public.ingredient where name = 'Pelati'));
INSERT INTO public.ingredient (name)
VALUES ('cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tuna pizza'),
        (select max(id) from public.ingredient where name = 'cheese'));
INSERT INTO public.ingredient (name)
VALUES ('tuna')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tuna pizza'),
        (select max(id) from public.ingredient where name = 'tuna'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tuna pizza'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Revija pizza', 'https://korpa.ba/product_uploads/kNkgSmP2IVB3zpQOejbX7wm3TPxMrBep.jpg', 480,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Revija pizza'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('Pelati')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Revija pizza'),
        (select max(id) from public.ingredient where name = 'Pelati'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Revija pizza'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('chicken steak')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Revija pizza'),
        (select max(id) from public.ingredient where name = 'chicken steak'));
INSERT INTO public.ingredient (name)
VALUES ('prosciutto')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Revija pizza'),
        (select max(id) from public.ingredient where name = 'prosciutto'));
INSERT INTO public.ingredient (name)
VALUES ('arugula')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Revija pizza'),
        (select max(id) from public.ingredient where name = 'arugula'));
INSERT INTO public.ingredient (name)
VALUES ('BBQ')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Revija pizza'),
        (select max(id) from public.ingredient where name = 'BBQ'));
INSERT INTO public.category (name, photo)
VALUES ('Breads', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Buns with sour cream and prosciutto', 'https://korpa.ba/product_uploads/K2ccaiRUYr6Ly8mZ3pfvR7u7s1n1CLBr.jpg',
        285, (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Buns with sour cream and prosciutto'),
        (select max(id) from public.category where name = 'Breads'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Buns with sour cream and parsley', 'https://korpa.ba/product_uploads/sA6eF5SDvdyPxiScCT5qQnEXb353ZtQu.jpg',
        225, (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Buns with sour cream and parsley'),
        (select max(id) from public.category where name = 'Breads'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Buns with mozzarella and garlic', 'None', 225,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Buns with mozzarella and garlic'),
        (select max(id) from public.category where name = 'Breads'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Buns with mozzarella and prosciutto', 'https://korpa.ba/product_uploads/0IAeLGZ9lvuL0zBD6zmRhUtyRIXp61QK.jpg',
        323, (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Buns with mozzarella and prosciutto'),
        (select max(id) from public.category where name = 'Breads'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Roll with garlick and butter', 'https://korpa.ba/product_uploads/suNEtpXXfSrOzMt6nL4OsUj8Ojd4LYJE.jpg', 173,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Roll with garlick and butter'),
        (select max(id) from public.category where name = 'Breads'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Furnarini with sesame', 'None', 150, (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Furnarini with sesame'),
        (select max(id) from public.category where name = 'Breads'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Furnarini with cheese and bacon', 'https://korpa.ba/product_uploads/lm3L5a9AGN2XRwnfhq4X1avtG87lqgTw.jpg', 255,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Furnarini with cheese and bacon'),
        (select max(id) from public.category where name = 'Breads'));
INSERT INTO public.category (name, photo)
VALUES ('Tacos', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Tacos', 'https://korpa.ba/product_uploads/FKWacKVBvtRtj2ZKxflyA139AYOXtxhZ.jpg', 405,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Tacos'),
        (select max(id) from public.category where name = 'Tacos'));
INSERT INTO public.ingredient (name)
VALUES ('Tortilla')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tacos'),
        (select max(id) from public.ingredient where name = 'Tortilla'));
INSERT INTO public.ingredient (name)
VALUES ('chicken steak')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tacos'),
        (select max(id) from public.ingredient where name = 'chicken steak'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tacos'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('iceberg')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tacos'),
        (select max(id) from public.ingredient where name = 'iceberg'));
INSERT INTO public.ingredient (name)
VALUES ('cheddar')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tacos'),
        (select max(id) from public.ingredient where name = 'cheddar'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tacos'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tacos'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('parsley')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tacos'),
        (select max(id) from public.ingredient where name = 'parsley'));
INSERT INTO public.ingredient (name)
VALUES ('jalapeno peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tacos'),
        (select max(id) from public.ingredient where name = 'jalapeno peppers'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chicken quesadilla', 'https://korpa.ba/product_uploads/Tai2GqfNGKz13wTHMoxT9T9cnJmiZ9mg.jpg', 330,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chicken quesadilla'),
        (select max(id) from public.category where name = 'Tacos'));
INSERT INTO public.ingredient (name)
VALUES ('Tortilla')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken quesadilla'),
        (select max(id) from public.ingredient where name = 'Tortilla'));
INSERT INTO public.ingredient (name)
VALUES ('chicken steak')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken quesadilla'),
        (select max(id) from public.ingredient where name = 'chicken steak'));
INSERT INTO public.ingredient (name)
VALUES ('edamer')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken quesadilla'),
        (select max(id) from public.ingredient where name = 'edamer'));
INSERT INTO public.ingredient (name)
VALUES ('vegetables')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken quesadilla'),
        (select max(id) from public.ingredient where name = 'vegetables'));
INSERT INTO public.ingredient (name)
VALUES ('spices')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken quesadilla'),
        (select max(id) from public.ingredient where name = 'spices'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Vegetable Quesadilla', 'https://korpa.ba/product_uploads/d5YmxdmV4yRnISQV1YzN9BBhVbc1aQPZ.jpg', 330,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Vegetable Quesadilla'),
        (select max(id) from public.category where name = 'Tacos'));
INSERT INTO public.ingredient (name)
VALUES ('Tortilla')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetable Quesadilla'),
        (select max(id) from public.ingredient where name = 'Tortilla'));
INSERT INTO public.ingredient (name)
VALUES ('edamer')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetable Quesadilla'),
        (select max(id) from public.ingredient where name = 'edamer'));
INSERT INTO public.ingredient (name)
VALUES ('vegetables')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetable Quesadilla'),
        (select max(id) from public.ingredient where name = 'vegetables'));
INSERT INTO public.ingredient (name)
VALUES ('spice')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetable Quesadilla'),
        (select max(id) from public.ingredient where name = 'spice'));
INSERT INTO public.category (name, photo)
VALUES ('Paella', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chicken Paella for 2 people', 'https://korpa.ba/product_uploads/Pb8gmSdREcynTnRIKsV4M2EgR8P8Fyfz.jpg', 675,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chicken Paella for 2 people'),
        (select max(id) from public.category where name = 'Paella'));
INSERT INTO public.ingredient (name)
VALUES ('Rice')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Paella for 2 people'),
        (select max(id) from public.ingredient where name = 'Rice'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Paella for 2 people'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('carrot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Paella for 2 people'),
        (select max(id) from public.ingredient where name = 'carrot'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Paella for 2 people'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.ingredient (name)
VALUES ('red pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Paella for 2 people'),
        (select max(id) from public.ingredient where name = 'red pepper'));
INSERT INTO public.ingredient (name)
VALUES ('saffron')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Paella for 2 people'),
        (select max(id) from public.ingredient where name = 'saffron'));
INSERT INTO public.ingredient (name)
VALUES ('chicken meat')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Paella for 2 people'),
        (select max(id) from public.ingredient where name = 'chicken meat'));
INSERT INTO public.ingredient (name)
VALUES ('white wine')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Paella for 2 people'),
        (select max(id) from public.ingredient where name = 'white wine'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Seafood Paella for 2 people', 'https://korpa.ba/product_uploads/SkGZvjmBrmgGq1U8t8xKA1DjYI3g4sJv.jpeg', 1140,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Seafood Paella for 2 people'),
        (select max(id) from public.category where name = 'Paella'));
INSERT INTO public.ingredient (name)
VALUES ('Rice')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Seafood Paella for 2 people'),
        (select max(id) from public.ingredient where name = 'Rice'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Seafood Paella for 2 people'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('carrot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Seafood Paella for 2 people'),
        (select max(id) from public.ingredient where name = 'carrot'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Seafood Paella for 2 people'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.ingredient (name)
VALUES ('red pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Seafood Paella for 2 people'),
        (select max(id) from public.ingredient where name = 'red pepper'));
INSERT INTO public.ingredient (name)
VALUES ('saffron')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Seafood Paella for 2 people'),
        (select max(id) from public.ingredient where name = 'saffron'));
INSERT INTO public.ingredient (name)
VALUES ('seafood')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Seafood Paella for 2 people'),
        (select max(id) from public.ingredient where name = 'seafood'));
INSERT INTO public.ingredient (name)
VALUES ('white wine')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Seafood Paella for 2 people'),
        (select max(id) from public.ingredient where name = 'white wine'));
INSERT INTO public.category (name, photo)
VALUES ('Pasta', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Parma pasta', 'https://korpa.ba/product_uploads/OvVrBLH3QsWDPdipxEbrxoUqsCHCEwhE.jpg', 300,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Parma pasta'),
        (select max(id) from public.category where name = 'Pasta'));
INSERT INTO public.ingredient (name)
VALUES ('Prosciutto')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Parma pasta'),
        (select max(id) from public.ingredient where name = 'Prosciutto'));
INSERT INTO public.ingredient (name)
VALUES ('pelati')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Parma pasta'),
        (select max(id) from public.ingredient where name = 'pelati'));
INSERT INTO public.ingredient (name)
VALUES ('hopla')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Parma pasta'),
        (select max(id) from public.ingredient where name = 'hopla'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Parma pasta'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Parma pasta'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Fungi pasta', 'https://korpa.ba/product_uploads/qCMe8ypsXQ9RNDAottVIt5Els99eNAvP.jpg', 315,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Fungi pasta'),
        (select max(id) from public.category where name = 'Pasta'));
INSERT INTO public.ingredient (name)
VALUES ('Mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fungi pasta'),
        (select max(id) from public.ingredient where name = 'Mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('hopla')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fungi pasta'),
        (select max(id) from public.ingredient where name = 'hopla'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fungi pasta'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fungi pasta'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Arabiata pasta', 'https://korpa.ba/product_uploads/LuOZb0xHYr8pHUn0M307hfqNJMTkQGbH.jpg', 278,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Arabiata pasta'),
        (select max(id) from public.category where name = 'Pasta'));
INSERT INTO public.ingredient (name)
VALUES ('Red pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Arabiata pasta'),
        (select max(id) from public.ingredient where name = 'Red pepper'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Arabiata pasta'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('olives')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Arabiata pasta'),
        (select max(id) from public.ingredient where name = 'olives'));
INSERT INTO public.ingredient (name)
VALUES ('olive oil')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Arabiata pasta'),
        (select max(id) from public.ingredient where name = 'olive oil'));
INSERT INTO public.ingredient (name)
VALUES ('parsley')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Arabiata pasta'),
        (select max(id) from public.ingredient where name = 'parsley'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Arabiata pasta'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Arabiata pasta'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Carbonara pasta', 'https://korpa.ba/product_uploads/hupqU5MEsE7OaxZradTyJBIgDCNCeJb0.jpg', 315,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Carbonara pasta'),
        (select max(id) from public.category where name = 'Pasta'));
INSERT INTO public.ingredient (name)
VALUES ('Bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Carbonara pasta'),
        (select max(id) from public.ingredient where name = 'Bacon'));
INSERT INTO public.ingredient (name)
VALUES ('hops')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Carbonara pasta'),
        (select max(id) from public.ingredient where name = 'hops'));
INSERT INTO public.ingredient (name)
VALUES ('eggs')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Carbonara pasta'),
        (select max(id) from public.ingredient where name = 'eggs'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Carbonara pasta'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Carbonara pasta'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Pesto pasta', 'https://korpa.ba/product_uploads/o11DWmFy2rFna1u3oLRL7VMBGq2m75xy.jpg', 300,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Pesto pasta'),
        (select max(id) from public.category where name = 'Pasta'));
INSERT INTO public.ingredient (name)
VALUES ('Garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pesto pasta'),
        (select max(id) from public.ingredient where name = 'Garlic'));
INSERT INTO public.ingredient (name)
VALUES ('walnuts')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pesto pasta'),
        (select max(id) from public.ingredient where name = 'walnuts'));
INSERT INTO public.ingredient (name)
VALUES ('hopla')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pesto pasta'),
        (select max(id) from public.ingredient where name = 'hopla'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pesto pasta'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Basil paste', 'https://korpa.ba/product_uploads/s6qRRb3fvYTLywnhn6eubDNeuXQLjV0Z.jpg', 308,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Basil paste'),
        (select max(id) from public.category where name = 'Pasta'));
INSERT INTO public.ingredient (name)
VALUES ('Pelati')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Basil paste'),
        (select max(id) from public.ingredient where name = 'Pelati'));
INSERT INTO public.ingredient (name)
VALUES ('basil')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Basil paste'),
        (select max(id) from public.ingredient where name = 'basil'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Basil paste'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Basil paste'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Seafood pasta', 'https://korpa.ba/product_uploads/AtYS9pn1YIbf4hsk4XTPLa3zNUpf9FHR.jpg', 398,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Seafood pasta'),
        (select max(id) from public.category where name = 'Pasta'));
INSERT INTO public.ingredient (name)
VALUES ('Seafood')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Seafood pasta'),
        (select max(id) from public.ingredient where name = 'Seafood'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Seafood pasta'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.ingredient (name)
VALUES ('parsley')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Seafood pasta'),
        (select max(id) from public.ingredient where name = 'parsley'));
INSERT INTO public.ingredient (name)
VALUES ('pelate')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Seafood pasta'),
        (select max(id) from public.ingredient where name = 'pelate'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Seafood pasta'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Boletus pasta', 'https://korpa.ba/product_uploads/Cg1rNzkI4X9Sf3DmMDHNkA91YRlASjPQ.jpg', 353,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Boletus pasta'),
        (select max(id) from public.category where name = 'Pasta'));
INSERT INTO public.ingredient (name)
VALUES ('Cherry tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Boletus pasta'),
        (select max(id) from public.ingredient where name = 'Cherry tomato'));
INSERT INTO public.ingredient (name)
VALUES ('porcini')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Boletus pasta'),
        (select max(id) from public.ingredient where name = 'porcini'));
INSERT INTO public.ingredient (name)
VALUES ('butter')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Boletus pasta'),
        (select max(id) from public.ingredient where name = 'butter'));
INSERT INTO public.ingredient (name)
VALUES ('wine')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Boletus pasta'),
        (select max(id) from public.ingredient where name = 'wine'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Boletus pasta'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Boletus pasta'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('4 types of cheese paste', 'https://korpa.ba/product_uploads/W0ZmrNZNM13iggp9lfGFtDT5HgEfROuf.jpg', 330,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = '4 types of cheese paste'),
        (select max(id) from public.category where name = 'Pasta'));
INSERT INTO public.ingredient (name)
VALUES ('Edamer')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = '4 types of cheese paste'),
        (select max(id) from public.ingredient where name = 'Edamer'));
INSERT INTO public.ingredient (name)
VALUES ('cheddar')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = '4 types of cheese paste'),
        (select max(id) from public.ingredient where name = 'cheddar'));
INSERT INTO public.ingredient (name)
VALUES ('blue cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = '4 types of cheese paste'),
        (select max(id) from public.ingredient where name = 'blue cheese'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = '4 types of cheese paste'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Italian pasta', 'https://korpa.ba/product_uploads/NfobTL4JcSQ6bkfUXBCuCNRQAEyHhmDo.jpg', 315,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Italian pasta'),
        (select max(id) from public.category where name = 'Pasta'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Italian pasta'),
        (select max(id) from public.ingredient where name = 'Tomato'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Italian pasta'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Italian pasta'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.ingredient (name)
VALUES ('parsley')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Italian pasta'),
        (select max(id) from public.ingredient where name = 'parsley'));
INSERT INTO public.ingredient (name)
VALUES ('butter')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Italian pasta'),
        (select max(id) from public.ingredient where name = 'butter'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Italian pasta'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Alio Olio pasta', 'https://korpa.ba/product_uploads/62cpj9mXsNM9JFGuYu34FVYzC8h7AcO7.jpg', 300,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Alio Olio pasta'),
        (select max(id) from public.category where name = 'Pasta'));
INSERT INTO public.ingredient (name)
VALUES ('Spaghetti')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Alio Olio pasta'),
        (select max(id) from public.ingredient where name = 'Spaghetti'));
INSERT INTO public.ingredient (name)
VALUES ('olive oil')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Alio Olio pasta'),
        (select max(id) from public.ingredient where name = 'olive oil'));
INSERT INTO public.ingredient (name)
VALUES ('mild pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Alio Olio pasta'),
        (select max(id) from public.ingredient where name = 'mild pepper'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Alio Olio pasta'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.ingredient (name)
VALUES ('parsley')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Alio Olio pasta'),
        (select max(id) from public.ingredient where name = 'parsley'));
INSERT INTO public.ingredient (name)
VALUES ('pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Alio Olio pasta'),
        (select max(id) from public.ingredient where name = 'pepper'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Spaghetti Bolognese', 'https://korpa.ba/product_uploads/H7RXQDLkVFpNbK5ScTeWra444L5G6UE5.jpg', 368,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
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
VALUES ('minced beef meat')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spaghetti Bolognese'),
        (select max(id) from public.ingredient where name = 'minced beef meat'));
INSERT INTO public.ingredient (name)
VALUES ('pelate')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spaghetti Bolognese'),
        (select max(id) from public.ingredient where name = 'pelate'));
INSERT INTO public.category (name, photo)
VALUES ('Pastrmajlija', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Homemade chicken pastrmajlija', 'https://korpa.ba/product_uploads/V9ml8jZgKam1GX1x1Mf4Xgk0t4dwarNR.jpg', 375,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Homemade chicken pastrmajlija'),
        (select max(id) from public.category where name = 'Pastrmajlija'));
INSERT INTO public.ingredient (name)
VALUES ('Chicken')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Homemade chicken pastrmajlija'),
        (select max(id) from public.ingredient where name = 'Chicken'));
INSERT INTO public.ingredient (name)
VALUES ('bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Homemade chicken pastrmajlija'),
        (select max(id) from public.ingredient where name = 'bacon'));
INSERT INTO public.ingredient (name)
VALUES ('pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Homemade chicken pastrmajlija'),
        (select max(id) from public.ingredient where name = 'pepper'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Homemade pork pastrmajlija', 'https://korpa.ba/product_uploads/caEkegX2H9eFOCdcdKumnTR4I67Kxw1t.jpg', 375,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Homemade pork pastrmajlija'),
        (select max(id) from public.category where name = 'Pastrmajlija'));
INSERT INTO public.ingredient (name)
VALUES ('Pork meat')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Homemade pork pastrmajlija'),
        (select max(id) from public.ingredient where name = 'Pork meat'));
INSERT INTO public.ingredient (name)
VALUES ('bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Homemade pork pastrmajlija'),
        (select max(id) from public.ingredient where name = 'bacon'));
INSERT INTO public.ingredient (name)
VALUES ('pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Homemade pork pastrmajlija'),
        (select max(id) from public.ingredient where name = 'pepper'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Veterinarian pastrmajlija', 'https://korpa.ba/product_uploads/OSB5fST0T5eLTyLz7vs9oasTIFoAxyNd.jpg', 353,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Veterinarian pastrmajlija'),
        (select max(id) from public.category where name = 'Pastrmajlija'));
INSERT INTO public.ingredient (name)
VALUES ('Vegetable cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Veterinarian pastrmajlija'),
        (select max(id) from public.ingredient where name = 'Vegetable cheese'));
INSERT INTO public.ingredient (name)
VALUES ('olive')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Veterinarian pastrmajlija'),
        (select max(id) from public.ingredient where name = 'olive'));
INSERT INTO public.ingredient (name)
VALUES ('pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Veterinarian pastrmajlija'),
        (select max(id) from public.ingredient where name = 'pepper'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Veterinarian pastrmajlija'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Veterinarian pastrmajlija'),
        (select max(id) from public.ingredient where name = 'mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chicken pastrmajlija', 'https://korpa.ba/product_uploads/zlZqyt3lKpMQIwawKlW4WWphGh5jCWfG.jpg', 353,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chicken pastrmajlija'),
        (select max(id) from public.category where name = 'Pastrmajlija'));
INSERT INTO public.ingredient (name)
VALUES ('Chicken meat')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken pastrmajlija'),
        (select max(id) from public.ingredient where name = 'Chicken meat'));
INSERT INTO public.ingredient (name)
VALUES ('pepperoni')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken pastrmajlija'),
        (select max(id) from public.ingredient where name = 'pepperoni'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Pork pastrmajlija', 'https://korpa.ba/product_uploads/38VHVs2Qxd7ioXVsHnO6a0qeCBiZkYAG.jpg', 353,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Pork pastrmajlija'),
        (select max(id) from public.category where name = 'Pastrmajlija'));
INSERT INTO public.ingredient (name)
VALUES ('Pork meat')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork pastrmajlija'),
        (select max(id) from public.ingredient where name = 'Pork meat'));
INSERT INTO public.ingredient (name)
VALUES ('pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork pastrmajlija'),
        (select max(id) from public.ingredient where name = 'pepper'));
INSERT INTO public.category (name, photo)
VALUES ('Desserts', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Lava Cake', 'https://korpa.ba/product_uploads/2uIGTZCUyeP3ogexBaBJFS95hERjnMOq.jpg', 263,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Lava Cake'),
        (select max(id) from public.category where name = 'Desserts'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Waffle of choice', 'https://korpa.ba/product_uploads/c5sJqFeT4TRKZq3huSgkkDhNJBUCN0Om.jpg', 263,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Waffle of choice'),
        (select max(id) from public.category where name = 'Desserts'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Pancake with honey and walnuts', 'None', 233,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Pancake with honey and walnuts'),
        (select max(id) from public.category where name = 'Desserts'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Pancake of choice', 'https://korpa.ba/product_uploads/2V0IAIDmW6ta7lz6APfk8SuACDyRpseg.jpg', 225,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Pancake of choice'),
        (select max(id) from public.category where name = 'Desserts'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Mia Leve', 'https://korpa.ba/product_uploads/otzoivCw8YnzfbhLbxAas1M52nFHquad.jpg', 263,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Mia Leve'),
        (select max(id) from public.category where name = 'Desserts'));
INSERT INTO public.ingredient (name)
VALUES ('Figs')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mia Leve'),
        (select max(id) from public.ingredient where name = 'Figs'));
INSERT INTO public.ingredient (name)
VALUES ('vanilla ice cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mia Leve'),
        (select max(id) from public.ingredient where name = 'vanilla ice cream'));
INSERT INTO public.ingredient (name)
VALUES ('walnuts')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mia Leve'),
        (select max(id) from public.ingredient where name = 'walnuts'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Churros', 'https://korpa.ba/product_uploads/DkzlFpMHKrrZx4jcQx1DpjUxborHWbTC.jpg', 218,
        (select max(id) from public.restaurant where name = 'Revija Bar & Food'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Churros'),
        (select max(id) from public.category where name = 'Desserts'));