INSERT INTO public.location (number, street)
VALUES ('16,', '13th November');
INSERT INTO public.restaurant (average_rating, delivery_time, logo, name, photo, location_id)
VALUES (0, '30-40 min', 'assets/images/plaza_de_toros.png', 'Plaza De Toros',
        'https://korpa.ba/restaurant_uploads/otcdJ6KgJKL2elYH6UiR8IlNt4I7N2Xt.jpg',
        (select max(id) from public.location));
INSERT INTO public.users (email, name, password, phone, surname, username, role)
VALUES ('plaza_de_toros_employee@mail.com', 'Employee', '$2a$10$VAlO0DtwWX42GHzGGM0DHOIx2kLX1EAhLwaTrXwEsj5n5K9Lr7EQO',
        '071234567', 'Plaza De Toros', 'plaza_de_toros_employee', 'employee');
INSERT INTO public.restaurant_employee (user_id, restaurant_id)
VALUES ((select max(user_id) from public.users), (select max(id) from public.restaurant));
INSERT INTO public.category (name, photo)
VALUES ('Starters', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Toro board', 'https://korpa.ba/product_uploads/oL9hpcnOLNVnYTckpVk4zXNugEw4KAhj.jpg', 1500,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Toro board'),
        (select max(id) from public.category where name = 'Starters'));
INSERT INTO public.ingredient (name)
VALUES ('Richly served board with various appetizers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Toro board'),
        (select max(id) from public.ingredient where name = 'Richly served board with various appetizers'));
INSERT INTO public.ingredient (name)
VALUES ('pork sausage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Toro board'),
        (select max(id) from public.ingredient where name = 'pork sausage'));
INSERT INTO public.ingredient (name)
VALUES ('small burgers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Toro board'),
        (select max(id) from public.ingredient where name = 'small burgers'));
INSERT INTO public.ingredient (name)
VALUES ('chicken fingers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Toro board'),
        (select max(id) from public.ingredient where name = 'chicken fingers'));
INSERT INTO public.ingredient (name)
VALUES ('breaded onion rings')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Toro board'),
        (select max(id) from public.ingredient where name = 'breaded onion rings'));
INSERT INTO public.ingredient (name)
VALUES ('stuffed mushrooms with pesto and parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Toro board'),
        (select max(id) from public.ingredient where name = 'stuffed mushrooms with pesto and parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('chicken wings')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Toro board'),
        (select max(id) from public.ingredient where name = 'chicken wings'));
INSERT INTO public.ingredient (name)
VALUES ('stuffed peppers with cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Toro board'),
        (select max(id) from public.ingredient where name = 'stuffed peppers with cheese'));
INSERT INTO public.ingredient (name)
VALUES ('buns with cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Toro board'),
        (select max(id) from public.ingredient where name = 'buns with cream'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Appetizer board', 'https://korpa.ba/product_uploads/VYJN56shtpkEynqEDDR2DTH3SRjfn11V.jpg', 950,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Appetizer board'),
        (select max(id) from public.category where name = 'Starters'));
INSERT INTO public.ingredient (name)
VALUES ('French fries with cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Appetizer board'),
        (select max(id) from public.ingredient where name = 'French fries with cheese'));
INSERT INTO public.ingredient (name)
VALUES ('breaded onion rings')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Appetizer board'),
        (select max(id) from public.ingredient where name = 'breaded onion rings'));
INSERT INTO public.ingredient (name)
VALUES ('chicken fingers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Appetizer board'),
        (select max(id) from public.ingredient where name = 'chicken fingers'));
INSERT INTO public.ingredient (name)
VALUES ('breaded zdenka')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Appetizer board'),
        (select max(id) from public.ingredient where name = 'breaded zdenka'));
INSERT INTO public.ingredient (name)
VALUES ('stuffed mushrooms with pesto and parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Appetizer board'),
        (select max(id) from public.ingredient where name = 'stuffed mushrooms with pesto and parmesan'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Breaded onion rings', 'https://korpa.ba/product_uploads/PaGxu7vXMvHE522a38u5C4szs4hqH6R4.jpg', 250,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Breaded onion rings'),
        (select max(id) from public.category where name = 'Starters'));
INSERT INTO public.ingredient (name)
VALUES ('With spicy salsa sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Breaded onion rings'),
        (select max(id) from public.ingredient where name = 'With spicy salsa sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chicken fingers', 'https://korpa.ba/product_uploads/upRcm9JQSpp1x5Hyd16gwbC1SR9Zdwvo.jpg', 350,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chicken fingers'),
        (select max(id) from public.category where name = 'Starters'));
INSERT INTO public.ingredient (name)
VALUES ('With tartar sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken fingers'),
        (select max(id) from public.ingredient where name = 'With tartar sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chicken wings', 'https://korpa.ba/product_uploads/cRVUVN79xoy8J6NOmtbfTdtKVTV7Cs9A.jpg', 290,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chicken wings'),
        (select max(id) from public.category where name = 'Starters'));
INSERT INTO public.ingredient (name)
VALUES ('Roasted marinated wings')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken wings'),
        (select max(id) from public.ingredient where name = 'Roasted marinated wings'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Baked potatoes', 'https://korpa.ba/product_uploads/Qh21zYY4H9iVbOPbi1E7yKCelTBayAZp.jpg', 260,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Baked potatoes'),
        (select max(id) from public.category where name = 'Starters'));
INSERT INTO public.ingredient (name)
VALUES ('Potatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Baked potatoes'),
        (select max(id) from public.ingredient where name = 'Potatoes'));
INSERT INTO public.ingredient (name)
VALUES ('cheese and bacon baked in the oven')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Baked potatoes'),
        (select max(id) from public.ingredient where name = 'cheese and bacon baked in the oven'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Zucchini', 'https://korpa.ba/product_uploads/6wg4QET35VTcV52JNqKokPPoK1fYhFJj.jpg', 180,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Zucchini'),
        (select max(id) from public.category where name = 'Starters'));
