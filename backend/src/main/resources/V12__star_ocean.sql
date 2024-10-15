INSERT INTO public.location (number, street)
VALUES ('13,', 'SS Cyril and Methodius');
INSERT INTO public.restaurant (average_rating, delivery_time, logo, name, photo, location_id)
VALUES (0, '50-60 min', 'assets/images/star_ocean.png', 'Star Ocean',
        'https://korpa.ba/restaurant_uploads/2R7s9K38D0qqTpAbhyoiqEOqfgbjVeWI.jpg',
        (select max(id) from public.location));
INSERT INTO public.users (email, name, password, phone, surname, username, role)
VALUES ('star_ocean_employee@mail.com', 'Employee',
        '$2a$10$VAlO0DtwWX42GHzGGM0DHOIx2kLX1EAhLwaTrXwEsj5n5K9Lr7EQO', '071234567', 'Star Ocean',
        'star_ocean_employee', 'employee');
INSERT INTO public.restaurant_employee (user_id, restaurant_id)
VALUES ((select max(user_id) from public.users), (select max(id) from public.restaurant));
INSERT INTO public.category (name, photo)
VALUES ('Vegetarian', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('FRIED CHINESE VEGGIES WITH SEAFOOD SAUCE',
        'https://korpa.ba/product_uploads/pqVOxo0sDgwIvSu2TUt24s3fpNk2xhbH.jpg', 390,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'FRIED CHINESE VEGGIES WITH SEAFOOD SAUCE'),
        (select max(id) from public.category where name = 'Vegetarian'));
INSERT INTO public.ingredient (name)
VALUES ('Lotus root')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FRIED CHINESE VEGGIES WITH SEAFOOD SAUCE'),
        (select max(id) from public.ingredient where name = 'Lotus root'));
INSERT INTO public.ingredient (name)
VALUES ('Bamboo')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FRIED CHINESE VEGGIES WITH SEAFOOD SAUCE'),
        (select max(id) from public.ingredient where name = 'Bamboo'));
INSERT INTO public.ingredient (name)
VALUES ('Carrot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FRIED CHINESE VEGGIES WITH SEAFOOD SAUCE'),
        (select max(id) from public.ingredient where name = 'Carrot'));
INSERT INTO public.ingredient (name)
VALUES ('Broccoli and Chinese mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FRIED CHINESE VEGGIES WITH SEAFOOD SAUCE'),
        (select max(id) from public.ingredient where name = 'Broccoli and Chinese mushrooms'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('FRIED BROCCOLI', 'https://korpa.ba/product_uploads/6yZ5gORhrZEUZ5iJ3uvi15LjV4EV3oYn.jpg', 320,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'FRIED BROCCOLI'),
        (select max(id) from public.category where name = 'Vegetarian'));
INSERT INTO public.ingredient (name)
VALUES ('Pre-cooked broccoli and little fried')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FRIED BROCCOLI'),
        (select max(id) from public.ingredient where name = 'Pre-cooked broccoli and little fried'));
INSERT INTO public.ingredient (name)
VALUES ('decorated with carrots')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FRIED BROCCOLI'),
        (select max(id) from public.ingredient where name = 'decorated with carrots'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('FRIED MUSHROOMS WITH SEAFOOD SAUCE', 'https://korpa.ba/product_uploads/UoIlgQEkpsSy4DhtMpSxQP65slvHXDsB.jpg',
        320, (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'FRIED MUSHROOMS WITH SEAFOOD SAUCE'),
        (select max(id) from public.category where name = 'Vegetarian'));
INSERT INTO public.ingredient (name)
VALUES ('Fresh mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FRIED MUSHROOMS WITH SEAFOOD SAUCE'),
        (select max(id) from public.ingredient where name = 'Fresh mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('fried in soy sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FRIED MUSHROOMS WITH SEAFOOD SAUCE'),
        (select max(id) from public.ingredient where name = 'fried in soy sauce'));
INSERT INTO public.ingredient (name)
VALUES ('decorated with carrots. They can be breaded without sauce and vegetables')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FRIED MUSHROOMS WITH SEAFOOD SAUCE'), (select max(id)
                                                                                              from public.ingredient
                                                                                              where name =
                                                                                                    'decorated with carrots. They can be breaded without sauce and vegetables'));
INSERT INTO public.ingredient (name)
VALUES ('depending on the desire of the guest')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FRIED MUSHROOMS WITH SEAFOOD SAUCE'),
        (select max(id) from public.ingredient where name = 'depending on the desire of the guest'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('FRIES WITH SAUCE', 'https://korpa.ba/product_uploads/U0LnUM42Mik5Vn60NsXwQG2OP2Q9GXzQ.jpg', 280,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'FRIES WITH SAUCE'),
        (select max(id) from public.category where name = 'Vegetarian'));
INSERT INTO public.ingredient (name)
VALUES ('Potatoes are pre-cooked')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FRIES WITH SAUCE'),
        (select max(id) from public.ingredient where name = 'Potatoes are pre-cooked'));
INSERT INTO public.ingredient (name)
VALUES ('fried in soy sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FRIES WITH SAUCE'),
        (select max(id) from public.ingredient where name = 'fried in soy sauce'));
INSERT INTO public.ingredient (name)
VALUES ('decorated with carrots and peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FRIES WITH SAUCE'),
        (select max(id) from public.ingredient where name = 'decorated with carrots and peppers'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('FRIED EGGPLANT', 'https://korpa.ba/product_uploads/niBuP9UonqQ8BFn9oFP3PTUau3s8ggpN.jpg', 320,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'FRIED EGGPLANT'),
        (select max(id) from public.category where name = 'Vegetarian'));
INSERT INTO public.ingredient (name)
VALUES ('The blue tomato is chopped into pieces')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FRIED EGGPLANT'),
        (select max(id) from public.ingredient where name = 'The blue tomato is chopped into pieces'));
INSERT INTO public.ingredient (name)
VALUES ('wrapped in soy sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FRIED EGGPLANT'),
        (select max(id) from public.ingredient where name = 'wrapped in soy sauce'));
INSERT INTO public.ingredient (name)
VALUES ('crispy and juicy')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FRIED EGGPLANT'),
        (select max(id) from public.ingredient where name = 'crispy and juicy'));
INSERT INTO public.ingredient (name)
VALUES ('decorated with carrots')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FRIED EGGPLANT'),
        (select max(id) from public.ingredient where name = 'decorated with carrots'));
INSERT INTO public.ingredient (name)
VALUES ('peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FRIED EGGPLANT'),
        (select max(id) from public.ingredient where name = 'peppers'));
INSERT INTO public.ingredient (name)
VALUES ('cabbage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FRIED EGGPLANT'),
        (select max(id) from public.ingredient where name = 'cabbage'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('FRIED VEGGIES IN CHINESE WAY', 'https://korpa.ba/product_uploads/UvlWkohGjiK9H4xRlTlJTz3L729Xm55p.jpg', 280,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'FRIED VEGGIES IN CHINESE WAY'),
        (select max(id) from public.category where name = 'Vegetarian'));
INSERT INTO public.ingredient (name)
VALUES ('rich in seasonal vegetables')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FRIED VEGGIES IN CHINESE WAY'),
        (select max(id) from public.ingredient where name = 'rich in seasonal vegetables'));
INSERT INTO public.ingredient (name)
VALUES ('carrots')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FRIED VEGGIES IN CHINESE WAY'),
        (select max(id) from public.ingredient where name = 'carrots'));
INSERT INTO public.ingredient (name)
VALUES ('peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FRIED VEGGIES IN CHINESE WAY'),
        (select max(id) from public.ingredient where name = 'peppers'));
INSERT INTO public.ingredient (name)
VALUES ('cabbage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FRIED VEGGIES IN CHINESE WAY'),
        (select max(id) from public.ingredient where name = 'cabbage'));
INSERT INTO public.ingredient (name)
VALUES ('broccoli')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FRIED VEGGIES IN CHINESE WAY'),
        (select max(id) from public.ingredient where name = 'broccoli'));
INSERT INTO public.ingredient (name)
VALUES ('zucchini')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FRIED VEGGIES IN CHINESE WAY'),
        (select max(id) from public.ingredient where name = 'zucchini'));
INSERT INTO public.ingredient (name)
VALUES ('black and white Chinese mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FRIED VEGGIES IN CHINESE WAY'),
        (select max(id) from public.ingredient where name = 'black and white Chinese mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('fresh mushrooms and bamboo. All vegetables are pre-cooked and then lightly fried')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FRIED VEGGIES IN CHINESE WAY'), (select max(id)
                                                                                        from public.ingredient
                                                                                        where name =
                                                                                              'fresh mushrooms and bamboo. All vegetables are pre-cooked and then lightly fried'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('BROCCOLI WITH CHINESE MUSHROOMS', 'https://korpa.ba/product_uploads/dT2o8iR2yv6zePfeNorICnBuEySNIbYM.jpg', 420,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'BROCCOLI WITH CHINESE MUSHROOMS'),
        (select max(id) from public.category where name = 'Vegetarian'));
INSERT INTO public.ingredient (name)
VALUES ('Broccoli')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'BROCCOLI WITH CHINESE MUSHROOMS'),
        (select max(id) from public.ingredient where name = 'Broccoli'));
INSERT INTO public.ingredient (name)
VALUES ('fresh mushrooms and Chinese mushrooms - hot salad')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'BROCCOLI WITH CHINESE MUSHROOMS'),
        (select max(id) from public.ingredient where name = 'fresh mushrooms and Chinese mushrooms - hot salad'));
INSERT INTO public.category (name, photo)
VALUES ('Chinese noodles', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('CHICKEN, PORK AND BEEF NOODLES', 'https://korpa.ba/product_uploads/clMNEHHOQEKPYq5wvSGdVW5WgBN4BpkD.jpg', 350,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN, PORK AND BEEF NOODLES'),
        (select max(id) from public.category where name = 'Chinese noodles'));
INSERT INTO public.ingredient (name)
VALUES ('Noodles')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN, PORK AND BEEF NOODLES'),
        (select max(id) from public.ingredient where name = 'Noodles'));
INSERT INTO public.ingredient (name)
VALUES ('pork')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN, PORK AND BEEF NOODLES'),
        (select max(id) from public.ingredient where name = 'pork'));
INSERT INTO public.ingredient (name)
VALUES ('beef and chicken')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN, PORK AND BEEF NOODLES'),
        (select max(id) from public.ingredient where name = 'beef and chicken'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('BEEF NOODLES', 'https://korpa.ba/product_uploads/ETWSPl3fod2mtHwWvXmIyDHCunjxZl4R.jpg', 350,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'BEEF NOODLES'),
        (select max(id) from public.category where name = 'Chinese noodles'));
INSERT INTO public.ingredient (name)
VALUES ('Noodles')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'BEEF NOODLES'),
        (select max(id) from public.ingredient where name = 'Noodles'));
INSERT INTO public.ingredient (name)
VALUES ('beef')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'BEEF NOODLES'),
        (select max(id) from public.ingredient where name = 'beef'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('PORK NOODLES', 'https://korpa.ba/product_uploads/gkbK7sKzdskyh8YBJvvfB1deagvBAGyw.jpg', 350,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'PORK NOODLES'),
        (select max(id) from public.category where name = 'Chinese noodles'));
INSERT INTO public.ingredient (name)
VALUES ('Noodles')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'PORK NOODLES'),
        (select max(id) from public.ingredient where name = 'Noodles'));
INSERT INTO public.ingredient (name)
VALUES ('pork')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'PORK NOODLES'),
        (select max(id) from public.ingredient where name = 'pork'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('CHICKEN NOODLES', 'https://korpa.ba/product_uploads/qMsIk53zJI8J35BdA15RSttqRUsVi8Nb.jpg', 340,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN NOODLES'),
        (select max(id) from public.category where name = 'Chinese noodles'));
INSERT INTO public.ingredient (name)
VALUES ('Noodles')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN NOODLES'),
        (select max(id) from public.ingredient where name = 'Noodles'));
INSERT INTO public.ingredient (name)
VALUES ('chicken')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN NOODLES'),
        (select max(id) from public.ingredient where name = 'chicken'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('VEGGIE NOODLES', 'https://korpa.ba/product_uploads/rlOExMgad5zAiXWCrLApuibgVFgXh1f1.jpg', 320,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'VEGGIE NOODLES'),
        (select max(id) from public.category where name = 'Chinese noodles'));
INSERT INTO public.ingredient (name)
VALUES ('Noodles')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'VEGGIE NOODLES'),
        (select max(id) from public.ingredient where name = 'Noodles'));
INSERT INTO public.ingredient (name)
VALUES ('vegetables')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'VEGGIE NOODLES'),
        (select max(id) from public.ingredient where name = 'vegetables'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('BOILED PELMENI WITH PORK AND VEGGIES', 'https://korpa.ba/product_uploads/Zx3r1NVXkBhJzmIM4VmnmXV6eroCdlxX.jpg',
        340, (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'BOILED PELMENI WITH PORK AND VEGGIES'),
        (select max(id) from public.category where name = 'Chinese noodles'));
INSERT INTO public.ingredient (name)
VALUES ('which is served for the New Year. They can be fried and boiled. There are 12 in the portion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'BOILED PELMENI WITH PORK AND VEGGIES'), (select max(id)
                                                                                                from public.ingredient
                                                                                                where name =
                                                                                                      'which is served for the New Year. They can be fried and boiled. There are 12 in the portion'));
INSERT INTO public.ingredient (name)
VALUES ('the dough is very thin')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'BOILED PELMENI WITH PORK AND VEGGIES'),
        (select max(id) from public.ingredient where name = 'the dough is very thin'));
INSERT INTO public.ingredient (name)
VALUES ('which is prepared by the cooks')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'BOILED PELMENI WITH PORK AND VEGGIES'),
        (select max(id) from public.ingredient where name = 'which is prepared by the cooks'));
INSERT INTO public.ingredient (name)
VALUES ('put inside')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'BOILED PELMENI WITH PORK AND VEGGIES'),
        (select max(id) from public.ingredient where name = 'put inside'));
INSERT INTO public.ingredient (name)
VALUES ('finely chopped pork')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'BOILED PELMENI WITH PORK AND VEGGIES'),
        (select max(id) from public.ingredient where name = 'finely chopped pork'));
INSERT INTO public.ingredient (name)
VALUES ('leeks and cabbage and folds into a shell')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'BOILED PELMENI WITH PORK AND VEGGIES'),
        (select max(id) from public.ingredient where name = 'leeks and cabbage and folds into a shell'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('FRIED PELMENI WITH PORK AND VEGGIES', 'https://korpa.ba/product_uploads/oiuZuMLpq3b7wN7DfAhRVshmcX94lx6p.jpg',
        340, (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'FRIED PELMENI WITH PORK AND VEGGIES'),
        (select max(id) from public.category where name = 'Chinese noodles'));
INSERT INTO public.ingredient (name)
VALUES ('The dough is very thin')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FRIED PELMENI WITH PORK AND VEGGIES'),
        (select max(id) from public.ingredient where name = 'The dough is very thin'));