INSERT INTO public.ingredient (name)
VALUES ('Fried zucchini with tartar souce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Zucchini'),
        (select max(id) from public.ingredient where name = 'Fried zucchini with tartar souce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Sheep cheese', 'https://korpa.ba/product_uploads/x4Wog9iZR1pXWSfZZUw7A9hYLmzACeEe.jpg', 210,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Sheep cheese'),
        (select max(id) from public.category where name = 'Starters'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Cheese a la toro', 'https://korpa.ba/product_uploads/Y1AJuEvWrnFDaausfqHfz2TsCX8aDTHX.jpg', 270,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Cheese a la toro'),
        (select max(id) from public.category where name = 'Starters'));
INSERT INTO public.ingredient (name)
VALUES ('Grilled cheese with bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Cheese a la toro'),
        (select max(id) from public.ingredient where name = 'Grilled cheese with bacon'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Triangles with spices and butter', 'https://korpa.ba/product_uploads/SQwUZGfwZvf1TVQzPyQIGerSja014RxT.jpg',
        170, (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Triangles with spices and butter'),
        (select max(id) from public.category where name = 'Starters'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Triangles with cream', 'https://korpa.ba/product_uploads/jCKeRpr7vEgNYZWSZSrpEoGOrrM9tAOw.jpg', 270,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Triangles with cream'),
        (select max(id) from public.category where name = 'Starters'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Bakeries', 'https://korpa.ba/product_uploads/5Qxg7laVv9qvOGg6M0Eie6Pa4GMYnfE1.jpg', 130,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Bakeries'),
        (select max(id) from public.category where name = 'Starters'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Bakeries with melted cheese', 'https://korpa.ba/product_uploads/Xmdgt6Ni5M96EANfv6GIXCVi7abPTO6z.jpg', 200,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Bakeries with melted cheese'),
        (select max(id) from public.category where name = 'Starters'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Sausage (Made on Krushevos way)', 'https://korpa.ba/product_uploads/tMjPViswic7wjDMXBg2G0lRXOFFrFyRP.jpg', 300,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Sausage (Made on Krushevos way)'),
        (select max(id) from public.category where name = 'Starters'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Bacon chips', 'https://korpa.ba/product_uploads/8yoiVi48p9yFZ1Fr4lpekrPEj0YX0FGi.jpg', 380,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Bacon chips'),
        (select max(id) from public.category where name = 'Starters'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Speki', 'https://korpa.ba/product_uploads/JioJQfkNjgQCfsd9mi8yPnllE183rr40.jpg', 380,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Speki'),
        (select max(id) from public.category where name = 'Starters'));
INSERT INTO public.ingredient (name)
VALUES ('Chicken pieces rolled in yellow cheese and bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Speki'),
        (select max(id) from public.ingredient where name = 'Chicken pieces rolled in yellow cheese and bacon'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Beer appetizers', 'None', 990, (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Beer appetizers'),
        (select max(id) from public.category where name = 'Starters'));
INSERT INTO public.ingredient (name)
VALUES ('Fried onion rings')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Beer appetizers'),
        (select max(id) from public.ingredient where name = 'Fried onion rings'));
INSERT INTO public.ingredient (name)
VALUES ('Chicken wings')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Beer appetizers'),
        (select max(id) from public.ingredient where name = 'Chicken wings'));
INSERT INTO public.ingredient (name)
VALUES ('sausages')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Beer appetizers'),
        (select max(id) from public.ingredient where name = 'sausages'));
INSERT INTO public.ingredient (name)
VALUES ('french fries')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Beer appetizers'),
        (select max(id) from public.ingredient where name = 'french fries'));
INSERT INTO public.ingredient (name)
VALUES ('pancetta')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Beer appetizers'),
        (select max(id) from public.ingredient where name = 'pancetta'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Wine appetizers', 'None', 1300, (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Wine appetizers'),
        (select max(id) from public.category where name = 'Starters'));
INSERT INTO public.ingredient (name)
VALUES ('cheese and meat')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Wine appetizers'),
        (select max(id) from public.ingredient where name = 'cheese and meat'));
INSERT INTO public.category (name, photo)
VALUES ('Sandwiches', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chicken sandwich', 'https://korpa.ba/product_uploads/Riyz7vCWudTXYU6xvmLr5EkzfDudJDW8.jpg', 290,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chicken sandwich'),
        (select max(id) from public.category where name = 'Sandwiches'));
INSERT INTO public.ingredient (name)
VALUES ('Chicken steak')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken sandwich'),
        (select max(id) from public.ingredient where name = 'Chicken steak'));
INSERT INTO public.ingredient (name)
VALUES ('grated cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken sandwich'),
        (select max(id) from public.ingredient where name = 'grated cheese'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken sandwich'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken sandwich'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('french fries')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken sandwich'),
        (select max(id) from public.ingredient where name = 'french fries'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Bread burger', 'https://korpa.ba/product_uploads/VQZ3OLJnWwUXX9qxnJZl5lKHwsI7Sw44.jpg', 290,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Bread burger'),
        (select max(id) from public.category where name = 'Sandwiches'));
INSERT INTO public.ingredient (name)
VALUES ('Burger')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bread burger'),
        (select max(id) from public.ingredient where name = 'Burger'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bread burger'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bread burger'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('pickles')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bread burger'),
        (select max(id) from public.ingredient where name = 'pickles'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bread burger'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('spicy sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bread burger'),
        (select max(id) from public.ingredient where name = 'spicy sauce'));
INSERT INTO public.ingredient (name)
VALUES ('french fries')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bread burger'),
        (select max(id) from public.ingredient where name = 'french fries'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Club sandwich', 'https://korpa.ba/product_uploads/92X5jIkLT6PfON6kGLmgC5kcIm2fnjzL.jpg', 290,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Club sandwich'),
        (select max(id) from public.category where name = 'Sandwiches'));
INSERT INTO public.ingredient (name)
VALUES ('Grilled chicken')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Club sandwich'),
        (select max(id) from public.ingredient where name = 'Grilled chicken'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Club sandwich'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Club sandwich'),
        (select max(id) from public.ingredient where name = 'bacon'));
INSERT INTO public.ingredient (name)
VALUES ('cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Club sandwich'),
        (select max(id) from public.ingredient where name = 'cheese'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient (name)
VALUES ('pickles')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Club sandwich'),
        (select max(id) from public.ingredient where name = 'pickles'));
INSERT INTO public.ingredient (name)
VALUES ('spicy sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Club sandwich'),
        (select max(id) from public.ingredient where name = 'spicy sauce'));
INSERT INTO public.ingredient (name)
VALUES ('french fries')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Club sandwich'),
        (select max(id) from public.ingredient where name = 'french fries'));
INSERT INTO public.category (name, photo)
VALUES ('Pizza', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Toro', 'https://korpa.ba/product_uploads/9r46mg7QTDoLvqTafEHIQKOGWCQu2YTi.jpg', 400,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Toro'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Toro'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Toro'),
        (select max(id) from public.ingredient where name = 'cheese'));
INSERT INTO public.ingredient (name)
VALUES ('pepperoni')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Toro'),
        (select max(id) from public.ingredient where name = 'pepperoni'));
INSERT INTO public.ingredient (name)
VALUES ('bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Toro'),
        (select max(id) from public.ingredient where name = 'bacon'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Toro'),
        (select max(id) from public.ingredient where name = 'mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('olives')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Toro'),
        (select max(id) from public.ingredient where name = 'olives'));
INSERT INTO public.ingredient (name)
VALUES ('capers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Toro'),
        (select max(id) from public.ingredient where name = 'capers'));
INSERT INTO public.ingredient (name)
VALUES ('peppers')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Toro'),
        (select max(id) from public.ingredient where name = 'peppers'));
INSERT INTO public.ingredient (name)
VALUES ('onions')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Toro'),
        (select max(id) from public.ingredient where name = 'onions'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Prosciutto (pork ham)', 'https://korpa.ba/product_uploads/UB8qWteoETBzRJFtqtAoHWfW0aKy1aK9.jpg', 420,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Prosciutto (pork ham)'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Prosciutto (pork ham)'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Prosciutto (pork ham)'),
        (select max(id) from public.ingredient where name = 'cheese'));