INSERT INTO public.ingredient (name)
VALUES ('which the cooks knead themselves')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FRIED PELMENI WITH PORK AND VEGGIES'),
        (select max(id) from public.ingredient where name = 'which the cooks knead themselves'));
INSERT INTO public.ingredient (name)
VALUES ('put finely chopped leeks and cabbage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FRIED PELMENI WITH PORK AND VEGGIES'),
        (select max(id) from public.ingredient where name = 'put finely chopped leeks and cabbage'));
INSERT INTO public.ingredient (name)
VALUES ('meat inside')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FRIED PELMENI WITH PORK AND VEGGIES'),
        (select max(id) from public.ingredient where name = 'meat inside'));
INSERT INTO public.ingredient (name)
VALUES ('and roll it into a shell. They go in a portion of one')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FRIED PELMENI WITH PORK AND VEGGIES'),
        (select max(id) from public.ingredient where name = 'and roll it into a shell. They go in a portion of one'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('SPRING ROLLS WITH MEAT', 'https://korpa.ba/product_uploads/pXrhEge98zqJOrIkEdZEkz0MX6RZx8Tm.jpg', 240,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'SPRING ROLLS WITH MEAT'),
        (select max(id) from public.category where name = 'Chinese noodles'));
INSERT INTO public.ingredient (name)
VALUES ('The dough is made of pancake')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPRING ROLLS WITH MEAT'),
        (select max(id) from public.ingredient where name = 'The dough is made of pancake'));
INSERT INTO public.ingredient (name)
VALUES ('with egg')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPRING ROLLS WITH MEAT'),
        (select max(id) from public.ingredient where name = 'with egg'));
INSERT INTO public.ingredient (name)
VALUES ('inside there are finely chopped leeks and pork. There are three in a portion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPRING ROLLS WITH MEAT'), (select max(id)
                                                                                  from public.ingredient
                                                                                  where name =
                                                                                        'inside there are finely chopped leeks and pork. There are three in a portion'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('SPRING ROLLS WITHOUT MEAT', 'https://korpa.ba/product_uploads/4WLwZmtwBctSu4egjoskesJ6sMf1Msrt.jpg', 210,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'SPRING ROLLS WITHOUT MEAT'),
        (select max(id) from public.category where name = 'Chinese noodles'));
INSERT INTO public.ingredient (name)
VALUES ('The dough is made of a pancake')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPRING ROLLS WITHOUT MEAT'),
        (select max(id) from public.ingredient where name = 'The dough is made of a pancake'));
INSERT INTO public.ingredient (name)
VALUES ('with finely chopped egg')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPRING ROLLS WITHOUT MEAT'),
        (select max(id) from public.ingredient where name = 'with finely chopped egg'));
INSERT INTO public.ingredient (name)
VALUES ('carrot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPRING ROLLS WITHOUT MEAT'),
        (select max(id) from public.ingredient where name = 'carrot'));
INSERT INTO public.ingredient (name)
VALUES ('pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPRING ROLLS WITHOUT MEAT'),
        (select max(id) from public.ingredient where name = 'pepper'));
INSERT INTO public.ingredient (name)
VALUES ('cabbage and fresh mushrooms. Three go in a portion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPRING ROLLS WITHOUT MEAT'),
        (select max(id) from public.ingredient where name = 'cabbage and fresh mushrooms. Three go in a portion'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('CHINESE BREAD', 'https://korpa.ba/product_uploads/S0kfj8g3ENqKU35SdJ1jngn8WgdfVZG5.jpg', 40,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'CHINESE BREAD'),
        (select max(id) from public.category where name = 'Chinese noodles'));
INSERT INTO public.ingredient (name)
VALUES ('The cooks mix it themselves')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHINESE BREAD'),
        (select max(id) from public.ingredient where name = 'The cooks mix it themselves'));
INSERT INTO public.ingredient (name)
VALUES ('it is cooked in a special Chinese steamer')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHINESE BREAD'),
        (select max(id) from public.ingredient where name = 'it is cooked in a special Chinese steamer'));
INSERT INTO public.ingredient (name)
VALUES ('and then it is fried. It is crispy and hot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHINESE BREAD'),
        (select max(id) from public.ingredient where name = 'and then it is fried. It is crispy and hot'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('NOODLES WITH SHIMPS', 'https://korpa.ba/product_uploads/3Vx7jiot1dB39luxW6NQ6dppyAc8XozS.jpg', 390,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'NOODLES WITH SHIMPS'),
        (select max(id) from public.category where name = 'Chinese noodles'));
INSERT INTO public.ingredient (name)
VALUES ('Pasta')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'NOODLES WITH SHIMPS'),
        (select max(id) from public.ingredient where name = 'Pasta'));
INSERT INTO public.ingredient (name)
VALUES ('carrots')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'NOODLES WITH SHIMPS'),
        (select max(id) from public.ingredient where name = 'carrots'));
INSERT INTO public.ingredient (name)
VALUES ('pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'NOODLES WITH SHIMPS'),
        (select max(id) from public.ingredient where name = 'pepper'));
INSERT INTO public.ingredient (name)
VALUES ('shrimps')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'NOODLES WITH SHIMPS'),
        (select max(id) from public.ingredient where name = 'shrimps'));
INSERT INTO public.ingredient (name)
VALUES ('soy sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'NOODLES WITH SHIMPS'),
        (select max(id) from public.ingredient where name = 'soy sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('NOODLES WITH SEAFOOD', 'https://korpa.ba/product_uploads/5xCIbAJb2vpKPPEIjkqeNlLjki7aEGfW.jpg', 390,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'NOODLES WITH SEAFOOD'),
        (select max(id) from public.category where name = 'Chinese noodles'));
INSERT INTO public.ingredient (name)
VALUES ('Pasta')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'NOODLES WITH SEAFOOD'),
        (select max(id) from public.ingredient where name = 'Pasta'));
INSERT INTO public.ingredient (name)
VALUES ('carrots')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'NOODLES WITH SEAFOOD'),
        (select max(id) from public.ingredient where name = 'carrots'));
INSERT INTO public.ingredient (name)
VALUES ('peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'NOODLES WITH SEAFOOD'),
        (select max(id) from public.ingredient where name = 'peppers'));
INSERT INTO public.ingredient (name)
VALUES ('seafood')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'NOODLES WITH SEAFOOD'),
        (select max(id) from public.ingredient where name = 'seafood'));
INSERT INTO public.ingredient (name)
VALUES ('soy sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'NOODLES WITH SEAFOOD'),
        (select max(id) from public.ingredient where name = 'soy sauce'));
INSERT INTO public.category (name, photo)
VALUES ('Rice', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('HOT RICE WITH CHICKEN', 'https://korpa.ba/product_uploads/kPVw1G88Za6cgMTzBSWkqDrd06wfp7t1.jpg', 180,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'HOT RICE WITH CHICKEN'),
        (select max(id) from public.category where name = 'Rice'));
INSERT INTO public.ingredient (name)
VALUES ('The rice is pre-steamed in a separate Chinese dish and then lightly fried in a spicy Chinese spice')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'HOT RICE WITH CHICKEN'), (select max(id)
                                                                                 from public.ingredient
                                                                                 where name =
                                                                                       'The rice is pre-steamed in a separate Chinese dish and then lightly fried in a spicy Chinese spice'));
INSERT INTO public.ingredient (name)
VALUES ('with carrots')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'HOT RICE WITH CHICKEN'),
        (select max(id) from public.ingredient where name = 'with carrots'));
INSERT INTO public.ingredient (name)
VALUES ('corn')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'HOT RICE WITH CHICKEN'),
        (select max(id) from public.ingredient where name = 'corn'));
INSERT INTO public.ingredient (name)
VALUES ('peas and pieces of chicken')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'HOT RICE WITH CHICKEN'),
        (select max(id) from public.ingredient where name = 'peas and pieces of chicken'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('RICE WITH VEGGIES IN SOY SAUCE', 'https://korpa.ba/product_uploads/BekO2VU1UAP0W10t3Gpib1X478QWWD5a.jpg', 160,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH VEGGIES IN SOY SAUCE'),
        (select max(id) from public.category where name = 'Rice'));
INSERT INTO public.ingredient (name)
VALUES ('The rice is pre-cooked in a separate Chinese dish and then lightly fried in soy sauce with carrots')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH VEGGIES IN SOY SAUCE'), (select max(id)
                                                                                          from public.ingredient
                                                                                          where name =
                                                                                                'The rice is pre-cooked in a separate Chinese dish and then lightly fried in soy sauce with carrots'));
INSERT INTO public.ingredient (name)
VALUES ('corn')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH VEGGIES IN SOY SAUCE'),
        (select max(id) from public.ingredient where name = 'corn'));
INSERT INTO public.ingredient (name)
VALUES ('cabbage and peas')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH VEGGIES IN SOY SAUCE'),
        (select max(id) from public.ingredient where name = 'cabbage and peas'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('RICE WITH SHRIMPS', 'https://korpa.ba/product_uploads/dR5LUGkp30ilk82XfHa1ZtgBs5lL56RI.jpg', 210,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH SHRIMPS'),
        (select max(id) from public.category where name = 'Rice'));
INSERT INTO public.ingredient (name)
VALUES ('The rice is pre-cooked in a separate Chinese dish and then lightly fried with carrots')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH SHRIMPS'), (select max(id)
                                                                             from public.ingredient
                                                                             where name =
                                                                                   'The rice is pre-cooked in a separate Chinese dish and then lightly fried with carrots'));
INSERT INTO public.ingredient (name)
VALUES ('corn')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH SHRIMPS'),
        (select max(id) from public.ingredient where name = 'corn'));
INSERT INTO public.ingredient (name)
VALUES ('peas and shrimp')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH SHRIMPS'),
        (select max(id) from public.ingredient where name = 'peas and shrimp'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('RICE WITH ONION', 'https://korpa.ba/product_uploads/gXKT8UxvirNMVgaGmCXYclBRINHqfKop.jpg', 150,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH ONION'),
        (select max(id) from public.category where name = 'Rice'));
INSERT INTO public.ingredient (name)
VALUES ('The rice is pre-cooked in a separate Chinese dish and then lightly fried with carrots')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH ONION'), (select max(id)
                                                                           from public.ingredient
                                                                           where name =
                                                                                 'The rice is pre-cooked in a separate Chinese dish and then lightly fried with carrots'));
INSERT INTO public.ingredient (name)
VALUES ('corn')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH ONION'),
        (select max(id) from public.ingredient where name = 'corn'));
INSERT INTO public.ingredient (name)
VALUES ('peas and fresh onions')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH ONION'),
        (select max(id) from public.ingredient where name = 'peas and fresh onions'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('RICE WITH CURRY', 'https://korpa.ba/product_uploads/c8v4SAb7UlbrtdyLMsyAuZew133dcI2x.jpg', 170,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH CURRY'),
        (select max(id) from public.category where name = 'Rice'));
INSERT INTO public.ingredient (name)
VALUES ('The rice is pre-cooked in a separate Chinese dish and then lightly fried with carrots')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH CURRY'), (select max(id)
                                                                           from public.ingredient
                                                                           where name =
                                                                                 'The rice is pre-cooked in a separate Chinese dish and then lightly fried with carrots'));
INSERT INTO public.ingredient (name)
VALUES ('corn')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH CURRY'),
        (select max(id) from public.ingredient where name = 'corn'));
INSERT INTO public.ingredient (name)
VALUES ('peas and curry')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH CURRY'),
        (select max(id) from public.ingredient where name = 'peas and curry'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('RICE WITH MUSHROOMS', 'https://korpa.ba/product_uploads/PhtyoHtNYqlX2zaeLvjFMJXYb3oYAazy.jpg', 170,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH MUSHROOMS'),
        (select max(id) from public.category where name = 'Rice'));
INSERT INTO public.ingredient (name)
VALUES ('The rice is pre-cooked in a separate Chinese dish and then lightly fried with carrots')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH MUSHROOMS'), (select max(id)
                                                                               from public.ingredient
                                                                               where name =
                                                                                     'The rice is pre-cooked in a separate Chinese dish and then lightly fried with carrots'));
INSERT INTO public.ingredient (name)
VALUES ('corn')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH MUSHROOMS'),
        (select max(id) from public.ingredient where name = 'corn'));
INSERT INTO public.ingredient (name)
VALUES ('peas and fresh mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH MUSHROOMS'),
        (select max(id) from public.ingredient where name = 'peas and fresh mushrooms'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('RICE WITH CHICKEN, PORK AND BEEF', 'https://korpa.ba/product_uploads/t3iYwLC6cw548TbQ0iFc99viNXXvdPsC.jpg',
        190, (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH CHICKEN, PORK AND BEEF'),
        (select max(id) from public.category where name = 'Rice'));
INSERT INTO public.ingredient (name)
VALUES ('The rice is pre-cooked in a separate Chinese dish')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH CHICKEN, PORK AND BEEF'),
        (select max(id) from public.ingredient where name = 'The rice is pre-cooked in a separate Chinese dish'));
INSERT INTO public.ingredient (name)
VALUES ('then lightly fried with carrots')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH CHICKEN, PORK AND BEEF'),
        (select max(id) from public.ingredient where name = 'then lightly fried with carrots'));
INSERT INTO public.ingredient (name)
VALUES ('corn')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH CHICKEN, PORK AND BEEF'),
        (select max(id) from public.ingredient where name = 'corn'));
INSERT INTO public.ingredient (name)
VALUES ('peas and pieces of chicken')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH CHICKEN, PORK AND BEEF'),
        (select max(id) from public.ingredient where name = 'peas and pieces of chicken'));
INSERT INTO public.ingredient (name)
VALUES ('pork and beef')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH CHICKEN, PORK AND BEEF'),
        (select max(id) from public.ingredient where name = 'pork and beef'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('RICE WITH PORK', 'https://korpa.ba/product_uploads/YfPW0VX0XDpYc6cfDJnYjrunmpFlnxJN.jpg', 180,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH PORK'),
        (select max(id) from public.category where name = 'Rice'));
INSERT INTO public.ingredient (name)
VALUES ('The rice is pre-steamed in a separate Chinese dish and then lightly fried')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH PORK'), (select max(id)
                                                                          from public.ingredient
                                                                          where name =
                                                                                'The rice is pre-steamed in a separate Chinese dish and then lightly fried'));
INSERT INTO public.ingredient (name)
VALUES ('with carrots')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH PORK'),
        (select max(id) from public.ingredient where name = 'with carrots'));
INSERT INTO public.ingredient (name)
VALUES ('corn')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH PORK'),
        (select max(id) from public.ingredient where name = 'corn'));