INSERT INTO public.ingredient (name)
VALUES ('pork ham')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Prosciutto (pork ham)'),
        (select max(id) from public.ingredient where name = 'pork ham'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Prosciutto (pork ham)'),
        (select max(id) from public.ingredient where name = 'mushrooms'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Prosciutto (beef prosciutto)', 'https://korpa.ba/product_uploads/G3kFvMySH3rrg9c9RnRP8bzYCKyk9tyC.jpg', 420,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Prosciutto (beef prosciutto)'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Prosciutto (beef prosciutto)'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Prosciutto (beef prosciutto)'),
        (select max(id) from public.ingredient where name = 'cheese'));
INSERT INTO public.ingredient (name)
VALUES ('beef prosciutto')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Prosciutto (beef prosciutto)'),
        (select max(id) from public.ingredient where name = 'beef prosciutto'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Prosciutto (beef prosciutto)'),
        (select max(id) from public.ingredient where name = 'mushrooms'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chicken', 'https://korpa.ba/product_uploads/V85l4KFnwI5FcCzANvHiy3UHA3q7WMSh.jpg', 390,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chicken'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken'),
        (select max(id) from public.ingredient where name = 'cheese'));
INSERT INTO public.ingredient (name)
VALUES ('chicken')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken'),
        (select max(id) from public.ingredient where name = 'chicken'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken'),
        (select max(id) from public.ingredient where name = 'mushrooms'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Diavolla', 'https://korpa.ba/product_uploads/XbGWSVWfA9GWp1UB9OpNUTT14MpQqycd.jpg', 360,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Diavolla'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Diavolla'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('yellow cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Diavolla'),
        (select max(id) from public.ingredient where name = 'yellow cheese'));
INSERT INTO public.ingredient (name)
VALUES ('pepperoni')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Diavolla'),
        (select max(id) from public.ingredient where name = 'pepperoni'));
INSERT INTO public.ingredient (name)
VALUES ('rocket')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Diavolla'),
        (select max(id) from public.ingredient where name = 'rocket'));
INSERT INTO public.ingredient (name)
VALUES ('sesame')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Diavolla'),
        (select max(id) from public.ingredient where name = 'sesame'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Margherita', 'None', 300, (select max(id) from public.restaurant where name = 'Plaza De Toros'));
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
VALUES ('cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Margherita'),
        (select max(id) from public.ingredient where name = 'cheese'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Capricciosa', 'https://korpa.ba/product_uploads/Vw9sRnx4y4syq5Ot9RUikQus81UKNwiR.jpg', 350,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
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
VALUES ('cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Capricciosa'),
        (select max(id) from public.ingredient where name = 'cheese'));
INSERT INTO public.ingredient (name)
VALUES ('ham')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Capricciosa'),
        (select max(id) from public.ingredient where name = 'ham'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Capricciosa'),
        (select max(id) from public.ingredient where name = 'mushrooms'));
INSERT INTO public.category (name, photo)
VALUES ('Pastrmajlija', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chicken Pastrmajlija', 'https://korpa.ba/product_uploads/9xYPh264Y6O3EFYQ15fdEZ0SDhadjAtf.jpg', 320,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chicken Pastrmajlija'),
        (select max(id) from public.category where name = 'Pastrmajlija'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Pork Pastrmajlija', 'https://korpa.ba/product_uploads/L76cvJTkv0bhpZYQq3hXvcSiO3WMCEMN.jpg', 320,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Pork Pastrmajlija'),
        (select max(id) from public.category where name = 'Pastrmajlija'));
INSERT INTO public.category (name, photo)
VALUES ('Pasta', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Penne Roma', 'https://korpa.ba/product_uploads/FlO82KufigFIonYXSgmWV25kBsGKgBPd.jpg', 290,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Penne Roma'),
        (select max(id) from public.category where name = 'Pasta'));
INSERT INTO public.ingredient (name)
VALUES ('White sauce with ham and mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Penne Roma'),
        (select max(id) from public.ingredient where name = 'White sauce with ham and mushrooms'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Spaghetti tomato', 'https://korpa.ba/product_uploads/kuojB9YTXWlWgQn146gM8Gy9bPeWbiBF.jpg', 250,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Spaghetti tomato'),
        (select max(id) from public.category where name = 'Pasta'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spaghetti tomato'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spaghetti tomato'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Taljatelli Mediterranean', 'https://korpa.ba/product_uploads/I4avJ9yK5HiQwg0eIVu1UjAFSxBXKKLJ.jpg', 310,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Taljatelli Mediterranean'),
        (select max(id) from public.category where name = 'Pasta'));
INSERT INTO public.ingredient (name)
VALUES ('Homemade pesto')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Taljatelli Mediterranean'),
        (select max(id) from public.ingredient where name = 'Homemade pesto'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Taljatelli Mediterranean'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Spaghetti carbonara', 'https://korpa.ba/product_uploads/MsSGI0nbVr2qgBAmF6gee20yi2KOyP9A.jpg', 320,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Spaghetti carbonara'),
        (select max(id) from public.category where name = 'Pasta'));
INSERT INTO public.ingredient (name)
VALUES ('Bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spaghetti carbonara'),
        (select max(id) from public.ingredient where name = 'Bacon'));
INSERT INTO public.ingredient (name)
VALUES ('egg')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spaghetti carbonara'),
        (select max(id) from public.ingredient where name = 'egg'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spaghetti carbonara'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Spaghetti bolognese', 'https://korpa.ba/product_uploads/AWwXq1h2Pxs5g4iZ7LXBd9yaTApP2gHR.jpg', 390,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Spaghetti bolognese'),
        (select max(id) from public.category where name = 'Pasta'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spaghetti bolognese'),
        (select max(id) from public.ingredient where name = 'Tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('ground beef')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spaghetti bolognese'),
        (select max(id) from public.ingredient where name = 'ground beef'));
INSERT INTO public.ingredient (name)
VALUES ('vegetables')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Spaghetti bolognese'),
        (select max(id) from public.ingredient where name = 'vegetables'));
INSERT INTO public.category (name, photo)
VALUES ('Main dishes', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('La carne de cerdo', 'https://korpa.ba/product_uploads/1JFNxPdJRiGnJ2CFmY3HAzWr1yCCXm2D.jpg', 480,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'La carne de cerdo'),
        (select max(id) from public.category where name = 'Main dishes'));
INSERT INTO public.ingredient (name)
VALUES ('Two pieces of marinated pork neck - homemade')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'La carne de cerdo'),
        (select max(id) from public.ingredient where name = 'Two pieces of marinated pork neck - homemade'));
INSERT INTO public.ingredient (name)
VALUES ('served with vegetables and french fries')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'La carne de cerdo'),
        (select max(id) from public.ingredient where name = 'served with vegetables and french fries'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Rebro a la Toro', 'https://korpa.ba/product_uploads/B6cqNOizmnJnxk29tbA9Z56Y2sIfiF2h.jpg', 460,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Rebro a la Toro'),
        (select max(id) from public.category where name = 'Main dishes'));
INSERT INTO public.ingredient (name)
VALUES ('Pork ribs')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Rebro a la Toro'),
        (select max(id) from public.ingredient where name = 'Pork ribs'));
INSERT INTO public.ingredient (name)
VALUES ('rice')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Rebro a la Toro'),
        (select max(id) from public.ingredient where name = 'rice'));
INSERT INTO public.ingredient (name)
VALUES ('potatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Rebro a la Toro'),
        (select max(id) from public.ingredient where name = 'potatoes'));
INSERT INTO public.ingredient (name)
VALUES ('chips')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Rebro a la Toro'),
        (select max(id) from public.ingredient where name = 'chips'));
INSERT INTO public.ingredient (name)
VALUES ('Spanish sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Rebro a la Toro'),
        (select max(id) from public.ingredient where name = 'Spanish sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Kremenadla', 'https://korpa.ba/product_uploads/qIS06NK9TkAueGg15ZrkvJBifiSzhOAS.jpg', 460,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Kremenadla'),
        (select max(id) from public.category where name = 'Main dishes'));
INSERT INTO public.ingredient (name)
VALUES ('Two meatballs')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Kremenadla'),
        (select max(id) from public.ingredient where name = 'Two meatballs'));
INSERT INTO public.ingredient (name)
VALUES ('served with french fries')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Kremenadla'),
        (select max(id) from public.ingredient where name = 'served with french fries'));
INSERT INTO public.ingredient (name)
VALUES ('rice')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Kremenadla'),
        (select max(id) from public.ingredient where name = 'rice'));
INSERT INTO public.ingredient (name)
VALUES ('grilled vegetables and Spanish sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Kremenadla'),
        (select max(id) from public.ingredient where name = 'grilled vegetables and Spanish sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Salchiacha', 'https://korpa.ba/product_uploads/DvTbqfTlIDTs9F3S3I8svOJZeiaekwv0.jpg', 380,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Salchiacha'),
        (select max(id) from public.category where name = 'Main dishes'));
INSERT INTO public.ingredient (name)
VALUES ('Homemade spicy sausage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Salchiacha'),
        (select max(id) from public.ingredient where name = 'Homemade spicy sausage'));
INSERT INTO public.ingredient (name)
VALUES ('served with potato chips and Spanish sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Salchiacha'),
        (select max(id) from public.ingredient where name = 'served with potato chips and Spanish sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Pan Toro', 'https://korpa.ba/product_uploads/QcNNA85gS41n5cGlvOgbNbRAI5CFe5Hc.jpg', 530,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Pan Toro'),
        (select max(id) from public.category where name = 'Main dishes'));
INSERT INTO public.ingredient (name)
VALUES ('Mixed meat with mushrooms and roasted cheese with warm bread')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pan Toro'), (select max(id)
                                                                    from public.ingredient
                                                                    where name = 'Mixed meat with mushrooms and roasted cheese with warm bread'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Sharska', 'https://korpa.ba/product_uploads/hdAsc7bUUiOsYadI1ODyV46UEiTaHRFe.jpg', 390,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Sharska'),
        (select max(id) from public.category where name = 'Main dishes'));
INSERT INTO public.ingredient (name)
VALUES ('Cheeseburger and cream ball')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Sharska'),
        (select max(id) from public.ingredient where name = 'Cheeseburger and cream ball'));
INSERT INTO public.ingredient (name)
VALUES ('served with french fries and Spanish sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Sharska'),
        (select max(id) from public.ingredient where name = 'served with french fries and Spanish sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Burger a la Toro', 'https://korpa.ba/product_uploads/3PdvsNr4ouuw8pjiL9qUEbZNURjwtmHe.jpg', 450,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Burger a la Toro'),
        (select max(id) from public.category where name = 'Main dishes'));
INSERT INTO public.ingredient (name)
VALUES ('Burger')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger a la Toro'),
        (select max(id) from public.ingredient where name = 'Burger'));
INSERT INTO public.ingredient (name)
VALUES ('bread')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger a la Toro'),
        (select max(id) from public.ingredient where name = 'bread'));
INSERT INTO public.ingredient (name)
VALUES ('cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger a la Toro'),
        (select max(id) from public.ingredient where name = 'cream'));
INSERT INTO public.ingredient (name)
VALUES ('bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger a la Toro'),
        (select max(id) from public.ingredient where name = 'bacon'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger a la Toro'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('spicy sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger a la Toro'),
        (select max(id) from public.ingredient where name = 'spicy sauce'));
INSERT INTO public.ingredient (name)
VALUES ('french fries')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger a la Toro'),
        (select max(id) from public.ingredient where name = 'french fries'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Steak', 'https://korpa.ba/product_uploads/3p2FgAVCeL4OA5W8rf7eiWqfw1tvRiyg.jpg', 1370,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Steak'),
        (select max(id) from public.category where name = 'Main dishes'));
INSERT INTO public.ingredient (name)
VALUES ('Served with butter')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Steak'),
        (select max(id) from public.ingredient where name = 'Served with butter'));
INSERT INTO public.ingredient (name)
VALUES ('grilled vegetables')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Steak'),
        (select max(id) from public.ingredient where name = 'grilled vegetables'));
INSERT INTO public.ingredient (name)
VALUES ('rice')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Steak'),
        (select max(id) from public.ingredient where name = 'rice'));
INSERT INTO public.ingredient (name)
VALUES ('french fries')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Steak'),
        (select max(id) from public.ingredient where name = 'french fries'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Veal flint', 'https://korpa.ba/product_uploads/ljbLGMFCeNqx5fhm1HDLD9OibzfU1ZIK.jpg', 790,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Veal flint'),
        (select max(id) from public.category where name = 'Main dishes'));
INSERT INTO public.ingredient (name)
VALUES ('Served with french fries and rice')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Veal flint'),
        (select max(id) from public.ingredient where name = 'Served with french fries and rice'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Mixed grill', 'https://korpa.ba/product_uploads/KT4NmaoFf0UyrfQZZ9hhoIOxzy3NWZdX.jpg', 1400,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Mixed grill'),
        (select max(id) from public.category where name = 'Main dishes'));
INSERT INTO public.ingredient (name)
VALUES ('Burger')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mixed grill'),
        (select max(id) from public.ingredient where name = 'Burger'));
INSERT INTO public.ingredient (name)
VALUES ('karabatak')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mixed grill'),
        (select max(id) from public.ingredient where name = 'karabatak'));
INSERT INTO public.ingredient (name)
VALUES ('steak')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mixed grill'),
        (select max(id) from public.ingredient where name = 'steak'));
INSERT INTO public.ingredient (name)
VALUES ('smoked pork')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mixed grill'),
        (select max(id) from public.ingredient where name = 'smoked pork'));
INSERT INTO public.ingredient (name)
VALUES ('rice and french fries')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mixed grill'),
        (select max(id) from public.ingredient where name = 'rice and french fries'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('White puree', 'https://korpa.ba/product_uploads/fP4g9UTrJso4l83AcO13w7JcBdW7wHnr.jpg', 460,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'White puree'),
        (select max(id) from public.category where name = 'Main dishes'));