INSERT INTO public.ingredient (name)
VALUES ('peas and pieces of pork')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH PORK'),
        (select max(id) from public.ingredient where name = 'peas and pieces of pork'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('RICE WITH PIECES OF CHICKEN', 'https://korpa.ba/product_uploads/SLHouiplXY3GYTItaWzkELXW4C2nhrap.jpg', 170,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH PIECES OF CHICKEN'),
        (select max(id) from public.category where name = 'Rice'));
INSERT INTO public.ingredient (name)
VALUES ('The rice is pre-steamed in a separate Chinese dish')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH PIECES OF CHICKEN'),
        (select max(id) from public.ingredient where name = 'The rice is pre-steamed in a separate Chinese dish'));
INSERT INTO public.ingredient (name)
VALUES ('then lightly fried with carrots')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH PIECES OF CHICKEN'),
        (select max(id) from public.ingredient where name = 'then lightly fried with carrots'));
INSERT INTO public.ingredient (name)
VALUES ('corn')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH PIECES OF CHICKEN'),
        (select max(id) from public.ingredient where name = 'corn'));
INSERT INTO public.ingredient (name)
VALUES ('peas and pieces of chicken meat')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH PIECES OF CHICKEN'),
        (select max(id) from public.ingredient where name = 'peas and pieces of chicken meat'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('RICE WITH EGGS', 'https://korpa.ba/product_uploads/Bu17cTjOFcRFG7ViE3eZAbkKLaDzQyyd.jpg', 170,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH EGGS'),
        (select max(id) from public.category where name = 'Rice'));
INSERT INTO public.ingredient (name)
VALUES ('The rice is previously steamed')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH EGGS'),
        (select max(id) from public.ingredient where name = 'The rice is previously steamed'));
INSERT INTO public.ingredient (name)
VALUES ('in a separate Chinese dish')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH EGGS'),
        (select max(id) from public.ingredient where name = 'in a separate Chinese dish'));
INSERT INTO public.ingredient (name)
VALUES ('and then lightly fried with carrots')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH EGGS'),
        (select max(id) from public.ingredient where name = 'and then lightly fried with carrots'));
INSERT INTO public.ingredient (name)
VALUES ('corn')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH EGGS'),
        (select max(id) from public.ingredient where name = 'corn'));
INSERT INTO public.ingredient (name)
VALUES ('peas')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH EGGS'),
        (select max(id) from public.ingredient where name = 'peas'));
INSERT INTO public.ingredient (name)
VALUES ('eggs')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH EGGS'),
        (select max(id) from public.ingredient where name = 'eggs'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('RICE WITH VEGGIES', 'https://korpa.ba/product_uploads/X98npkSYpt5GIWKexLErcqHx4nuHQ2BM.jpg', 150,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH VEGGIES'),
        (select max(id) from public.category where name = 'Rice'));
INSERT INTO public.ingredient (name)
VALUES ('The leeks are pre-steamed in a separate Chinese dish and then lightly fried')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH VEGGIES'), (select max(id)
                                                                             from public.ingredient
                                                                             where name =
                                                                                   'The leeks are pre-steamed in a separate Chinese dish and then lightly fried'));
INSERT INTO public.ingredient (name)
VALUES ('with carrots')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH VEGGIES'),
        (select max(id) from public.ingredient where name = 'with carrots'));
INSERT INTO public.ingredient (name)
VALUES ('cabbage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH VEGGIES'),
        (select max(id) from public.ingredient where name = 'cabbage'));
INSERT INTO public.ingredient (name)
VALUES ('peas and corn')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH VEGGIES'),
        (select max(id) from public.ingredient where name = 'peas and corn'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('COOKED RICE', 'None', 80, (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'COOKED RICE'),
        (select max(id) from public.category where name = 'Rice'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('SPICY RICE WITH BROCCOLI AND BLACK CHINESE MUSHROOMS', 'None', 240,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'SPICY RICE WITH BROCCOLI AND BLACK CHINESE MUSHROOMS'),
        (select max(id) from public.category where name = 'Rice'));
INSERT INTO public.ingredient (name)
VALUES ('Rice')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPICY RICE WITH BROCCOLI AND BLACK CHINESE MUSHROOMS'),
        (select max(id) from public.ingredient where name = 'Rice'));
INSERT INTO public.ingredient (name)
VALUES ('broccoli')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPICY RICE WITH BROCCOLI AND BLACK CHINESE MUSHROOMS'),
        (select max(id) from public.ingredient where name = 'broccoli'));
INSERT INTO public.ingredient (name)
VALUES ('corn')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPICY RICE WITH BROCCOLI AND BLACK CHINESE MUSHROOMS'),
        (select max(id) from public.ingredient where name = 'corn'));
INSERT INTO public.ingredient (name)
VALUES ('peas')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPICY RICE WITH BROCCOLI AND BLACK CHINESE MUSHROOMS'),
        (select max(id) from public.ingredient where name = 'peas'));
INSERT INTO public.ingredient (name)
VALUES ('carrots')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPICY RICE WITH BROCCOLI AND BLACK CHINESE MUSHROOMS'),
        (select max(id) from public.ingredient where name = 'carrots'));
INSERT INTO public.ingredient (name)
VALUES ('hot spice')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPICY RICE WITH BROCCOLI AND BLACK CHINESE MUSHROOMS'),
        (select max(id) from public.ingredient where name = 'hot spice'));
INSERT INTO public.ingredient (name)
VALUES ('black Chinese mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPICY RICE WITH BROCCOLI AND BLACK CHINESE MUSHROOMS'),
        (select max(id) from public.ingredient where name = 'black Chinese mushrooms'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('RICE WITH GARLIC AND BROCCOLI', 'None', 240,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH GARLIC AND BROCCOLI'),
        (select max(id) from public.category where name = 'Rice'));
INSERT INTO public.ingredient (name)
VALUES ('Rice')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH GARLIC AND BROCCOLI'),
        (select max(id) from public.ingredient where name = 'Rice'));
INSERT INTO public.ingredient (name)
VALUES ('broccoli')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH GARLIC AND BROCCOLI'),
        (select max(id) from public.ingredient where name = 'broccoli'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH GARLIC AND BROCCOLI'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.ingredient (name)
VALUES ('corn')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH GARLIC AND BROCCOLI'),
        (select max(id) from public.ingredient where name = 'corn'));
INSERT INTO public.ingredient (name)
VALUES ('peas')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH GARLIC AND BROCCOLI'),
        (select max(id) from public.ingredient where name = 'peas'));
INSERT INTO public.ingredient (name)
VALUES ('carrots')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'RICE WITH GARLIC AND BROCCOLI'),
        (select max(id) from public.ingredient where name = 'carrots'));
INSERT INTO public.category (name, photo)
VALUES ('Desserts', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('FRIED ICE CREAM', 'https://korpa.ba/product_uploads/9PR1FHXRA9fDcnZKetqIjqXEew17SFig.jpg', 220,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'FRIED ICE CREAM'),
        (select max(id) from public.category where name = 'Desserts'));
INSERT INTO public.ingredient (name)
VALUES ('then wrapped in a mixture made by the cooks themselves and then breaded')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FRIED ICE CREAM'), (select max(id)
                                                                           from public.ingredient
                                                                           where name =
                                                                                 'then wrapped in a mixture made by the cooks themselves and then breaded'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('CARAMELIZED NUTS', 'https://korpa.ba/product_uploads/uBNLa2R3ULW7hdTXZHOcBAR17kL06D0x.jpg', 290,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'CARAMELIZED NUTS'),
        (select max(id) from public.category where name = 'Desserts'));
INSERT INTO public.ingredient (name)
VALUES ('Walnuts fried in melted sugar')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CARAMELIZED NUTS'),
        (select max(id) from public.ingredient where name = 'Walnuts fried in melted sugar'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('CARAMELIZED BANANAS', 'https://korpa.ba/product_uploads/RkVUL1yx3jptvdBWmIQDbu1Mr0utPts3.jpg', 260,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'CARAMELIZED BANANAS'),
        (select max(id) from public.category where name = 'Desserts'));

INSERT INTO public.ingredient (name)
VALUES ('in which banana pieces are wrapped in a mixture made by cooks')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CARAMELIZED BANANAS'), (select max(id)
                                                                               from public.ingredient
                                                                               where name = 'in which banana pieces are wrapped in a mixture made by cooks'));
INSERT INTO public.ingredient (name)
VALUES ('and then wrapped in hot sugar')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CARAMELIZED BANANAS'),
        (select max(id) from public.ingredient where name = 'and then wrapped in hot sugar'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('CARAMELIZED PINEAPPLE', 'https://korpa.ba/product_uploads/mIWZKWvg6hvzJI7mhfFnMkCXCIrO9IvO.jpg', 260,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'CARAMELIZED PINEAPPLE'),
        (select max(id) from public.category where name = 'Desserts'));
INSERT INTO public.ingredient (name)
VALUES ('where the pineapple pieces are wrapped in a mixture made by the cooks themselves')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CARAMELIZED PINEAPPLE'), (select max(id)
                                                                                 from public.ingredient
                                                                                 where name =
                                                                                       'where the pineapple pieces are wrapped in a mixture made by the cooks themselves'));
INSERT INTO public.ingredient (name)
VALUES ('and then wrapped in hot sugar')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CARAMELIZED PINEAPPLE'),
        (select max(id) from public.ingredient where name = 'and then wrapped in hot sugar'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('CARAMELIZED APPLES', 'https://korpa.ba/product_uploads/UEogpXXuzLkokfVXXJURTV7Scv8WexkQ.jpg', 260,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'CARAMELIZED APPLES'),
        (select max(id) from public.category where name = 'Desserts'));

INSERT INTO public.ingredient (name)
VALUES ('in which the apple pieces are wrapped in a mixture made by the cooks themselves')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CARAMELIZED APPLES'), (select max(id)
                                                                              from public.ingredient
                                                                              where name =
                                                                                    'in which the apple pieces are wrapped in a mixture made by the cooks themselves'));
INSERT INTO public.ingredient (name)
VALUES ('and then wrapped in hot sugar')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CARAMELIZED APPLES'),
        (select max(id) from public.ingredient where name = 'and then wrapped in hot sugar'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('COOKIE WITH MESSAGE', 'https://korpa.ba/product_uploads/0FMab6QK5qvjOQwyM1Trze76O6FHXGMO.jpg', 90,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'COOKIE WITH MESSAGE'),
        (select max(id) from public.category where name = 'Desserts'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('MIXED CARAMELIZED FRUIT', 'https://korpa.ba/product_uploads/bmJAFQk5sTbeBTLTjmUnzIjXNMqEcdkN.jpg', 280,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'MIXED CARAMELIZED FRUIT'),
        (select max(id) from public.category where name = 'Desserts'));
INSERT INTO public.ingredient (name)
VALUES ('Apples')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'MIXED CARAMELIZED FRUIT'),
        (select max(id) from public.ingredient where name = 'Apples'));
INSERT INTO public.ingredient (name)
VALUES ('bananas')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'MIXED CARAMELIZED FRUIT'),
        (select max(id) from public.ingredient where name = 'bananas'));
INSERT INTO public.ingredient (name)
VALUES ('pineapples')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'MIXED CARAMELIZED FRUIT'),
        (select max(id) from public.ingredient where name = 'pineapples'));
INSERT INTO public.ingredient (name)
VALUES ('sugar')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'MIXED CARAMELIZED FRUIT'),
        (select max(id) from public.ingredient where name = 'sugar'));
INSERT INTO public.category (name, photo)
VALUES ('Chicken', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('SWEET SOUR CHICKEN', 'https://korpa.ba/product_uploads/EVOwHeFZSHaFU8PTY6vEBxfR6bFDequM.jpg', 330,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'SWEET SOUR CHICKEN'),
        (select max(id) from public.category where name = 'Chicken'));
INSERT INTO public.ingredient (name)
VALUES ('The sweet-sour sauce is most adored by the young population. The meat is crispily wrapped in a sweet and sour sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SWEET SOUR CHICKEN'), (select max(id)
                                                                              from public.ingredient
                                                                              where name =
                                                                                    'The sweet-sour sauce is most adored by the young population. The meat is crispily wrapped in a sweet and sour sauce'));
INSERT INTO public.ingredient (name)
VALUES ('fried for three to four seconds in a special Chinese dish with carrots and cucumbers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SWEET SOUR CHICKEN'), (select max(id)
                                                                              from public.ingredient
                                                                              where name =
                                                                                    'fried for three to four seconds in a special Chinese dish with carrots and cucumbers'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('CHICKEN WITH WALNUT', 'https://korpa.ba/product_uploads/SnJ2ugHy5QVn86w1uoK6pRYhJvCD36mK.jpg', 310,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN WITH WALNUT'),
        (select max(id) from public.category where name = 'Chicken'));
INSERT INTO public.ingredient (name)
VALUES ('Exotic and interesting dish')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN WITH WALNUT'),
        (select max(id) from public.ingredient where name = 'Exotic and interesting dish'));
INSERT INTO public.ingredient (name)
VALUES ('soft and juicy meat in sauce with Chinese spices')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN WITH WALNUT'),
        (select max(id) from public.ingredient where name = 'soft and juicy meat in sauce with Chinese spices'));
INSERT INTO public.ingredient (name)
VALUES ('carrot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN WITH WALNUT'),
        (select max(id) from public.ingredient where name = 'carrot'));
INSERT INTO public.ingredient (name)
VALUES ('pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN WITH WALNUT'),
        (select max(id) from public.ingredient where name = 'pepper'));
INSERT INTO public.ingredient (name)
VALUES ('cabbage and nuts')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN WITH WALNUT'),
        (select max(id) from public.ingredient where name = 'cabbage and nuts'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('CHICKEN IN TRADITIONAL POT', 'https://korpa.ba/product_uploads/vqDxescIqMcWELBskHhRrT7Z5cobZjfg.jpg', 450,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN IN TRADITIONAL POT'),
        (select max(id) from public.category where name = 'Chicken'));

INSERT INTO public.ingredient (name)
VALUES ('bamboo and pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN IN TRADITIONAL POT'),
        (select max(id) from public.ingredient where name = 'bamboo and pepper'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('POTATO SAUCE CHICKEN', 'https://korpa.ba/product_uploads/JzUuJ6XXWGhTPtZlwUgifEde2qAk2s7K.jpg', 310,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'POTATO SAUCE CHICKEN'),
        (select max(id) from public.category where name = 'Chicken'));
INSERT INTO public.ingredient (name)
VALUES ('The meat is soft and juicy')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'POTATO SAUCE CHICKEN'),
        (select max(id) from public.ingredient where name = 'The meat is soft and juicy'));
INSERT INTO public.ingredient (name)
VALUES ('fried with potatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'POTATO SAUCE CHICKEN'),
        (select max(id) from public.ingredient where name = 'fried with potatoes'));
INSERT INTO public.ingredient (name)
VALUES ('carrots and peppers in soy sauce with Chinese spices')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'POTATO SAUCE CHICKEN'),
        (select max(id) from public.ingredient where name = 'carrots and peppers in soy sauce with Chinese spices'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('CHICKEN IN SOY SAUCE', 'https://korpa.ba/product_uploads/2JIyfno8DYw0KeuO2vqLGBhsoAgQOUnG.jpg', 310,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN IN SOY SAUCE'),
        (select max(id) from public.category where name = 'Chicken'));
INSERT INTO public.ingredient (name)
VALUES ('The meat is in pieces')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN IN SOY SAUCE'),
        (select max(id) from public.ingredient where name = 'The meat is in pieces'));
INSERT INTO public.ingredient (name)
VALUES ('crispy wrapped in soy sauce with carrot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN IN SOY SAUCE'),
        (select max(id) from public.ingredient where name = 'crispy wrapped in soy sauce with carrot'));
INSERT INTO public.ingredient (name)
VALUES ('pepper and cabbage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN IN SOY SAUCE'),
        (select max(id) from public.ingredient where name = 'pepper and cabbage'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('CHILLI CHICKEN IN SWEET SOUR SAUCE', 'https://korpa.ba/product_uploads/2ZDAGPoq7pvjeXUAJTDZv3ajALw5qY5A.jpg',
        330, (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'CHILLI CHICKEN IN SWEET SOUR SAUCE'),
        (select max(id) from public.category where name = 'Chicken'));
INSERT INTO public.ingredient (name)
VALUES ('The meat is soft and juicy fried for three to four seconds with cabbage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHILLI CHICKEN IN SWEET SOUR SAUCE'), (select max(id)
                                                                                              from public.ingredient
                                                                                              where name =
                                                                                                    'The meat is soft and juicy fried for three to four seconds with cabbage'));
INSERT INTO public.ingredient (name)
VALUES ('carrots')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHILLI CHICKEN IN SWEET SOUR SAUCE'),
        (select max(id) from public.ingredient where name = 'carrots'));
INSERT INTO public.ingredient (name)
VALUES ('peppers and black Chinese mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHILLI CHICKEN IN SWEET SOUR SAUCE'),
        (select max(id) from public.ingredient where name = 'peppers and black Chinese mushrooms'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('CHICKEN WITH BLACK AND WHITE MUSHROOMS AND BAMBOO SPROUTS',
        'https://korpa.ba/product_uploads/OjPWEuVcOh7XVsoT6G0ioxp6eG24mkYw.jpg', 330,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN WITH BLACK AND WHITE MUSHROOMS AND BAMBOO SPROUTS'),
        (select max(id) from public.category where name = 'Chicken'));
INSERT INTO public.ingredient (name)
VALUES ('Three types of mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN WITH BLACK AND WHITE MUSHROOMS AND BAMBOO SPROUTS'),
        (select max(id) from public.ingredient where name = 'Three types of mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('fresh mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN WITH BLACK AND WHITE MUSHROOMS AND BAMBOO SPROUTS'),
        (select max(id) from public.ingredient where name = 'fresh mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('black and white chinese mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN WITH BLACK AND WHITE MUSHROOMS AND BAMBOO SPROUTS'),
        (select max(id)
         from public.ingredient
         where name =
               'black and white chinese mushrooms'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('CHICKEN WITH VEGETABLES', 'https://korpa.ba/product_uploads/WYVFUfvtXK2ZMmQbeahCeDcJUQ4ncW6m.jpg', 310,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN WITH VEGETABLES'),
        (select max(id) from public.category where name = 'Chicken'));
INSERT INTO public.ingredient (name)
VALUES ('Soft pieces of chicken are fried in a traditional Chinese dish with carrots')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN WITH VEGETABLES'), (select max(id)
                                                                                   from public.ingredient
                                                                                   where name =
                                                                                         'Soft pieces of chicken are fried in a traditional Chinese dish with carrots'));
INSERT INTO public.ingredient (name)
VALUES ('peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN WITH VEGETABLES'),
        (select max(id) from public.ingredient where name = 'peppers'));
INSERT INTO public.ingredient (name)
VALUES ('cabbage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN WITH VEGETABLES'),
        (select max(id) from public.ingredient where name = 'cabbage'));
INSERT INTO public.ingredient (name)
VALUES ('fresh mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN WITH VEGETABLES'),
        (select max(id) from public.ingredient where name = 'fresh mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('black and white Chinese mushrooms and zucchini')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN WITH VEGETABLES'), (select max(id)
                                                                                   from public.ingredient
                                                                                   where name =
                                                                                         'black and white Chinese mushrooms and zucchini'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('DRY CHICKEN', 'https://korpa.ba/product_uploads/qXxOmmqnhhpH8wipcJgSR02pzH9XnUBj.jpg', 280,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'DRY CHICKEN'),
        (select max(id) from public.category where name = 'Chicken'));
INSERT INTO public.ingredient (name)
VALUES ('It is recommended as an appetizer')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'DRY CHICKEN'),
        (select max(id) from public.ingredient where name = 'It is recommended as an appetizer'));
INSERT INTO public.ingredient (name)
VALUES ('the meat is crunchy')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'DRY CHICKEN'),
        (select max(id) from public.ingredient where name = 'the meat is crunchy'));
INSERT INTO public.ingredient (name)
VALUES ('it is served without sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'DRY CHICKEN'),
        (select max(id) from public.ingredient where name = 'it is served without sauce'));
INSERT INTO public.ingredient (name)
VALUES ('without vegetables')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'DRY CHICKEN'),
        (select max(id) from public.ingredient where name = 'without vegetables'));
INSERT INTO public.ingredient (name)
VALUES ('as an appetizer with beer')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'DRY CHICKEN'),
        (select max(id) from public.ingredient where name = 'as an appetizer with beer'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('CHICKEN WITH CURRY', 'https://korpa.ba/product_uploads/E73YVM6Jvz8vH1ZYiEwYczMvFAETj6sk.jpg', 310,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN WITH CURRY'),
        (select max(id) from public.category where name = 'Chicken'));
INSERT INTO public.ingredient (name)
VALUES ('Pieces of chicken are fried in Chinese curry')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN WITH CURRY'),
        (select max(id) from public.ingredient where name = 'Pieces of chicken are fried in Chinese curry'));
INSERT INTO public.ingredient (name)
VALUES ('a yellow sauce that is slightly spicy')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN WITH CURRY'),
        (select max(id) from public.ingredient where name = 'a yellow sauce that is slightly spicy'));
INSERT INTO public.ingredient (name)
VALUES ('carrots')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN WITH CURRY'),
        (select max(id) from public.ingredient where name = 'carrots'));
INSERT INTO public.ingredient (name)
VALUES ('peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN WITH CURRY'),
        (select max(id) from public.ingredient where name = 'peppers'));
INSERT INTO public.ingredient (name)
VALUES ('cabbage and zucchini in the summer. Chinese curry')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN WITH CURRY'),
        (select max(id) from public.ingredient where name = 'cabbage and zucchini in the summer. Chinese curry'));
INSERT INTO public.ingredient (name)
VALUES ('unlike Indian curry')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN WITH CURRY'),
        (select max(id) from public.ingredient where name = 'unlike Indian curry'));
INSERT INTO public.ingredient (name)
VALUES ('is much easier and is recommended for all those who want to try a different spicy sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN WITH CURRY'), (select max(id)
                                                                              from public.ingredient
                                                                              where name =
                                                                                    'is much easier and is recommended for all those who want to try a different spicy sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('CHICKEN WITH MUSHROOMS', 'https://korpa.ba/product_uploads/cp1nJeggVUHq1wYbzclFNEFewGtd943a.jpg', 310,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN WITH MUSHROOMS'),
        (select max(id) from public.category where name = 'Chicken'));
INSERT INTO public.ingredient (name)
VALUES ('The pieces of meat are fried in soy sauce with Chinese spices')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN WITH MUSHROOMS'), (select max(id)
                                                                                  from public.ingredient
                                                                                  where name = 'The pieces of meat are fried in soy sauce with Chinese spices'));
INSERT INTO public.ingredient (name)
VALUES ('fresh mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN WITH MUSHROOMS'),
        (select max(id) from public.ingredient where name = 'fresh mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('carrots and peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN WITH MUSHROOMS'),
        (select max(id) from public.ingredient where name = 'carrots and peppers'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('CHILLI CHICKEN', 'https://korpa.ba/product_uploads/bqKZdeUjajuImXlDwNbYlTGE7bqvpgqU.jpg', 330,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'CHILLI CHICKEN'),
        (select max(id) from public.category where name = 'Chicken'));
INSERT INTO public.ingredient (name)
VALUES ('The meat is in pieces')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHILLI CHICKEN'),
        (select max(id) from public.ingredient where name = 'The meat is in pieces'));
INSERT INTO public.ingredient (name)
VALUES ('it is soft and juicy in a spicy sauce fried with cabbage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHILLI CHICKEN'), (select max(id)
                                                                          from public.ingredient
                                                                          where name = 'it is soft and juicy in a spicy sauce fried with cabbage'));
INSERT INTO public.ingredient (name)
VALUES ('carrot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHILLI CHICKEN'),
        (select max(id) from public.ingredient where name = 'carrot'));
INSERT INTO public.ingredient (name)
VALUES ('pepper and zucchini')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHILLI CHICKEN'),
        (select max(id) from public.ingredient where name = 'pepper and zucchini'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('SWEET SOUR CHICKEN BALLS WITH PINEAPPLE',
        'https://korpa.ba/product_uploads/4YMWUuGmNtbFPMH52rkfL2YpibvAhZzK.jpg', 360,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'SWEET SOUR CHICKEN BALLS WITH PINEAPPLE'),
        (select max(id) from public.category where name = 'Chicken'));
INSERT INTO public.ingredient (name)
VALUES ('The meat is in the form of balls finely chopped with satar')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SWEET SOUR CHICKEN BALLS WITH PINEAPPLE'), (select max(id)
                                                                                                   from public.ingredient
                                                                                                   where name = 'The meat is in the form of balls finely chopped with satar'));
INSERT INTO public.ingredient (name)
VALUES ('it is soft and fried in sweet and sour sauce with pineapple')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SWEET SOUR CHICKEN BALLS WITH PINEAPPLE'), (select max(id)
                                                                                                   from public.ingredient
                                                                                                   where name = 'it is soft and fried in sweet and sour sauce with pineapple'));
INSERT INTO public.ingredient (name)
VALUES ('carrot and cucumber')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SWEET SOUR CHICKEN BALLS WITH PINEAPPLE'),
        (select max(id) from public.ingredient where name = 'carrot and cucumber'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('CHICKEN IN THE ROYAL WAY', 'https://korpa.ba/product_uploads/GVVoIsANE8wQK19nwObsfCw8hyRjLn1i.jpg', 310,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN IN THE ROYAL WAY'),
        (select max(id) from public.category where name = 'Chicken'));
INSERT INTO public.ingredient (name)
VALUES ('Chicken in the royal way or kunbao chikini')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN IN THE ROYAL WAY'),
        (select max(id) from public.ingredient where name = 'Chicken in the royal way or kunbao chikini'));
INSERT INTO public.ingredient (name)
VALUES ('where the meat is in pieces - it is soft and juicy in a traditional hot sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN IN THE ROYAL WAY'), (select max(id)
                                                                                    from public.ingredient
                                                                                    where name =
                                                                                          'where the meat is in pieces - it is soft and juicy in a traditional hot sauce'));
INSERT INTO public.ingredient (name)
VALUES ('decorated with peanuts and vegetables include cabbage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN IN THE ROYAL WAY'),
        (select max(id) from public.ingredient where name = 'decorated with peanuts and vegetables include cabbage'));
INSERT INTO public.ingredient (name)
VALUES ('carrots and peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN IN THE ROYAL WAY'),
        (select max(id) from public.ingredient where name = 'carrots and peppers'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('FRIED CHICKEN WINGS', 'https://korpa.ba/product_uploads/jyKCUMR1XfFuihbXoTJWV5Sz9OmMnnGf.jpg', 360,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'FRIED CHICKEN WINGS'),
        (select max(id) from public.category where name = 'Chicken'));
INSERT INTO public.ingredient (name)
VALUES ('The chicken wings are wrapped in curry which is then breaded. It is served without sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FRIED CHICKEN WINGS'), (select max(id)
                                                                               from public.ingredient
                                                                               where name =
                                                                                     'The chicken wings are wrapped in curry which is then breaded. It is served without sauce'));
INSERT INTO public.ingredient (name)
VALUES ('without vegetables')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FRIED CHICKEN WINGS'),
        (select max(id) from public.ingredient where name = 'without vegetables'));
INSERT INTO public.ingredient (name)
VALUES ('crunchy and hot and is recommended as an appetizer for appetizers with beer')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FRIED CHICKEN WINGS'), (select max(id)
                                                                               from public.ingredient
                                                                               where name =
                                                                                     'crunchy and hot and is recommended as an appetizer for appetizers with beer'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('CHICKEN IN CHILLI SAUCE', 'https://korpa.ba/product_uploads/1soSLK71GeWILoMSrARd6FQFOq6NDJl9.jpg', 450,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN IN CHILLI SAUCE'),
        (select max(id) from public.category where name = 'Chicken'));
INSERT INTO public.ingredient (name)
VALUES ('Soft and juicy chicken in hot sauce with carrot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN IN CHILLI SAUCE'),
        (select max(id) from public.ingredient where name = 'Soft and juicy chicken in hot sauce with carrot'));
INSERT INTO public.ingredient (name)
VALUES ('pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN IN CHILLI SAUCE'),
        (select max(id) from public.ingredient where name = 'pepper'));
INSERT INTO public.ingredient (name)
VALUES ('cabbage and broccoli')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN IN CHILLI SAUCE'),
        (select max(id) from public.ingredient where name = 'cabbage and broccoli'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('CHICKEN WITH BROCCOLI', 'None', 320,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN WITH BROCCOLI'),
        (select max(id) from public.category where name = 'Chicken'));
INSERT INTO public.ingredient (name)
VALUES ('The meat is in pieces')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN WITH BROCCOLI'),
        (select max(id) from public.ingredient where name = 'The meat is in pieces'));
INSERT INTO public.ingredient (name)
VALUES ('soft and juicy')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN WITH BROCCOLI'),
        (select max(id) from public.ingredient where name = 'soft and juicy'));
INSERT INTO public.ingredient (name)
VALUES ('fried in soy sauce and Chinese spices')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN WITH BROCCOLI'),
        (select max(id) from public.ingredient where name = 'fried in soy sauce and Chinese spices'));
INSERT INTO public.ingredient (name)
VALUES ('with fresh broccoli')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN WITH BROCCOLI'),
        (select max(id) from public.ingredient where name = 'with fresh broccoli'));
INSERT INTO public.category (name, photo)
VALUES ('Fish', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('SQUIDS IN POT', 'https://korpa.ba/product_uploads/ZcYIyBYm7M3yLG2v1JnYhRoQD3Vo5Fjf.jpg', 790,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'SQUIDS IN POT'),
        (select max(id) from public.category where name = 'Fish'));