INSERT INTO public.ingredient (name)
VALUES ('Chicken steak in white mushroom sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'White puree'),
        (select max(id) from public.ingredient where name = 'Chicken steak in white mushroom sauce'));
INSERT INTO public.ingredient (name)
VALUES ('french fries')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'White puree'),
        (select max(id) from public.ingredient where name = 'french fries'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Curry puree', 'https://korpa.ba/product_uploads/M1FKjhwPYVNisYlq4U5wO8FJOrv73fOq.jpg', 460,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Curry puree'),
        (select max(id) from public.category where name = 'Main dishes'));
INSERT INTO public.ingredient (name)
VALUES ('Chicken steak in curry and mushroom sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Curry puree'),
        (select max(id) from public.ingredient where name = 'Chicken steak in curry and mushroom sauce'));
INSERT INTO public.ingredient (name)
VALUES ('french fries')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Curry puree'),
        (select max(id) from public.ingredient where name = 'french fries'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Piri Piri', 'https://korpa.ba/product_uploads/BdZfbpHavJmowE9g3iRxMuiLTbLUito3.jpg', 460,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Piri Piri'),
        (select max(id) from public.category where name = 'Main dishes'));
INSERT INTO public.ingredient (name)
VALUES ('Chicken drumstick in soy sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Piri Piri'),
        (select max(id) from public.ingredient where name = 'Chicken drumstick in soy sauce'));
INSERT INTO public.ingredient (name)
VALUES ('french fries and rice')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Piri Piri'),
        (select max(id) from public.ingredient where name = 'french fries and rice'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Stuffed chicken steak', 'https://korpa.ba/product_uploads/74yMRMg0QMxgldAMLZiDdOCXjgKSYNqz.jpg', 510,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Stuffed chicken steak'),
        (select max(id) from public.category where name = 'Main dishes'));
INSERT INTO public.ingredient (name)
VALUES ('Chicken steak stuffed with cheese and bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Stuffed chicken steak'),
        (select max(id) from public.ingredient where name = 'Chicken steak stuffed with cheese and bacon'));
INSERT INTO public.ingredient (name)
VALUES ('served with grilled vegetables and french fries')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Stuffed chicken steak'),
        (select max(id) from public.ingredient where name = 'served with grilled vegetables and french fries'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Wrap Chicken', 'https://korpa.ba/product_uploads/FrlnoPqOVVmp2PA1YjqK5O6bTvywFko4.jpg', 360,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Wrap Chicken'),
        (select max(id) from public.category where name = 'Main dishes'));
INSERT INTO public.ingredient (name)
VALUES ('Chicken tortilla')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Wrap Chicken'),
        (select max(id) from public.ingredient where name = 'Chicken tortilla'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Wrap Chicken'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('light yogurt sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Wrap Chicken'),
        (select max(id) from public.ingredient where name = 'light yogurt sauce'));
INSERT INTO public.ingredient (name)
VALUES ('melted cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Wrap Chicken'),
        (select max(id) from public.ingredient where name = 'melted cheese'));
INSERT INTO public.ingredient (name)
VALUES ('french fries')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Wrap Chicken'),
        (select max(id) from public.ingredient where name = 'french fries'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Salmon', 'https://korpa.ba/product_uploads/U7a1UywhnpfuxltLxZfBY6fRBCnMApEQ.jpg', 1100,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Salmon'),
        (select max(id) from public.category where name = 'Main dishes'));
INSERT INTO public.ingredient (name)
VALUES ('Baked salmon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Salmon'),
        (select max(id) from public.ingredient where name = 'Baked salmon'));
INSERT INTO public.ingredient (name)
VALUES ('grilled vegetables')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Salmon'),
        (select max(id) from public.ingredient where name = 'grilled vegetables'));
INSERT INTO public.ingredient (name)
VALUES ('french fries')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Salmon'),
        (select max(id) from public.ingredient where name = 'french fries'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Mixed meet and veggies skewer', 'https://korpa.ba/product_uploads/3PCWmlMVH7bcnDdCjbKS63zv4rSx05PE.jpg', 510,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Mixed meet and veggies skewer'),
        (select max(id) from public.category where name = 'Main dishes'));
INSERT INTO public.ingredient (name)
VALUES ('Served with fries')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Mixed meet and veggies skewer'),
        (select max(id) from public.ingredient where name = 'Served with fries'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Open rib', 'None', 460, (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Open rib'),
        (select max(id) from public.category where name = 'Main dishes'));
INSERT INTO public.ingredient (name)
VALUES ('Pork rib')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Open rib'),
        (select max(id) from public.ingredient where name = 'Pork rib'));
INSERT INTO public.ingredient (name)
VALUES ('french fries')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Open rib'),
        (select max(id) from public.ingredient where name = 'french fries'));
INSERT INTO public.ingredient (name)
VALUES ('rice')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Open rib'),
        (select max(id) from public.ingredient where name = 'rice'));
INSERT INTO public.ingredient (name)
VALUES ('vegetables')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Open rib'),
        (select max(id) from public.ingredient where name = 'vegetables'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Rump steak', 'None', 900, (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Rump steak'),
        (select max(id) from public.category where name = 'Main dishes'));
INSERT INTO public.ingredient (name)
VALUES ('Rump steak')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Rump steak'),
        (select max(id) from public.ingredient where name = 'Rump steak'));
INSERT INTO public.ingredient (name)
VALUES ('chips')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Rump steak'),
        (select max(id) from public.ingredient where name = 'chips'));
INSERT INTO public.ingredient (name)
VALUES ('rice')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Rump steak'),
        (select max(id) from public.ingredient where name = 'rice'));
INSERT INTO public.ingredient (name)
VALUES ('vegetables')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Rump steak'),
        (select max(id) from public.ingredient where name = 'vegetables'));
INSERT INTO public.ingredient (name)
VALUES ('spanish sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Rump steak'),
        (select max(id) from public.ingredient where name = 'spanish sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Pork knuckle', 'None', 460, (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Pork knuckle'),
        (select max(id) from public.category where name = 'Main dishes'));
INSERT INTO public.ingredient (name)
VALUES ('Baked potatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork knuckle'),
        (select max(id) from public.ingredient where name = 'Baked potatoes'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Beef muscle in mushroom and baked potato sauce', 'None', 700,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Beef muscle in mushroom and baked potato sauce'),
        (select max(id) from public.category where name = 'Main dishes'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Tomahawk', 'None', 1800, (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Tomahawk'),
        (select max(id) from public.category where name = 'Main dishes'));
INSERT INTO public.ingredient (name)
VALUES ('Baked potatoes and vegetables')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tomahawk'),
        (select max(id) from public.ingredient where name = 'Baked potatoes and vegetables'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('T-bone', 'None', 1100, (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'T-bone'),
        (select max(id) from public.category where name = 'Main dishes'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'T-bone'),
        (select max(id) from public.ingredient where name = 'mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('vegetables')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'T-bone'),
        (select max(id) from public.ingredient where name = 'vegetables'));
INSERT INTO public.ingredient (name)
VALUES ('seasoned butter')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'T-bone'),
        (select max(id) from public.ingredient where name = 'seasoned butter'));
INSERT INTO public.category (name, photo)
VALUES ('Salads', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Royal Hall', 'https://korpa.ba/product_uploads/xhu9t3Ri2ZPCtIKrLBvKZHCkapBfA1W1.jpg', 290,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Royal Hall'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Richly served salad with chicken')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Royal Hall'),
        (select max(id) from public.ingredient where name = 'Richly served salad with chicken'));
INSERT INTO public.ingredient (name)
VALUES ('a mixture of lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Royal Hall'),
        (select max(id) from public.ingredient where name = 'a mixture of lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('cumin')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Royal Hall'),
        (select max(id) from public.ingredient where name = 'cumin'));
INSERT INTO public.ingredient (name)
VALUES ('sherry tomatoes and onions. Seasoned with white royal sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Royal Hall'), (select max(id)
                                                                      from public.ingredient
                                                                      where name = 'sherry tomatoes and onions. Seasoned with white royal sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Appetizer salad', 'https://korpa.ba/product_uploads/N6iQ0RZkg1aVa8lFatcYgoB5ldtZbhx7.jpg', 370,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Appetizer salad'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Mixture of lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Appetizer salad'),
        (select max(id) from public.ingredient where name = 'Mixture of lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('cabbage')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Appetizer salad'),
        (select max(id) from public.ingredient where name = 'cabbage'));
INSERT INTO public.ingredient (name)
VALUES ('carrot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Appetizer salad'),
        (select max(id) from public.ingredient where name = 'carrot'));
INSERT INTO public.ingredient (name)
VALUES ('red pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Appetizer salad'),
        (select max(id) from public.ingredient where name = 'red pepper'));
INSERT INTO public.ingredient (name)
VALUES ('corn')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Appetizer salad'),
        (select max(id) from public.ingredient where name = 'corn'));
INSERT INTO public.ingredient (name)
VALUES ('cucumber')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Appetizer salad'),
        (select max(id) from public.ingredient where name = 'cucumber'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Appetizer salad'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('prosciutto. Seasoned with balsamic cream and cocktail sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Appetizer salad'), (select max(id)
                                                                           from public.ingredient
                                                                           where name = 'prosciutto. Seasoned with balsamic cream and cocktail sauce'));
INSERT INTO public.ingredient (name)
VALUES ('served with hot bread')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Appetizer salad'),
        (select max(id) from public.ingredient where name = 'served with hot bread'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Sheef salad', 'https://korpa.ba/product_uploads/bAGYnvh6jSPE59rxemwhptkRfptNsziQ.jpg', 300,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Sheef salad'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Richly served salad with chicken')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Sheef salad'),
        (select max(id) from public.ingredient where name = 'Richly served salad with chicken'));
INSERT INTO public.ingredient (name)
VALUES ('boiled egg')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Sheef salad'),
        (select max(id) from public.ingredient where name = 'boiled egg'));
INSERT INTO public.ingredient (name)
VALUES ('cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Sheef salad'),
        (select max(id) from public.ingredient where name = 'cheese'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Sheef salad'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Sheef salad'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('olives')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Sheef salad'),
        (select max(id) from public.ingredient where name = 'olives'));
INSERT INTO public.ingredient (name)
VALUES ('seasoned with vinaigrette sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Sheef salad'),
        (select max(id) from public.ingredient where name = 'seasoned with vinaigrette sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Toro salad', 'https://korpa.ba/product_uploads/zGy2BcpQOnvWDehgQvzxswspjWpwSFgB.jpg', 320,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Toro salad'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Richly served salad with tuna')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Toro salad'),
        (select max(id) from public.ingredient where name = 'Richly served salad with tuna'));
INSERT INTO public.ingredient (name)
VALUES ('boiled egg')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Toro salad'),
        (select max(id) from public.ingredient where name = 'boiled egg'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Toro salad'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Toro salad'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Toro salad'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('olives')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Toro salad'),
        (select max(id) from public.ingredient where name = 'olives'));
INSERT INTO public.ingredient (name)
VALUES ('seasoned with spicy mustard dressing')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Toro salad'),
        (select max(id) from public.ingredient where name = 'seasoned with spicy mustard dressing'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Healthy salad', 'https://korpa.ba/product_uploads/C83rRLQFA3mQAghTNBlsIaijOVKjaldV.jpg', 280,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Healthy salad'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Blend of lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Healthy salad'),
        (select max(id) from public.ingredient where name = 'Blend of lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('rocket')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Healthy salad'),
        (select max(id) from public.ingredient where name = 'rocket'));
INSERT INTO public.ingredient (name)
VALUES ('spinach')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Healthy salad'),
        (select max(id) from public.ingredient where name = 'spinach'));
INSERT INTO public.ingredient (name)
VALUES ('celery')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Healthy salad'),
        (select max(id) from public.ingredient where name = 'celery'));
INSERT INTO public.ingredient (name)
VALUES ('cucumber')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Healthy salad'),
        (select max(id) from public.ingredient where name = 'cucumber'));
INSERT INTO public.ingredient (name)
VALUES ('sherry tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Healthy salad'),
        (select max(id) from public.ingredient where name = 'sherry tomato'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Healthy salad'),
        (select max(id) from public.ingredient where name = 'mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('corn')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Healthy salad'),
        (select max(id) from public.ingredient where name = 'corn'));
INSERT INTO public.ingredient (name)
VALUES ('seasoned with olive oil dressing')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Healthy salad'),
        (select max(id) from public.ingredient where name = 'seasoned with olive oil dressing'));
INSERT INTO public.ingredient (name)
VALUES ('balsamic and onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Healthy salad'),
        (select max(id) from public.ingredient where name = 'balsamic and onion'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Greek salad', 'https://korpa.ba/product_uploads/q4tciwcvnu1ghIncm7u9Ux0WwMJvy6u7.jpg', 240,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Greek salad'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Greek salad'),
        (select max(id) from public.ingredient where name = 'Tomato'));
INSERT INTO public.ingredient (name)
VALUES ('cucumber')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Greek salad'),
        (select max(id) from public.ingredient where name = 'cucumber'));
INSERT INTO public.ingredient (name)
VALUES ('pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Greek salad'),
        (select max(id) from public.ingredient where name = 'pepper'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Greek salad'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('olives')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Greek salad'),
        (select max(id) from public.ingredient where name = 'olives'));
INSERT INTO public.ingredient (name)
VALUES ('parsley')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Greek salad'),
        (select max(id) from public.ingredient where name = 'parsley'));
INSERT INTO public.ingredient (name)
VALUES ('oregano')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Greek salad'),
        (select max(id) from public.ingredient where name = 'oregano'));