INSERT INTO public.ingredient (name)
VALUES ('bamboo and pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SQUIDS IN POT'),
        (select max(id) from public.ingredient where name = 'bamboo and pepper'));
INSERT INTO public.ingredient (name)
VALUES ('it is interesting that when the pot is brought to the table')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SQUIDS IN POT'), (select max(id)
                                                                         from public.ingredient
                                                                         where name = 'it is interesting that when the pot is brought to the table'));
INSERT INTO public.ingredient (name)
VALUES ('the meat is still simmeri')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SQUIDS IN POT'),
        (select max(id) from public.ingredient where name = 'the meat is still simmeri'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('SHRIMP CROQUETTES', 'https://korpa.ba/product_uploads/LD33lTdZBl2BvDyuqrW0AmkoWiaFRQU5.jpg', 280,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'SHRIMP CROQUETTES'),
        (select max(id) from public.category where name = 'Fish'));
INSERT INTO public.ingredient (name)
VALUES ('shrimp chips')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SHRIMP CROQUETTES'), (select max(id)
                                                                             from public.ingredient
                                                                             where name = 'shrimp chips'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('SEAFOOD IN POT', 'https://korpa.ba/product_uploads/BHdpmClkYtdmOtD2A70Y9w04Hy5u2tCX.jpg', 720,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'SEAFOOD IN POT'),
        (select max(id) from public.category where name = 'Fish'));
INSERT INTO public.ingredient (name)
VALUES ('Seafood')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SEAFOOD IN POT'),
        (select max(id) from public.ingredient where name = 'Seafood'));
INSERT INTO public.ingredient (name)
VALUES ('shrimp')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SEAFOOD IN POT'),
        (select max(id) from public.ingredient where name = 'shrimp'));
INSERT INTO public.ingredient (name)
VALUES ('mussels')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SEAFOOD IN POT'),
        (select max(id) from public.ingredient where name = 'mussels'));
INSERT INTO public.ingredient (name)
VALUES ('seafood. Seafood is sliced ​​fried with carrots')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SEAFOOD IN POT'),
        (select max(id) from public.ingredient where name = 'seafood. Seafood is sliced ​​fried with carrots'));
INSERT INTO public.ingredient (name)
VALUES ('peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SEAFOOD IN POT'),
        (select max(id) from public.ingredient where name = 'peppers'));
INSERT INTO public.ingredient (name)
VALUES ('black and white chinese mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SEAFOOD IN POT'),
        (select max(id) from public.ingredient where name = 'black and white chinese mushrooms'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('FISH IN POT', 'https://korpa.ba/product_uploads/cqz2gY1t6CXL9l2BZ0Mwkc1tizXMMgZ7.jpg', 520,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'FISH IN POT'),
        (select max(id) from public.category where name = 'Fish'));
INSERT INTO public.ingredient (name)
VALUES ('bamboo and pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FISH IN POT'),
        (select max(id) from public.ingredient where name = 'bamboo and pepper'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('FISH WITH VEGETABLES', 'https://korpa.ba/product_uploads/M7XU5UjqX65cByiDgTyke0gYKHCfqyDM.jpg', 440,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'FISH WITH VEGETABLES'),
        (select max(id) from public.category where name = 'Fish'));
INSERT INTO public.ingredient (name)
VALUES ('The fish is in the form of pieces')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FISH WITH VEGETABLES'),
        (select max(id) from public.ingredient where name = 'The fish is in the form of pieces'));
INSERT INTO public.ingredient (name)
VALUES ('fillets (without bones)')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FISH WITH VEGETABLES'),
        (select max(id) from public.ingredient where name = 'fillets (without bones)'));
INSERT INTO public.ingredient (name)
VALUES ('the pieces are wrapped in curry')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FISH WITH VEGETABLES'),
        (select max(id) from public.ingredient where name = 'the pieces are wrapped in curry'));
INSERT INTO public.ingredient (name)
VALUES ('they are crispy')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FISH WITH VEGETABLES'),
        (select max(id) from public.ingredient where name = 'they are crispy'));
INSERT INTO public.ingredient (name)
VALUES ('fried in a sauce with carrot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FISH WITH VEGETABLES'),
        (select max(id) from public.ingredient where name = 'fried in a sauce with carrot'));
INSERT INTO public.ingredient (name)
VALUES ('pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FISH WITH VEGETABLES'),
        (select max(id) from public.ingredient where name = 'pepper'));
INSERT INTO public.ingredient (name)
VALUES ('cabbage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FISH WITH VEGETABLES'),
        (select max(id) from public.ingredient where name = 'cabbage'));
INSERT INTO public.ingredient (name)
VALUES ('black and white chinese mushrooms and fresh mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FISH WITH VEGETABLES'),
        (select max(id) from public.ingredient where name = 'black and white chinese mushrooms and fresh mushrooms'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('DRY FISH', 'https://korpa.ba/product_uploads/jftOLE8Q1UcjeqZvCJb58yEAX5hWkYsL.jpg', 430,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'DRY FISH'),
        (select max(id) from public.category where name = 'Fish'));
INSERT INTO public.ingredient (name)
VALUES ('The fish is in the form of pieces of fillets (without bone)')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'DRY FISH'), (select max(id)
                                                                    from public.ingredient
                                                                    where name = 'The fish is in the form of pieces of fillets (without bone)'));
INSERT INTO public.ingredient (name)
VALUES ('pieces are wrapped in curry')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'DRY FISH'),
        (select max(id) from public.ingredient where name = 'pieces are wrapped in curry'));
INSERT INTO public.ingredient (name)
VALUES ('crunchy are served as an appetizer for appetizers with beer')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'DRY FISH'), (select max(id)
                                                                    from public.ingredient
                                                                    where name = 'crunchy are served as an appetizer for appetizers with beer'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('FISH IN SWEET - SOUR SAUCE', 'https://korpa.ba/product_uploads/NQz1nFk0X1XLHeW3zJHOrx8zQBHyIoPy.jpg', 450,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'FISH IN SWEET - SOUR SAUCE'),
        (select max(id) from public.category where name = 'Fish'));
INSERT INTO public.ingredient (name)
VALUES ('The fish is in the form of pieces of fillets (without bone)')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FISH IN SWEET - SOUR SAUCE'), (select max(id)
                                                                                      from public.ingredient
                                                                                      where name = 'The fish is in the form of pieces of fillets (without bone)'));
INSERT INTO public.ingredient (name)
VALUES ('the pieces are wrapped in curry')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FISH IN SWEET - SOUR SAUCE'),
        (select max(id) from public.ingredient where name = 'the pieces are wrapped in curry'));
INSERT INTO public.ingredient (name)
VALUES ('they are crispy and fried with carrot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FISH IN SWEET - SOUR SAUCE'),
        (select max(id) from public.ingredient where name = 'they are crispy and fried with carrot'));
INSERT INTO public.ingredient (name)
VALUES ('pepper and sweet and sour sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FISH IN SWEET - SOUR SAUCE'),
        (select max(id) from public.ingredient where name = 'pepper and sweet and sour sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('FISH IN SOY SAUCE', 'None', 450,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'FISH IN SOY SAUCE'),
        (select max(id) from public.category where name = 'Fish'));
INSERT INTO public.ingredient (name)
VALUES ('Fillets crispy sliced fish')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FISH IN SOY SAUCE'),
        (select max(id) from public.ingredient where name = 'Fillets crispy sliced fish'));
INSERT INTO public.ingredient (name)
VALUES ('peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FISH IN SOY SAUCE'),
        (select max(id) from public.ingredient where name = 'peppers'));
INSERT INTO public.ingredient (name)
VALUES ('carrots')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FISH IN SOY SAUCE'),
        (select max(id) from public.ingredient where name = 'carrots'));
INSERT INTO public.ingredient (name)
VALUES ('curry')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FISH IN SOY SAUCE'),
        (select max(id) from public.ingredient where name = 'curry'));
INSERT INTO public.ingredient (name)
VALUES ('soy sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FISH IN SOY SAUCE'),
        (select max(id) from public.ingredient where name = 'soy sauce'));
INSERT INTO public.category (name, photo)
VALUES ('Salads', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('GOLD SILVER SALAD', 'https://korpa.ba/product_uploads/Onw85EouHcJWjstrZ7PUJQtTiTShHNZN.jpg', 360,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'GOLD SILVER SALAD'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Cabbage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'GOLD SILVER SALAD'),
        (select max(id) from public.ingredient where name = 'Cabbage'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'GOLD SILVER SALAD'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('fried peanuts')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'GOLD SILVER SALAD'),
        (select max(id) from public.ingredient where name = 'fried peanuts'));
INSERT INTO public.ingredient (name)
VALUES ('carrot and chips cut into small strips')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'GOLD SILVER SALAD'),
        (select max(id) from public.ingredient where name = 'carrot and chips cut into small strips'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('MIXED SALAD', 'https://korpa.ba/product_uploads/X16oLQApQk5wUuQxL7GlXmTVfTIfXdFD.jpg', 220,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'MIXED SALAD'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('It is a combination of many vegetables')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'MIXED SALAD'),
        (select max(id) from public.ingredient where name = 'It is a combination of many vegetables'));
INSERT INTO public.ingredient (name)
VALUES ('including cabbage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'MIXED SALAD'),
        (select max(id) from public.ingredient where name = 'including cabbage'));
INSERT INTO public.ingredient (name)
VALUES ('tomatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'MIXED SALAD'),
        (select max(id) from public.ingredient where name = 'tomatoes'));
INSERT INTO public.ingredient (name)
VALUES ('cucumbers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'MIXED SALAD'),
        (select max(id) from public.ingredient where name = 'cucumbers'));
INSERT INTO public.ingredient (name)
VALUES ('black and white Chinese mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'MIXED SALAD'),
        (select max(id) from public.ingredient where name = 'black and white Chinese mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('spiced with Chinese spices that make it exotic and special')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'MIXED SALAD'), (select max(id)
                                                                       from public.ingredient
                                                                       where name = 'spiced with Chinese spices that make it exotic and special'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('BEET AND CARROT SALAD', 'https://korpa.ba/product_uploads/k1q6k7FarCcvH94hhcJABnyt2mKzVNul.jpg', 170,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'BEET AND CARROT SALAD'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Beetroot and carrot seasoned with Chinese salt and Chinese sesame oil is a combination of several vitamins in one place that is the right choice for all those who respect healthy food')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'BEET AND CARROT SALAD'), (select max(id)
                                                                                 from public.ingredient
                                                                                 where name =
                                                                                       'Beetroot and carrot seasoned with Chinese salt and Chinese sesame oil is a combination of several vitamins in one place that is the right choice for all those who respect healthy food'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('SPINACH SALAD', 'https://korpa.ba/product_uploads/tJqlCjDbo8MbQYHv3C18AEVSAGM6cW85.jpg', 340,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'SPINACH SALAD'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('It is the most adored seasonal salad in our restaurant. It is a rich source of vitamins that in combination with carrots')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPINACH SALAD'), (select max(id)
                                                                         from public.ingredient
                                                                         where name =
                                                                               'It is the most adored seasonal salad in our restaurant. It is a rich source of vitamins that in combination with carrots'));
INSERT INTO public.ingredient (name)
VALUES ('black and white Chinese mushrooms will give you energy for the rest of the day')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPINACH SALAD'), (select max(id)
                                                                         from public.ingredient
                                                                         where name =
                                                                               'black and white Chinese mushrooms will give you energy for the rest of the day'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('CHILLI CABBAGE SALAD', 'https://korpa.ba/product_uploads/TfCBkBJiwtBbEo0HsEiAUCcy8z1Uav7a.jpg', 180,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'CHILLI CABBAGE SALAD'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Hot cabbage salad is a wonderful choice for all those who love spicy taste. Chinese chili combined with cabbage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHILLI CABBAGE SALAD'), (select max(id)
                                                                                from public.ingredient
                                                                                where name =
                                                                                      'Hot cabbage salad is a wonderful choice for all those who love spicy taste. Chinese chili combined with cabbage'));
INSERT INTO public.ingredient (name)
VALUES ('carrot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHILLI CABBAGE SALAD'),
        (select max(id) from public.ingredient where name = 'carrot'));
INSERT INTO public.ingredient (name)
VALUES ('black and white Chinese mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHILLI CABBAGE SALAD'),
        (select max(id) from public.ingredient where name = 'black and white Chinese mushrooms'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('CABBAGE SALAD', 'https://korpa.ba/product_uploads/NMFz6dfkc68eZPLkmgQe0hIlLLcc3J36.jpg', 160,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'CABBAGE SALAD'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('It consists of cabbage and carrots in the form of strips')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CABBAGE SALAD'), (select max(id)
                                                                         from public.ingredient
                                                                         where name = 'It consists of cabbage and carrots in the form of strips'));
INSERT INTO public.ingredient (name)
VALUES ('black and white chinese mushrooms and chinese spices that make it unusual and delicious')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CABBAGE SALAD'), (select max(id)
                                                                         from public.ingredient
                                                                         where name =
                                                                               'black and white chinese mushrooms and chinese spices that make it unusual and delicious'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('CHINESE SALAD', 'https://korpa.ba/product_uploads/HfByx7CRGPgTnmnEX2M26AXa0N5M3TUU.jpg', 280,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'CHINESE SALAD'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('It is a convincing favorite salad of our guests. It contains cucumber and carrot chopped in the form of strips')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHINESE SALAD'), (select max(id)
                                                                         from public.ingredient
                                                                         where name =
                                                                               'It is a convincing favorite salad of our guests. It contains cucumber and carrot chopped in the form of strips'));
INSERT INTO public.ingredient (name)
VALUES ('black and white Chinese mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHINESE SALAD'),
        (select max(id) from public.ingredient where name = 'black and white Chinese mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('noodles and Chinese spices that give a wonderful aroma to the salad')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHINESE SALAD'), (select max(id)
                                                                         from public.ingredient
                                                                         where name =
                                                                               'noodles and Chinese spices that give a wonderful aroma to the salad'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('CHICKEN SALAD IN SPICY SWEET SOUR SAUCE', 'None', 280,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN SALAD IN SPICY SWEET SOUR SAUCE'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Chicken')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN SALAD IN SPICY SWEET SOUR SAUCE'),
        (select max(id) from public.ingredient where name = 'Chicken'));
INSERT INTO public.ingredient (name)
VALUES ('cucumber')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN SALAD IN SPICY SWEET SOUR SAUCE'),
        (select max(id) from public.ingredient where name = 'cucumber'));
INSERT INTO public.ingredient (name)
VALUES ('carrot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN SALAD IN SPICY SWEET SOUR SAUCE'),
        (select max(id) from public.ingredient where name = 'carrot'));