INSERT INTO public.ingredient (name)
VALUES ('cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Greek salad'),
        (select max(id) from public.ingredient where name = 'cheese'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Macedonian salad', 'https://korpa.ba/product_uploads/UsXNvDiQdZo6lE835Wvk3YZqKIKsRlJ1.jpg', 230,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
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
VALUES ('roasted pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian salad'),
        (select max(id) from public.ingredient where name = 'roasted pepper'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian salad'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('parsley')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macedonian salad'),
        (select max(id) from public.ingredient where name = 'parsley'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Shopska salad', 'https://korpa.ba/product_uploads/8dzInQacdmjYaujD65gW2dG1jZfZIgSO.jpg', 240,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
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
VALUES ('pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Shopska salad'),
        (select max(id) from public.ingredient where name = 'pepper'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Shopska salad'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('olives')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Shopska salad'),
        (select max(id) from public.ingredient where name = 'olives'));
INSERT INTO public.ingredient (name)
VALUES ('parsley')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Shopska salad'),
        (select max(id) from public.ingredient where name = 'parsley'));
INSERT INTO public.ingredient (name)
VALUES ('oregano')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Shopska salad'),
        (select max(id) from public.ingredient where name = 'oregano'));
INSERT INTO public.ingredient (name)
VALUES ('cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Shopska salad'),
        (select max(id) from public.ingredient where name = 'cheese'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Season salad', 'None', 180, (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Season salad'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.category (name, photo)
VALUES ('Desserts', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Bombi', 'https://korpa.ba/product_uploads/NmCN1mndlaLiGeiqeCfBA6VQfVBzwn6q.jpg', 240,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Bombi'),
        (select max(id) from public.category where name = 'Desserts'));
INSERT INTO public.ingredient (name)
VALUES ('Pancake filled with vanilla ice cream topped with chocolate praline and wild berries')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bombi'), (select max(id)
                                                                 from public.ingredient
                                                                 where name =
                                                                       'Pancake filled with vanilla ice cream topped with chocolate praline and wild berries'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Dutch cake (seasonal)', 'https://korpa.ba/product_uploads/8rxG4hArb0hh43vCImIY5uhjOxGaohtR.jpg', 210,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Dutch cake (seasonal)'),
        (select max(id) from public.category where name = 'Desserts'));
INSERT INTO public.ingredient (name)
VALUES ('Apple cake')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Dutch cake (seasonal)'),
        (select max(id) from public.ingredient where name = 'Apple cake'));
INSERT INTO public.ingredient (name)
VALUES ('ice cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Dutch cake (seasonal)'),
        (select max(id) from public.ingredient where name = 'ice cream'));
INSERT INTO public.ingredient (name)
VALUES ('whipped cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Dutch cake (seasonal)'),
        (select max(id) from public.ingredient where name = 'whipped cream'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Dulce frambeuza', 'https://korpa.ba/product_uploads/WncafDbF6DwRbt7lpcGUHiDsLST17QZm.jpg', 140,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Dulce frambeuza'),
        (select max(id) from public.category where name = 'Desserts'));
INSERT INTO public.ingredient (name)
VALUES ('Cream cake of raspberry and white chocolate')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Dulce frambeuza'),
        (select max(id) from public.ingredient where name = 'Cream cake of raspberry and white chocolate'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Toro cake', 'https://korpa.ba/product_uploads/UuwS6Xrs5XFMOTKiy1ohYhb7tWMljL2f.jpg', 240,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Toro cake'),
        (select max(id) from public.category where name = 'Desserts'));
INSERT INTO public.ingredient (name)
VALUES ('Homemade cake with crushed walnuts')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Toro cake'),
        (select max(id) from public.ingredient where name = 'Homemade cake with crushed walnuts'));
INSERT INTO public.ingredient (name)
VALUES ('chocolate and a ball of vanilla ice cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Toro cake'),
        (select max(id) from public.ingredient where name = 'chocolate and a ball of vanilla ice cream'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Dulce chocolate', 'https://korpa.ba/product_uploads/MyCH5eaLFsDN8wif6zUcYUAy1c5jPUVN.jpg', 140,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Dulce chocolate'),
        (select max(id) from public.category where name = 'Desserts'));
INSERT INTO public.ingredient (name)
VALUES ('Cream chocolate cake and chocolate biscuits')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Dulce chocolate'),
        (select max(id) from public.ingredient where name = 'Cream chocolate cake and chocolate biscuits'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Dessert for four', 'https://korpa.ba/product_uploads/jTEieFX6O8pWvxGqpqKSCZ3dANUxLJKx.jpg', 900,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Dessert for four'),
        (select max(id) from public.category where name = 'Desserts'));
INSERT INTO public.ingredient (name)
VALUES ('A variety of mild pleasures')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Dessert for four'),
        (select max(id) from public.ingredient where name = 'A variety of mild pleasures'));
INSERT INTO public.category (name, photo)
VALUES ('Belgian waffles', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Waffle Banachoko', 'https://korpa.ba/product_uploads/T3bbmBCWATNeHwvE4Q6Kix4JRn8dy7n5.jpg', 250,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Waffle Banachoko'),
        (select max(id) from public.category where name = 'Belgian waffles'));
INSERT INTO public.ingredient (name)
VALUES ('With chocolate praline')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Waffle Banachoko'),
        (select max(id) from public.ingredient where name = 'With chocolate praline'));
INSERT INTO public.ingredient (name)
VALUES ('banana')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Waffle Banachoko'),
        (select max(id) from public.ingredient where name = 'banana'));
INSERT INTO public.ingredient (name)
VALUES ('whipped cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Waffle Banachoko'),
        (select max(id) from public.ingredient where name = 'whipped cream'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Waffle Crunchy', 'https://korpa.ba/product_uploads/QURmka0jrDW3yEDT2768CBg8q10FbH1t.jpg', 260,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Waffle Crunchy'),
        (select max(id) from public.category where name = 'Belgian waffles'));
INSERT INTO public.ingredient (name)
VALUES ('Crunchy chocolate')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Waffle Crunchy'),
        (select max(id) from public.ingredient where name = 'Crunchy chocolate'));
INSERT INTO public.ingredient (name)
VALUES ('cherries')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Waffle Crunchy'),
        (select max(id) from public.ingredient where name = 'cherries'));
INSERT INTO public.ingredient (name)
VALUES ('a ball of vanilla ice cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Waffle Crunchy'),
        (select max(id) from public.ingredient where name = 'a ball of vanilla ice cream'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Waffle Oreo - Fruit', 'https://korpa.ba/product_uploads/CO2iLob9j1RBtdg1JFfGVROo2R4aEdfV.jpg', 260,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Waffle Oreo - Fruit'),
        (select max(id) from public.category where name = 'Belgian waffles'));
INSERT INTO public.ingredient (name)
VALUES ('Oreo cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Waffle Oreo - Fruit'),
        (select max(id) from public.ingredient where name = 'Oreo cream'));
INSERT INTO public.ingredient (name)
VALUES ('wild berries')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Waffle Oreo - Fruit'),
        (select max(id) from public.ingredient where name = 'wild berries'));
INSERT INTO public.ingredient (name)
VALUES ('a scoop of vanilla ice cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Waffle Oreo - Fruit'),
        (select max(id) from public.ingredient where name = 'a scoop of vanilla ice cream'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Waffle Toro', 'https://korpa.ba/product_uploads/3wlBGbI57u3FIkMQ7RBuUXLLJrBd6Yay.jpg', 260,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Waffle Toro'),
        (select max(id) from public.category where name = 'Belgian waffles'));