INSERT INTO public.ingredient (name)
VALUES ('black and white Chinese mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN SALAD IN SPICY SWEET SOUR SAUCE'),
        (select max(id) from public.ingredient where name = 'black and white Chinese mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('spicy sweet and sour sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN SALAD IN SPICY SWEET SOUR SAUCE'),
        (select max(id) from public.ingredient where name = 'spicy sweet and sour sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('ARUGULA SALAD', 'None', 260,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'ARUGULA SALAD'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Arugula')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'ARUGULA SALAD'),
        (select max(id) from public.ingredient where name = 'Arugula'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'ARUGULA SALAD'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'ARUGULA SALAD'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.category (name, photo)
VALUES ('Beef', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('DRY HOT BEEF', 'None', 420, (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'DRY HOT BEEF'),
        (select max(id) from public.category where name = 'Beef'));
INSERT INTO public.ingredient (name)
VALUES ('beef')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'DRY HOT BEEF'), (select max(id)
                                                                        from public.ingredient
                                                                        where name =
                                                                              'beef'));
INSERT INTO public.ingredient (name)
VALUES ('fried with cabbage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'DRY HOT BEEF'),
        (select max(id) from public.ingredient where name = 'fried with cabbage'));
INSERT INTO public.ingredient (name)
VALUES ('carrots and peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'DRY HOT BEEF'),
        (select max(id) from public.ingredient where name = 'carrots and peppers'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('TRADITIONAL POT WITH CHICKEN, PORK AND BEEF IN CHILLI SWEETS AND SOUR SAUCE',
        'https://korpa.ba/product_uploads/iQhiPKMIgjwqkONo8NBQoWbQ0iPxPIQk.jpg', 620,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id)
         from public.food
         where name = 'TRADITIONAL POT WITH CHICKEN, PORK AND BEEF IN CHILLI SWEETS AND SOUR SAUCE'),
        (select max(id) from public.category where name = 'Beef'));
INSERT INTO public.ingredient (name)
VALUES ('chicken')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id)
         from public.food
         where name = 'TRADITIONAL POT WITH CHICKEN, PORK AND BEEF IN CHILLI SWEETS AND SOUR SAUCE'), (select max(id)
                                                                                                       from public.ingredient
                                                                                                       where name =
                                                                                                             'chicken'));
INSERT INTO public.ingredient (name)
VALUES ('pork')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id)
         from public.food
         where name = 'TRADITIONAL POT WITH CHICKEN, PORK AND BEEF IN CHILLI SWEETS AND SOUR SAUCE'),
        (select max(id) from public.ingredient where name = 'pork'));
INSERT INTO public.ingredient (name)
VALUES ('beef')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id)
         from public.food
         where name = 'TRADITIONAL POT WITH CHICKEN, PORK AND BEEF IN CHILLI SWEETS AND SOUR SAUCE'), (select max(id)
                                                                                                       from public.ingredient
                                                                                                       where name =
                                                                                                             'beef'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('BEEF IN TRADITIONAL POT', 'https://korpa.ba/product_uploads/vboA6LUlYo7ljfGAYZburCVIswyROQNT.jpg', 580,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'BEEF IN TRADITIONAL POT'),
        (select max(id) from public.category where name = 'Beef'));
INSERT INTO public.ingredient (name)
VALUES ('bamboo and pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'BEEF IN TRADITIONAL POT'),
        (select max(id) from public.ingredient where name = 'bamboo and pepper'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('BEEF MUSCLE WITH MUSHROOMS IN BEER SAUCE',
        'https://korpa.ba/product_uploads/GqtcP5cTtFNp7pKesiTMeQRp8QSuGbUv.jpg', 480,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'BEEF MUSCLE WITH MUSHROOMS IN BEER SAUCE'),
        (select max(id) from public.category where name = 'Beef'));
INSERT INTO public.ingredient (name)
VALUES ('The muscle is cut into small pieces')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'BEEF MUSCLE WITH MUSHROOMS IN BEER SAUCE'),
        (select max(id) from public.ingredient where name = 'The muscle is cut into small pieces'));
INSERT INTO public.ingredient (name)
VALUES ('separete into strips fried in a sauce with chinese spices')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'BEEF MUSCLE WITH MUSHROOMS IN BEER SAUCE'), (select max(id)
                                                                                                    from public.ingredient
                                                                                                    where name = 'separete into strips fried in a sauce with chinese spices'));
INSERT INTO public.ingredient (name)
VALUES ('carrot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'BEEF MUSCLE WITH MUSHROOMS IN BEER SAUCE'),
        (select max(id) from public.ingredient where name = 'carrot'));
INSERT INTO public.ingredient (name)
VALUES ('pepper and bamboo')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'BEEF MUSCLE WITH MUSHROOMS IN BEER SAUCE'),
        (select max(id) from public.ingredient where name = 'pepper and bamboo'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('BEEF WITH ONION', 'https://korpa.ba/product_uploads/B4gBYQWnbABTJDqQS2khkEZd4bPXsdWe.jpg', 360,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'BEEF WITH ONION'),
        (select max(id) from public.category where name = 'Beef'));
INSERT INTO public.ingredient (name)
VALUES ('The meat is in pieces')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'BEEF WITH ONION'),
        (select max(id) from public.ingredient where name = 'The meat is in pieces'));
INSERT INTO public.ingredient (name)
VALUES ('it is soft and juicy fried with onions')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'BEEF WITH ONION'),
        (select max(id) from public.ingredient where name = 'it is soft and juicy fried with onions'));
INSERT INTO public.ingredient (name)
VALUES ('peppers and carrots')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'BEEF WITH ONION'), (select max(id)
                                                                           from public.ingredient
                                                                           where name =
                                                                                 'peppers and carrots'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('HOT BEEF WITH SWEET AND SOUR SAUCE', 'https://korpa.ba/product_uploads/dwAUZkItS44T4V5or4n5t7bxFfajZifa.jpg',
        390, (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'HOT BEEF WITH SWEET AND SOUR SAUCE'),
        (select max(id) from public.category where name = 'Beef'));
INSERT INTO public.ingredient (name)
VALUES ('The meat is soft and juicy fried for three to four seconds with cabbage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'HOT BEEF WITH SWEET AND SOUR SAUCE'), (select max(id)
                                                                                              from public.ingredient
                                                                                              where name =
                                                                                                    'The meat is soft and juicy fried for three to four seconds with cabbage'));
INSERT INTO public.ingredient (name)
VALUES ('carrots')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'HOT BEEF WITH SWEET AND SOUR SAUCE'),
        (select max(id) from public.ingredient where name = 'carrots'));
INSERT INTO public.ingredient (name)
VALUES ('peppers and black Chinese mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'HOT BEEF WITH SWEET AND SOUR SAUCE'),
        (select max(id) from public.ingredient where name = 'peppers and black Chinese mushrooms'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('BEEF WITH BLACK AND WHITE MUSHROOMS AND BAMBUS STUBS',
        'https://korpa.ba/product_uploads/AzPeMZdsIV5nuqXb8QIS5aucLZB5sAUt.jpg', 390,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'BEEF WITH BLACK AND WHITE MUSHROOMS AND BAMBUS STUBS'),
        (select max(id) from public.category where name = 'Beef'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'BEEF WITH BLACK AND WHITE MUSHROOMS AND BAMBUS STUBS'),
        (select max(id)
         from public.ingredient
         where name =
               'mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('mushroom scenes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'BEEF WITH BLACK AND WHITE MUSHROOMS AND BAMBUS STUBS'),
        (select max(id) from public.ingredient where name = 'mushroom scenes'));
INSERT INTO public.ingredient (name)
VALUES ('black and white chinese mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'BEEF WITH BLACK AND WHITE MUSHROOMS AND BAMBUS STUBS'),
        (select max(id)
         from public.ingredient
         where name =
               'black and white chinese mushrooms'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('BEEF WITH VEGGIES', 'https://korpa.ba/product_uploads/9H9ZjncL2cm9oalDJNj8BncnMAp9gfzv.jpg', 360,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'BEEF WITH VEGGIES'),
        (select max(id) from public.category where name = 'Beef'));
INSERT INTO public.ingredient (name)
VALUES ('Soft pieces of beef are fried in a traditional Chinese dish with carrots')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'BEEF WITH VEGGIES'), (select max(id)
                                                                             from public.ingredient
                                                                             where name =
                                                                                   'Soft pieces of beef are fried in a traditional Chinese dish with carrots'));
INSERT INTO public.ingredient (name)
VALUES ('peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'BEEF WITH VEGGIES'),
        (select max(id) from public.ingredient where name = 'peppers'));
INSERT INTO public.ingredient (name)
VALUES ('cabbage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'BEEF WITH VEGGIES'),
        (select max(id) from public.ingredient where name = 'cabbage'));
INSERT INTO public.ingredient (name)
VALUES ('fresh mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'BEEF WITH VEGGIES'),
        (select max(id) from public.ingredient where name = 'fresh mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('black and white Chinese mushrooms and zucchini')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'BEEF WITH VEGGIES'), (select max(id)
                                                                             from public.ingredient
                                                                             where name =
                                                                                   'black and white Chinese mushrooms and zucchini'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('HOT BEEF', 'https://korpa.ba/product_uploads/vp86bbSST6EitbkyjmLVxLvrVEnV7Sv7.jpg', 360,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'HOT BEEF'),
        (select max(id) from public.category where name = 'Beef'));
INSERT INTO public.ingredient (name)
VALUES ('The meat is in pieces')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'HOT BEEF'),
        (select max(id) from public.ingredient where name = 'The meat is in pieces'));
INSERT INTO public.ingredient (name)
VALUES ('it is soft and juicy in a spicy sauce fried with cabbage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'HOT BEEF'), (select max(id)
                                                                    from public.ingredient
                                                                    where name = 'it is soft and juicy in a spicy sauce fried with cabbage'));
INSERT INTO public.ingredient (name)
VALUES ('carrot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'HOT BEEF'),
        (select max(id) from public.ingredient where name = 'carrot'));
INSERT INTO public.ingredient (name)
VALUES ('pepper and zucchini')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'HOT BEEF'),
        (select max(id) from public.ingredient where name = 'pepper and zucchini'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('CHICKEN, PORK AND BEEF WITH VEGGIES, SHRIMPS, PEANUTS, ALMONDS AND NUTS', 'None', 390,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id)
         from public.food
         where name = 'CHICKEN, PORK AND BEEF WITH VEGGIES, SHRIMPS, PEANUTS, ALMONDS AND NUTS'),
        (select max(id) from public.category where name = 'Beef'));
INSERT INTO public.ingredient (name)
VALUES ('chicken')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id)
         from public.food
         where name = 'CHICKEN, PORK AND BEEF WITH VEGGIES, SHRIMPS, PEANUTS, ALMONDS AND NUTS'), (select max(id)
                                                                                                   from public.ingredient
                                                                                                   where name =
                                                                                                         'chicken'));
INSERT INTO public.ingredient (name)
VALUES ('pork')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id)
         from public.food
         where name = 'CHICKEN, PORK AND BEEF WITH VEGGIES, SHRIMPS, PEANUTS, ALMONDS AND NUTS'),
        (select max(id) from public.ingredient where name = 'pork'));
INSERT INTO public.ingredient (name)
VALUES ('beef fried for three to four seconds with cabbage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id)
         from public.food
         where name = 'CHICKEN, PORK AND BEEF WITH VEGGIES, SHRIMPS, PEANUTS, ALMONDS AND NUTS'),
        (select max(id) from public.ingredient where name = 'beef fried for three to four seconds with cabbage'));
INSERT INTO public.ingredient (name)
VALUES ('carrots')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id)
         from public.food
         where name = 'CHICKEN, PORK AND BEEF WITH VEGGIES, SHRIMPS, PEANUTS, ALMONDS AND NUTS'),
        (select max(id) from public.ingredient where name = 'carrots'));
INSERT INTO public.ingredient (name)
VALUES ('peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id)
         from public.food
         where name = 'CHICKEN, PORK AND BEEF WITH VEGGIES, SHRIMPS, PEANUTS, ALMONDS AND NUTS'),
        (select max(id) from public.ingredient where name = 'peppers'));
INSERT INTO public.ingredient (name)
VALUES ('black and white Chinese mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id)
         from public.food
         where name = 'CHICKEN, PORK AND BEEF WITH VEGGIES, SHRIMPS, PEANUTS, ALMONDS AND NUTS'),
        (select max(id) from public.ingredient where name = 'black and white Chinese mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('shrimp')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id)
         from public.food
         where name = 'CHICKEN, PORK AND BEEF WITH VEGGIES, SHRIMPS, PEANUTS, ALMONDS AND NUTS'),
        (select max(id) from public.ingredient where name = 'shrimp'));
INSERT INTO public.ingredient (name)
VALUES ('peanuts')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id)
         from public.food
         where name = 'CHICKEN, PORK AND BEEF WITH VEGGIES, SHRIMPS, PEANUTS, ALMONDS AND NUTS'),
        (select max(id) from public.ingredient where name = 'peanuts'));
INSERT INTO public.ingredient (name)
VALUES ('almonds and walnuts')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id)
         from public.food
         where name = 'CHICKEN, PORK AND BEEF WITH VEGGIES, SHRIMPS, PEANUTS, ALMONDS AND NUTS'),
        (select max(id) from public.ingredient where name = 'almonds and walnuts'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Beef, chicken and pork', 'None', 580,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Beef, chicken and pork'),
        (select max(id) from public.category where name = 'Beef'));
INSERT INTO public.ingredient (name)
VALUES ('Beef')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Beef, chicken and pork'),
        (select max(id) from public.ingredient where name = 'Beef'));
INSERT INTO public.ingredient (name)
VALUES ('chicken')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Beef, chicken and pork'),
        (select max(id) from public.ingredient where name = 'chicken'));
INSERT INTO public.ingredient (name)
VALUES ('pork')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Beef, chicken and pork'),
        (select max(id) from public.ingredient where name = 'pork'));
INSERT INTO public.ingredient (name)
VALUES ('carrot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Beef, chicken and pork'),
        (select max(id) from public.ingredient where name = 'carrot'));
INSERT INTO public.ingredient (name)
VALUES ('pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Beef, chicken and pork'),
        (select max(id) from public.ingredient where name = 'pepper'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Beef, chicken and pork'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('beef with broccoli', 'None', 380,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'beef with broccoli'),
        (select max(id) from public.category where name = 'Beef'));
INSERT INTO public.ingredient (name)
VALUES ('Beef')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'beef with broccoli'),
        (select max(id) from public.ingredient where name = 'Beef'));
INSERT INTO public.ingredient (name)
VALUES ('broccoli')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'beef with broccoli'),
        (select max(id) from public.ingredient where name = 'broccoli'));
INSERT INTO public.ingredient (name)
VALUES ('soy sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'beef with broccoli'),
        (select max(id) from public.ingredient where name = 'soy sauce'));
INSERT INTO public.category (name, photo)
VALUES ('Pork', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('CHILLI PORK', 'https://korpa.ba/product_uploads/nvEWkvRSzO8XaO1UFiOXOc1RcLbDtoWB.jpg', 330,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'CHILLI PORK'),
        (select max(id) from public.category where name = 'Pork'));