INSERT INTO public.ingredient (name)
VALUES ('Forest fruits')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Waffle Toro'),
        (select max(id) from public.ingredient where name = 'Forest fruits'));
INSERT INTO public.ingredient (name)
VALUES ('a ball of vanilla ice cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Waffle Toro'),
        (select max(id) from public.ingredient where name = 'a ball of vanilla ice cream'));
INSERT INTO public.ingredient (name)
VALUES ('whipped cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Waffle Toro'),
        (select max(id) from public.ingredient where name = 'whipped cream'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chocolate waffle', 'None', 260, (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chocolate waffle'),
        (select max(id) from public.category where name = 'Belgian waffles'));
INSERT INTO public.ingredient (name)
VALUES ('chocolate')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chocolate waffle'),
        (select max(id) from public.ingredient where name = 'chocolate'));
INSERT INTO public.ingredient (name)
VALUES ('banana')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chocolate waffle'),
        (select max(id) from public.ingredient where name = 'banana'));
INSERT INTO public.ingredient (name)
VALUES ('raspberries and whipped cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chocolate waffle'),
        (select max(id) from public.ingredient where name = 'raspberries and whipped cream'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Hot chocolate waffle', 'None', 250, (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Hot chocolate waffle'),
        (select max(id) from public.category where name = 'Belgian waffles'));
INSERT INTO public.ingredient (name)
VALUES ('chocolate and cherries')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Hot chocolate waffle'),
        (select max(id) from public.ingredient where name = 'chocolate and cherries'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Bueno waffle', 'None', 260, (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Bueno waffle'),
        (select max(id) from public.category where name = 'Belgian waffles'));
INSERT INTO public.ingredient (name)
VALUES ('Bueno cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bueno waffle'),
        (select max(id) from public.ingredient where name = 'Bueno cream'));
INSERT INTO public.ingredient (name)
VALUES ('chocolate')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bueno waffle'),
        (select max(id) from public.ingredient where name = 'chocolate'));
INSERT INTO public.ingredient (name)
VALUES ('vanilla ice cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bueno waffle'),
        (select max(id) from public.ingredient where name = 'vanilla ice cream'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Oreo waffle', 'None', 250, (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Oreo waffle'),
        (select max(id) from public.category where name = 'Belgian waffles'));
INSERT INTO public.ingredient (name)
VALUES ('Orea cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Oreo waffle'),
        (select max(id) from public.ingredient where name = 'Orea cream'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chocolate raspberry waffle', 'None', 250,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chocolate raspberry waffle'),
        (select max(id) from public.category where name = 'Belgian waffles'));
INSERT INTO public.ingredient (name)
VALUES ('chocolate and raspberry')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chocolate raspberry waffle'),
        (select max(id) from public.ingredient where name = 'chocolate and raspberry'));
INSERT INTO public.category (name, photo)
VALUES ('Sour belgian waffles', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Royal Waffle', 'https://korpa.ba/product_uploads/XB3C4Z8ulPZLwicBp1OwIgDL81DuEMmw.jpg', 260,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Royal Waffle'),
        (select max(id) from public.category where name = 'Sour belgian waffles'));
INSERT INTO public.ingredient (name)
VALUES ('White royal sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Royal Waffle'),
        (select max(id) from public.ingredient where name = 'White royal sauce'));
INSERT INTO public.ingredient (name)
VALUES ('cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Royal Waffle'),
        (select max(id) from public.ingredient where name = 'cheese'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Royal Waffle'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Waffle Chicken', 'https://korpa.ba/product_uploads/YzSxGtUDpeNtaDHG4fnM2GrKiUpLrCWi.jpg', 270,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Waffle Chicken'),
        (select max(id) from public.category where name = 'Sour belgian waffles'));
INSERT INTO public.ingredient (name)
VALUES ('Sour cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Waffle Chicken'),
        (select max(id) from public.ingredient where name = 'Sour cream'));
INSERT INTO public.ingredient (name)
VALUES ('chicken')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Waffle Chicken'),
        (select max(id) from public.ingredient where name = 'chicken'));
INSERT INTO public.ingredient (name)
VALUES ('iceberg')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Waffle Chicken'),
        (select max(id) from public.ingredient where name = 'iceberg'));
INSERT INTO public.ingredient (name)
VALUES ('cucumber')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Waffle Chicken'),
        (select max(id) from public.ingredient where name = 'cucumber'));
INSERT INTO public.ingredient (name)
VALUES ('sherry tomatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Waffle Chicken'),
        (select max(id) from public.ingredient where name = 'sherry tomatoes'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Waffle Extra', 'https://korpa.ba/product_uploads/U9zEH1WOZTupk9pNpwEXjXcVV8N1DAcS.jpg', 260,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Waffle Extra'),
        (select max(id) from public.category where name = 'Sour belgian waffles'));
INSERT INTO public.ingredient (name)
VALUES ('Sour cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Waffle Extra'),
        (select max(id) from public.ingredient where name = 'Sour cream'));
INSERT INTO public.ingredient (name)
VALUES ('yellow cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Waffle Extra'),
        (select max(id) from public.ingredient where name = 'yellow cheese'));
INSERT INTO public.ingredient (name)
VALUES ('fried bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Waffle Extra'),
        (select max(id) from public.ingredient where name = 'fried bacon'));
INSERT INTO public.ingredient (name)
VALUES ('egg')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Waffle Extra'),
        (select max(id) from public.ingredient where name = 'egg'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Waffle Cream', 'https://korpa.ba/product_uploads/IZdpkt2c26nwZQC3ZMwL2ihIVFH2uSap.jpg', 260,
        (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Waffle Cream'),
        (select max(id) from public.category where name = 'Sour belgian waffles'));
INSERT INTO public.ingredient (name)
VALUES ('Cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Waffle Cream'),
        (select max(id) from public.ingredient where name = 'Cream'));
INSERT INTO public.ingredient (name)
VALUES ('delicious ham')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Waffle Cream'),
        (select max(id) from public.ingredient where name = 'delicious ham'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Waffle Cream'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('cucumber')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Waffle Cream'),
        (select max(id) from public.ingredient where name = 'cucumber'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Waffle Cream'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Pizza waffle', 'None', 250, (select max(id) from public.restaurant where name = 'Plaza De Toros'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Pizza waffle'),
        (select max(id) from public.category where name = 'Sour belgian waffles'));
INSERT INTO public.ingredient (name)
VALUES ('cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pizza waffle'),
        (select max(id) from public.ingredient where name = 'cheese'));
INSERT INTO public.ingredient (name)
VALUES ('chicken ham')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pizza waffle'),
        (select max(id) from public.ingredient where name = 'chicken ham'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pizza waffle'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pizza waffle'),
        (select max(id) from public.ingredient where name = 'pepper'));
INSERT INTO public.ingredient (name)
VALUES ('oregano')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pizza waffle'),
        (select max(id) from public.ingredient where name = 'oregano'));