INSERT INTO public.ingredient (name)
VALUES ('carrot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHILLI PORK'),
        (select max(id) from public.ingredient where name = 'carrot'));
INSERT INTO public.ingredient (name)
VALUES ('pepper and zucchini')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHILLI PORK'),
        (select max(id) from public.ingredient where name = 'pepper and zucchini'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('SWEET - SOUR PORK BALLS WITH  PINEAPPLE',
        'https://korpa.ba/product_uploads/c2LJdYEQNnfLbNZXcTktzHiyteGGIpDb.jpg', 380,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'SWEET - SOUR PORK BALLS WITH  PINEAPPLE'),
        (select max(id) from public.category where name = 'Pork'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('PORK IN SAUCE WITH HOT PEPPERS', 'https://korpa.ba/product_uploads/0KzeN9PjAU3b2h1PTjfduvJwlfyrw0wT.jpg', 340,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'PORK IN SAUCE WITH HOT PEPPERS'),
        (select max(id) from public.category where name = 'Pork'));
INSERT INTO public.ingredient (name)
VALUES ('pork, pepper and carrot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'PORK IN SAUCE WITH HOT PEPPERS'), (select max(id)
                                                                                          from public.ingredient
                                                                                          where name =
                                                                                                'pork, pepper and carrot'));
INSERT INTO public.ingredient (name)
VALUES ('hot peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'PORK IN SAUCE WITH HOT PEPPERS'),
        (select max(id) from public.ingredient where name = 'hot peppers'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('PORK IN POT', 'https://korpa.ba/product_uploads/SzqssBeAkJQTPvImGKpP6e8vKhHQMleU.jpg', 520,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'PORK IN POT'),
        (select max(id) from public.category where name = 'Pork'));
INSERT INTO public.ingredient (name)
VALUES ('pork and carrots')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'PORK IN POT'), (select max(id)
                                                                       from public.ingredient
                                                                       where name =
                                                                             'pork and carrots'));
INSERT INTO public.ingredient (name)
VALUES ('bamboo and pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'PORK IN POT'),
        (select max(id) from public.ingredient where name = 'bamboo and pepper'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('PORK RIBS IN SOY SAUCE', 'https://korpa.ba/product_uploads/BSolJn5BnsGqkiao9XfXARyaaiL3pDWj.jpg', 450,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'PORK RIBS IN SOY SAUCE'),
        (select max(id) from public.category where name = 'Pork'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('HOT PORK WITH SWEET-SOUR SAUCE', 'https://korpa.ba/product_uploads/0MdbNShWmZjsaqhccge3hq5VepsZS7RF.jpg', 340,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'HOT PORK WITH SWEET-SOUR SAUCE'),
        (select max(id) from public.category where name = 'Pork'));
INSERT INTO public.ingredient (name)
VALUES ('carrot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'HOT PORK WITH SWEET-SOUR SAUCE'),
        (select max(id) from public.ingredient where name = 'carrot'));
INSERT INTO public.ingredient (name)
VALUES ('pepper and black chinese mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'HOT PORK WITH SWEET-SOUR SAUCE'),
        (select max(id) from public.ingredient where name = 'pepper and black chinese mushrooms'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('PORK WITH BLACK AND WHITE MUSHROOMS AND BAMBOO SPROUTS',
        'https://korpa.ba/product_uploads/iFjySyL1QFB4YJ3WJbO2T1tUbwzz58qf.jpg', 350,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'PORK WITH BLACK AND WHITE MUSHROOMS AND BAMBOO SPROUTS'),
        (select max(id) from public.category where name = 'Pork'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'PORK WITH BLACK AND WHITE MUSHROOMS AND BAMBOO SPROUTS'),
        (select max(id)
         from public.ingredient
         where name =
               'mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('Fresh mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'PORK WITH BLACK AND WHITE MUSHROOMS AND BAMBOO SPROUTS'),
        (select max(id) from public.ingredient where name = 'Fresh mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('black and white chinese mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'PORK WITH BLACK AND WHITE MUSHROOMS AND BAMBOO SPROUTS'),
        (select max(id)
         from public.ingredient
         where name =
               'black and white chinese mushrooms'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('PORK WITH VEGETABLES', 'https://korpa.ba/product_uploads/QX3nZAo7MxQ4UntAn3WBzgVcMPcSl53F.jpg', 330,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'PORK WITH VEGETABLES'),
        (select max(id) from public.category where name = 'Pork'));
INSERT INTO public.ingredient (name)
VALUES ('pork and carrots')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'PORK WITH VEGETABLES'), (select max(id)
                                                                                from public.ingredient
                                                                                where name =
                                                                                      'pork and carrots'));
INSERT INTO public.ingredient (name)
VALUES ('peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'PORK WITH VEGETABLES'),
        (select max(id) from public.ingredient where name = 'peppers'));
INSERT INTO public.ingredient (name)
VALUES ('cabbage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'PORK WITH VEGETABLES'),
        (select max(id) from public.ingredient where name = 'cabbage'));
INSERT INTO public.ingredient (name)
VALUES ('fresh mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'PORK WITH VEGETABLES'),
        (select max(id) from public.ingredient where name = 'fresh mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('black and white Chinese mushrooms and zucchini')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'PORK WITH VEGETABLES'), (select max(id)
                                                                                from public.ingredient
                                                                                where name =
                                                                                      'black and white Chinese mushrooms and zucchini'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('DRY PORK RIBS', 'https://korpa.ba/product_uploads/VbSFYtClbgsDOgo00M8kvjpLCwi6fgyZ.jpg', 450,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'DRY PORK RIBS'),
        (select max(id) from public.category where name = 'Pork'));
INSERT INTO public.ingredient (name)
VALUES ('Crispy dry pork ribs')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'DRY PORK RIBS'),
        (select max(id) from public.ingredient where name = 'Crispy dry pork ribs'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('HOT PORK WITH NUDELS', 'https://korpa.ba/product_uploads/XB2nwJRs06nahKW4Mzar5uLPr3MOiqNA.jpg', 480,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'HOT PORK WITH NUDELS'),
        (select max(id) from public.category where name = 'Pork'));
INSERT INTO public.ingredient (name)
VALUES ('Soft and juicy pork pieces in hot sauce with chinese pea noodles')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'HOT PORK WITH NUDELS'), (select max(id)
                                                                                from public.ingredient
                                                                                where name = 'Soft and juicy pork pieces in hot sauce with chinese pea noodles'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('PORK WITH EGGPLANT', 'None', 340,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'PORK WITH EGGPLANT'),
        (select max(id) from public.category where name = 'Pork'));
INSERT INTO public.ingredient (name)
VALUES ('pork')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'PORK WITH EGGPLANT'),
        (select max(id) from public.ingredient where name = 'pork'));
INSERT INTO public.ingredient (name)
VALUES ('eggplant')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'PORK WITH EGGPLANT'),
        (select max(id) from public.ingredient where name = 'eggplant'));
INSERT INTO public.ingredient (name)
VALUES ('pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'PORK WITH EGGPLANT'),
        (select max(id) from public.ingredient where name = 'pepper'));
INSERT INTO public.ingredient (name)
VALUES ('carrot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'PORK WITH EGGPLANT'),
        (select max(id) from public.ingredient where name = 'carrot'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Spicy pork', 'None', 340,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Spicy pork'),
        (select max(id) from public.category where name = 'Pork'));
INSERT INTO public.ingredient (name)
VALUES ('pork')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spicy pork'),
        (select max(id) from public.ingredient where name = 'pork'));
INSERT INTO public.ingredient (name)
VALUES ('cabbage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spicy pork'),
        (select max(id) from public.ingredient where name = 'cabbage'));
INSERT INTO public.ingredient (name)
VALUES ('carrot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spicy pork'),
        (select max(id) from public.ingredient where name = 'carrot'));
INSERT INTO public.ingredient (name)
VALUES ('pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spicy pork'),
        (select max(id) from public.ingredient where name = 'pepper'));
INSERT INTO public.ingredient (name)
VALUES ('peanuts')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spicy pork'),
        (select max(id) from public.ingredient where name = 'peanuts'));
INSERT INTO public.ingredient (name)
VALUES ('spicy sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spicy pork'),
        (select max(id) from public.ingredient where name = 'spicy sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Sweet and sour pork', 'None', 340,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Sweet and sour pork'),
        (select max(id) from public.category where name = 'Pork'));
INSERT INTO public.ingredient (name)
VALUES ('pork')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Sweet and sour pork'),
        (select max(id) from public.ingredient where name = 'pork'));
INSERT INTO public.ingredient (name)
VALUES ('carrot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Sweet and sour pork'),
        (select max(id) from public.ingredient where name = 'carrot'));
INSERT INTO public.ingredient (name)
VALUES ('cucumber')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Sweet and sour pork'),
        (select max(id) from public.ingredient where name = 'cucumber'));
INSERT INTO public.ingredient (name)
VALUES ('sweet and sour sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Sweet and sour pork'),
        (select max(id) from public.ingredient where name = 'sweet and sour sauce'));
INSERT INTO public.category (name, photo)
VALUES ('Spaghetti', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('SEEFOOD SPAGHETTI', 'https://korpa.ba/product_uploads/9P2v6E3TgGKZPJywIGTklCYXaSraNC4l.jpg', 340,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'SEEFOOD SPAGHETTI'),
        (select max(id) from public.category where name = 'Spaghetti'));
INSERT INTO public.ingredient (name)
VALUES ('The spaghetti is Italian')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SEEFOOD SPAGHETTI'),
        (select max(id) from public.ingredient where name = 'The spaghetti is Italian'));
INSERT INTO public.ingredient (name)
VALUES ('pre-cooked')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SEEFOOD SPAGHETTI'),
        (select max(id) from public.ingredient where name = 'pre-cooked'));
INSERT INTO public.ingredient (name)
VALUES ('then fried in a sauce with Chinese spice')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SEEFOOD SPAGHETTI'),
        (select max(id) from public.ingredient where name = 'then fried in a sauce with Chinese spice'));
INSERT INTO public.ingredient (name)
VALUES ('tuna and vegetables')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SEEFOOD SPAGHETTI'),
        (select max(id) from public.ingredient where name = 'tuna and vegetables'));
INSERT INTO public.ingredient (name)
VALUES ('carrots')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SEEFOOD SPAGHETTI'),
        (select max(id) from public.ingredient where name = 'carrots'));
INSERT INTO public.ingredient (name)
VALUES ('peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SEEFOOD SPAGHETTI'),
        (select max(id) from public.ingredient where name = 'peppers'));
INSERT INTO public.ingredient (name)
VALUES ('cabbage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SEEFOOD SPAGHETTI'),
        (select max(id) from public.ingredient where name = 'cabbage'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('SPAGHETTI WITH MUSHROOMS', 'https://korpa.ba/product_uploads/08rvNv6vqMvDgE0WTv65urDUQGVz7GFX.jpg', 280,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH MUSHROOMS'),
        (select max(id) from public.category where name = 'Spaghetti'));
INSERT INTO public.ingredient (name)
VALUES ('The spaghetti is Italian')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH MUSHROOMS'),
        (select max(id) from public.ingredient where name = 'The spaghetti is Italian'));
INSERT INTO public.ingredient (name)
VALUES ('pre-cooked')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH MUSHROOMS'),
        (select max(id) from public.ingredient where name = 'pre-cooked'));
INSERT INTO public.ingredient (name)
VALUES ('then fried in soy sauce with Chinese spices')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH MUSHROOMS'),
        (select max(id) from public.ingredient where name = 'then fried in soy sauce with Chinese spices'));
INSERT INTO public.ingredient (name)
VALUES ('and vegetables from carrots')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH MUSHROOMS'),
        (select max(id) from public.ingredient where name = 'and vegetables from carrots'));
INSERT INTO public.ingredient (name)
VALUES ('peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH MUSHROOMS'),
        (select max(id) from public.ingredient where name = 'peppers'));
INSERT INTO public.ingredient (name)
VALUES ('Chinese salt and oil')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH MUSHROOMS'),
        (select max(id) from public.ingredient where name = 'Chinese salt and oil'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH MUSHROOMS'),
        (select max(id) from public.ingredient where name = 'mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('soy sauce and fresh mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH MUSHROOMS'),
        (select max(id) from public.ingredient where name = 'soy sauce and fresh mushrooms'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('SPAGHETTI WITH SPANACH', 'https://korpa.ba/product_uploads/L0biP6OLSKVnVUowiRPuqQCdX6L9pkBv.jpg', 280,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH SPANACH'),
        (select max(id) from public.category where name = 'Spaghetti'));
INSERT INTO public.ingredient (name)
VALUES ('The spaghetti is Italian')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH SPANACH'),
        (select max(id) from public.ingredient where name = 'The spaghetti is Italian'));
INSERT INTO public.ingredient (name)
VALUES ('pre-cooked')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH SPANACH'),
        (select max(id) from public.ingredient where name = 'pre-cooked'));
INSERT INTO public.ingredient (name)
VALUES ('then fried in soy sauce with Chinese spices')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH SPANACH'),
        (select max(id) from public.ingredient where name = 'then fried in soy sauce with Chinese spices'));
INSERT INTO public.ingredient (name)
VALUES ('and from vegetables carrots')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH SPANACH'),
        (select max(id) from public.ingredient where name = 'and from vegetables carrots'));
INSERT INTO public.ingredient (name)
VALUES ('peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH SPANACH'),
        (select max(id) from public.ingredient where name = 'peppers'));
INSERT INTO public.ingredient (name)
VALUES ('Chinese salt and oil')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH SPANACH'),
        (select max(id) from public.ingredient where name = 'Chinese salt and oil'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms (fresh mushrooms)')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH SPANACH'),
        (select max(id) from public.ingredient where name = 'mushrooms (fresh mushrooms)'));
INSERT INTO public.ingredient (name)
VALUES ('soy sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH SPANACH'),
        (select max(id) from public.ingredient where name = 'soy sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('SPAGHETTI WITH SHRIMPS', 'https://korpa.ba/product_uploads/uTD3abZd3VMQKZi3h1r4HRJgb8EihBGj.jpg', 340,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH SHRIMPS'),
        (select max(id) from public.category where name = 'Spaghetti'));
INSERT INTO public.ingredient (name)
VALUES ('The spaghetti is Italian')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH SHRIMPS'),
        (select max(id) from public.ingredient where name = 'The spaghetti is Italian'));
INSERT INTO public.ingredient (name)
VALUES ('pre-cooked')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH SHRIMPS'),
        (select max(id) from public.ingredient where name = 'pre-cooked'));
INSERT INTO public.ingredient (name)
VALUES ('then fried in soy sauce with Chinese spices')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH SHRIMPS'),
        (select max(id) from public.ingredient where name = 'then fried in soy sauce with Chinese spices'));
INSERT INTO public.ingredient (name)
VALUES ('and from vegetables carrots')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH SHRIMPS'),
        (select max(id) from public.ingredient where name = 'and from vegetables carrots'));
INSERT INTO public.ingredient (name)
VALUES ('peppers with shrimp')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH SHRIMPS'),
        (select max(id) from public.ingredient where name = 'peppers with shrimp'));
INSERT INTO public.ingredient (name)
VALUES ('Chinese salt and oil')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH SHRIMPS'),
        (select max(id) from public.ingredient where name = 'Chinese salt and oil'));
INSERT INTO public.ingredient (name)
VALUES ('soy sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH SHRIMPS'),
        (select max(id) from public.ingredient where name = 'soy sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('SPAGHETTI WITH CHICKEN', 'https://korpa.ba/product_uploads/5sEy5uOP4rfigk12IkNeFVWwycPatYcp.jpg', 300,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH CHICKEN'),
        (select max(id) from public.category where name = 'Spaghetti'));
INSERT INTO public.ingredient (name)
VALUES ('The spaghetti is Italian')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH CHICKEN'),
        (select max(id) from public.ingredient where name = 'The spaghetti is Italian'));
INSERT INTO public.ingredient (name)
VALUES ('pre-cooked')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH CHICKEN'),
        (select max(id) from public.ingredient where name = 'pre-cooked'));
INSERT INTO public.ingredient (name)
VALUES ('then fried in a sauce with Chinese spice')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH CHICKEN'),
        (select max(id) from public.ingredient where name = 'then fried in a sauce with Chinese spice'));
INSERT INTO public.ingredient (name)
VALUES ('chicken and vegetables')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH CHICKEN'),
        (select max(id) from public.ingredient where name = 'chicken and vegetables'));
INSERT INTO public.ingredient (name)
VALUES ('carrots')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH CHICKEN'),
        (select max(id) from public.ingredient where name = 'carrots'));
INSERT INTO public.ingredient (name)
VALUES ('peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH CHICKEN'),
        (select max(id) from public.ingredient where name = 'peppers'));
INSERT INTO public.ingredient (name)
VALUES ('cabbage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH CHICKEN'),
        (select max(id) from public.ingredient where name = 'cabbage'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('SPAGHETTI WITH CHICKEN, PORK AND BEEF',
        'https://korpa.ba/product_uploads/KWcma2dy4dhC0Kt6wxmbTKQMWUs6lDED.jpg', 310,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH CHICKEN, PORK AND BEEF'),
        (select max(id) from public.category where name = 'Spaghetti'));
INSERT INTO public.ingredient (name)
VALUES ('The spaghetti is Italian')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH CHICKEN, PORK AND BEEF'),
        (select max(id) from public.ingredient where name = 'The spaghetti is Italian'));
INSERT INTO public.ingredient (name)
VALUES ('pre-cooked')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH CHICKEN, PORK AND BEEF'),
        (select max(id) from public.ingredient where name = 'pre-cooked'));
INSERT INTO public.ingredient (name)
VALUES ('then fried in a sauce with Chinese spice')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH CHICKEN, PORK AND BEEF'),
        (select max(id) from public.ingredient where name = 'then fried in a sauce with Chinese spice'));
INSERT INTO public.ingredient (name)
VALUES ('three types of meat and vegetables')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH CHICKEN, PORK AND BEEF'),
        (select max(id) from public.ingredient where name = 'three types of meat and vegetables'));
INSERT INTO public.ingredient (name)
VALUES ('carrots')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH CHICKEN, PORK AND BEEF'),
        (select max(id) from public.ingredient where name = 'carrots'));
INSERT INTO public.ingredient (name)
VALUES ('peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH CHICKEN, PORK AND BEEF'),
        (select max(id) from public.ingredient where name = 'peppers'));
INSERT INTO public.ingredient (name)
VALUES ('cabbage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH CHICKEN, PORK AND BEEF'),
        (select max(id) from public.ingredient where name = 'cabbage'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('SPAGHETTI WITH TOMATOES', 'https://korpa.ba/product_uploads/O7DTT6fFSxCPTz6NefhS1ycByYtNJtqi.jpg', 260,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH TOMATOES'),
        (select max(id) from public.category where name = 'Spaghetti'));
INSERT INTO public.ingredient (name)
VALUES ('The spaghetti is Italian')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH TOMATOES'),
        (select max(id) from public.ingredient where name = 'The spaghetti is Italian'));
INSERT INTO public.ingredient (name)
VALUES ('pre-cooked')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH TOMATOES'),
        (select max(id) from public.ingredient where name = 'pre-cooked'));
INSERT INTO public.ingredient (name)
VALUES ('then fried in a sauce with Chinese spice')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH TOMATOES'),
        (select max(id) from public.ingredient where name = 'then fried in a sauce with Chinese spice'));
INSERT INTO public.ingredient (name)
VALUES ('and from vegetables')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH TOMATOES'),
        (select max(id) from public.ingredient where name = 'and from vegetables'));
INSERT INTO public.ingredient (name)
VALUES ('carrots')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH TOMATOES'),
        (select max(id) from public.ingredient where name = 'carrots'));
INSERT INTO public.ingredient (name)
VALUES ('peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH TOMATOES'),
        (select max(id) from public.ingredient where name = 'peppers'));
INSERT INTO public.ingredient (name)
VALUES ('cabbage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH TOMATOES'),
        (select max(id) from public.ingredient where name = 'cabbage'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('SPAGHETTI WITH VEGGIES', 'https://korpa.ba/product_uploads/GH18gG91G07rLojd06knA5ikxiKUBFvF.jpg', 260,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH VEGGIES'),
        (select max(id) from public.category where name = 'Spaghetti'));
INSERT INTO public.ingredient (name)
VALUES ('The spaghetti is Italian')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH VEGGIES'),
        (select max(id) from public.ingredient where name = 'The spaghetti is Italian'));
INSERT INTO public.ingredient (name)
VALUES ('pre-cooked')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH VEGGIES'),
        (select max(id) from public.ingredient where name = 'pre-cooked'));
INSERT INTO public.ingredient (name)
VALUES ('then fried in a sauce with Chinese spice')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH VEGGIES'),
        (select max(id) from public.ingredient where name = 'then fried in a sauce with Chinese spice'));
INSERT INTO public.ingredient (name)
VALUES ('and from vegetables')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH VEGGIES'),
        (select max(id) from public.ingredient where name = 'and from vegetables'));
INSERT INTO public.ingredient (name)
VALUES ('carrots')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH VEGGIES'),
        (select max(id) from public.ingredient where name = 'carrots'));
INSERT INTO public.ingredient (name)
VALUES ('peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH VEGGIES'),
        (select max(id) from public.ingredient where name = 'peppers'));
INSERT INTO public.ingredient (name)
VALUES ('cabbage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPAGHETTI WITH VEGGIES'),
        (select max(id) from public.ingredient where name = 'cabbage'));
INSERT INTO public.category (name, photo)
VALUES ('Sushi', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.category (name, photo)
VALUES ('Soups', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('SEAFOOD SOUP', 'https://korpa.ba/product_uploads/Pompp5U4SSag4WOip36Z9PwnCGN2sQu5.jpg', 190,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'SEAFOOD SOUP'),
        (select max(id) from public.category where name = 'Soups'));
INSERT INTO public.ingredient (name)
VALUES ('It is a combination of mussels')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SEAFOOD SOUP'),
        (select max(id) from public.ingredient where name = 'It is a combination of mussels'));
INSERT INTO public.ingredient (name)
VALUES ('shrimp')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SEAFOOD SOUP'),
        (select max(id) from public.ingredient where name = 'shrimp'));
INSERT INTO public.ingredient (name)
VALUES ('squid')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SEAFOOD SOUP'),
        (select max(id) from public.ingredient where name = 'squid'));
INSERT INTO public.ingredient (name)
VALUES ('black and white Chinese mushrooms and Chinese spices that make it thick and tasty')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SEAFOOD SOUP'), (select max(id)
                                                                        from public.ingredient
                                                                        where name =
                                                                              'black and white Chinese mushrooms and Chinese spices that make it thick and tasty'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('BROCCOLI SOUP', 'https://korpa.ba/product_uploads/bxlSCL4sbaevBV2WjFymqCbCMOkfZWZX.jpg', 160,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'BROCCOLI SOUP'),
        (select max(id) from public.category where name = 'Soups'));
INSERT INTO public.ingredient (name)
VALUES ('It consists of fresh broccoli')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'BROCCOLI SOUP'),
        (select max(id) from public.ingredient where name = 'It consists of fresh broccoli'));
INSERT INTO public.ingredient (name)
VALUES ('chopped into small pieces')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'BROCCOLI SOUP'),
        (select max(id) from public.ingredient where name = 'chopped into small pieces'));
INSERT INTO public.ingredient (name)
VALUES ('carrot and Chinese spices and is between clear and cream soup')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'BROCCOLI SOUP'), (select max(id)
                                                                         from public.ingredient
                                                                         where name = 'carrot and Chinese spices and is between clear and cream soup'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('VEGGIE SOUP', 'https://korpa.ba/product_uploads/o9D2hYgxnRj5tyILSQc0hLjq5KUY1Rzs.jpg', 150,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'VEGGIE SOUP'),
        (select max(id) from public.category where name = 'Soups'));
INSERT INTO public.ingredient (name)
VALUES ('It is a rich vegetarian soup consisting of pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'VEGGIE SOUP'),
        (select max(id) from public.ingredient where name = 'It is a rich vegetarian soup consisting of pepper'));
INSERT INTO public.ingredient (name)
VALUES ('carrot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'VEGGIE SOUP'),
        (select max(id) from public.ingredient where name = 'carrot'));
INSERT INTO public.ingredient (name)
VALUES ('fresh mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'VEGGIE SOUP'),
        (select max(id) from public.ingredient where name = 'fresh mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('black and white Chinese mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'VEGGIE SOUP'),
        (select max(id) from public.ingredient where name = 'black and white Chinese mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('cucumber and chinese spices that make it recommended for the summer period')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'VEGGIE SOUP'), (select max(id)
                                                                       from public.ingredient
                                                                       where name =
                                                                             'cucumber and chinese spices that make it recommended for the summer period'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('FISH SOUP', 'https://korpa.ba/product_uploads/u4xURmFCUCf9j8oBY1o02rGdwaHIFGaD.jpg', 160,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'FISH SOUP'),
        (select max(id) from public.category where name = 'Soups'));
INSERT INTO public.ingredient (name)
VALUES ('Pieces of fish fillets')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FISH SOUP'),
        (select max(id) from public.ingredient where name = 'Pieces of fish fillets'));
INSERT INTO public.ingredient (name)
VALUES ('carrots and chinese spices. It is easy')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FISH SOUP'),
        (select max(id) from public.ingredient where name = 'carrots and chinese spices. It is easy'));
INSERT INTO public.ingredient (name)
VALUES ('and recommended for children')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'FISH SOUP'),
        (select max(id) from public.ingredient where name = 'and recommended for children'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('CHICKEN SOUP', 'https://korpa.ba/product_uploads/mrvsGhcONphkBgRts0Gxe62m3KlJareh.jpg', 160,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN SOUP'),
        (select max(id) from public.category where name = 'Soups'));
INSERT INTO public.ingredient (name)
VALUES ('It is one of the most adored soups in our restaurant')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN SOUP'),
        (select max(id) from public.ingredient where name = 'It is one of the most adored soups in our restaurant'));
INSERT INTO public.ingredient (name)
VALUES ('where the meat is in the form of pieces')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN SOUP'),
        (select max(id) from public.ingredient where name = 'where the meat is in the form of pieces'));
INSERT INTO public.ingredient (name)
VALUES ('it is soft and juicy')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN SOUP'),
        (select max(id) from public.ingredient where name = 'it is soft and juicy'));
INSERT INTO public.ingredient (name)
VALUES ('there are carrots in the form of strips')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN SOUP'),
        (select max(id) from public.ingredient where name = 'there are carrots in the form of strips'));
INSERT INTO public.ingredient (name)
VALUES ('black and white Chinese mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN SOUP'),
        (select max(id) from public.ingredient where name = 'black and white Chinese mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('fresh mushrooms and Chinese spices')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'CHICKEN SOUP'),
        (select max(id) from public.ingredient where name = 'fresh mushrooms and Chinese spices'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('SPICY SOUR SOUP', 'https://korpa.ba/product_uploads/Zbn8JvCMgXKkabpLdN71eYgxzJA5pqW6.jpg', 150,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'SPICY SOUR SOUP'),
        (select max(id) from public.category where name = 'Soups'));
INSERT INTO public.ingredient (name)
VALUES ('It consists of tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPICY SOUR SOUP'),
        (select max(id) from public.ingredient where name = 'It consists of tomato'));
INSERT INTO public.ingredient (name)
VALUES ('cucumber')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPICY SOUR SOUP'),
        (select max(id) from public.ingredient where name = 'cucumber'));
INSERT INTO public.ingredient (name)
VALUES ('fresh mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPICY SOUR SOUP'),
        (select max(id) from public.ingredient where name = 'fresh mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPICY SOUR SOUP'),
        (select max(id) from public.ingredient where name = 'pepper'));
INSERT INTO public.ingredient (name)
VALUES ('and Chinese spices')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'SPICY SOUR SOUP'),
        (select max(id) from public.ingredient where name = 'and Chinese spices'));

INSERT INTO public.category (name, photo)
VALUES ('Sauces', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('SWEET SOUR SAUCE', 'None', 20,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'SWEET SOUR SAUCE'),
        (select max(id) from public.category where name = 'Sauces'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('HOT SAUCE', 'None', 20, (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'HOT SAUCE'),
        (select max(id) from public.category where name = 'Sauces'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('SOY SAUCE', 'None', 20, (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'SOY SAUCE'),
        (select max(id) from public.category where name = 'Sauces'));
INSERT INTO public.category (name, photo)
VALUES ('Drinks', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Coca Cola', 'https://korpa.ba/product_uploads/UOE0ccDKNplnStteWaE2X8CBU1P6tPsa.png', 100,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Coca Cola'),
        (select max(id) from public.category where name = 'Drinks'));
INSERT INTO public.ingredient (name)
VALUES ('0.45')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Coca Cola'),
        (select max(id) from public.ingredient where name = '0.45'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Coca Cola Zero', 'https://korpa.ba/product_uploads/Hbml2PBRoywm5YhTg9IJc1BLEVavVCTM.PNG', 100,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Coca Cola Zero'),
        (select max(id) from public.category where name = 'Drinks'));
INSERT INTO public.ingredient (name)
VALUES ('0.45')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Coca Cola Zero'),
        (select max(id) from public.ingredient where name = '0.45'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Rosa', 'https://korpa.ba/product_uploads/Ptgjhbcun6XM0yPPROsHInSKZ0730Bd7.png', 60,
        (select max(id) from public.restaurant where name = 'Star Ocean'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Rosa'),
        (select max(id) from public.category where name = 'Drinks'));
INSERT INTO public.ingredient (name)
VALUES ('0.5')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Rosa'),
        (select max(id) from public.ingredient where name = '0.5'));