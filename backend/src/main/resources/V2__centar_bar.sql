INSERT INTO public.location (number, street)
VALUES ('13,', 'Dimitrie Chupovski');
INSERT INTO public.restaurant (average_rating, delivery_time, logo, name, photo, location_id)
VALUES (0, '30-40 min', 'assets/images/centar_bar.png', 'Centar Bar',
        'https://korpa.ba/restaurant_uploads/IFmppM3eFyiRgnGrH7Vy3oY9WNpB6sp1.jpg',
        (select max(id) from public.location));
INSERT INTO public.users (email, name, password, phone, surname, username, role)
VALUES ('centar_bar_employee@mail.com', 'Employee', '$2a$10$VAlO0DtwWX42GHzGGM0DHOIx2kLX1EAhLwaTrXwEsj5n5K9Lr7EQO',
        '071234567', 'Centar Bar', 'centar_bar_employee', 'employee');
INSERT INTO public.restaurant_employee (user_id, restaurant_id)
VALUES ((select max(user_id) from public.users), (select max(id) from public.restaurant));
insert into public.category (name, photo)
VALUES ('Salads', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Caesar salad', 'https://korpa.ba/product_uploads/FWfFcnUAhQHR5dsxgZXO9e1MnApJG1xd.jpg', 340,
        (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Caesar salad'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Chicken meat')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar salad'),
        (select max(id) from public.ingredient where name = 'Chicken meat'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar salad'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('rocket')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar salad'),
        (select max(id) from public.ingredient where name = 'rocket'));
INSERT INTO public.ingredient (name)
VALUES ('cherry tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar salad'),
        (select max(id) from public.ingredient where name = 'cherry tomato'));
INSERT INTO public.ingredient (name)
VALUES ('corn')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar salad'),
        (select max(id) from public.ingredient where name = 'corn'));
INSERT INTO public.ingredient (name)
VALUES ('cubes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar salad'),
        (select max(id) from public.ingredient where name = 'cubes'));
INSERT INTO public.ingredient (name)
VALUES ('dressing *Allergens: milk')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar salad'),
        (select max(id) from public.ingredient where name = 'dressing *Allergens: milk'));
INSERT INTO public.ingredient (name)
VALUES ('mustard')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar salad'),
        (select max(id) from public.ingredient where name = 'mustard'));
INSERT INTO public.ingredient (name)
VALUES ('gluten')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar salad'),
        (select max(id) from public.ingredient where name = 'gluten'));
INSERT INTO public.ingredient (name)
VALUES ('egg')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar salad'),
        (select max(id) from public.ingredient where name = 'egg'));
INSERT INTO public.ingredient (name)
VALUES ('celery')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Caesar salad'),
        (select max(id) from public.ingredient where name = 'celery'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Quinoa salad', 'https://korpa.ba/product_uploads/tGlz6z4HwApX7eLyVbtQwEhdqvtwcu85.jpg', 310,
        (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Quinoa salad'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quinoa salad'),
        (select max(id) from public.ingredient where name = 'Lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('red lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quinoa salad'),
        (select max(id) from public.ingredient where name = 'red lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('rocket')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quinoa salad'),
        (select max(id) from public.ingredient where name = 'rocket'));
INSERT INTO public.ingredient (name)
VALUES ('radish')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quinoa salad'),
        (select max(id) from public.ingredient where name = 'radish'));
INSERT INTO public.ingredient (name)
VALUES ('sherry tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quinoa salad'),
        (select max(id) from public.ingredient where name = 'sherry tomato'));
INSERT INTO public.ingredient (name)
VALUES ('orange')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quinoa salad'),
        (select max(id) from public.ingredient where name = 'orange'));
INSERT INTO public.ingredient (name)
VALUES ('green apples')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quinoa salad'),
        (select max(id) from public.ingredient where name = 'green apples'));
INSERT INTO public.ingredient (name)
VALUES ('raisins')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quinoa salad'),
        (select max(id) from public.ingredient where name = 'raisins'));
INSERT INTO public.ingredient (name)
VALUES ('honey')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quinoa salad'),
        (select max(id) from public.ingredient where name = 'honey'));
INSERT INTO public.ingredient (name)
VALUES ('mustard  *Allergens: mustard')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quinoa salad'),
        (select max(id) from public.ingredient where name = 'mustard  *Allergens: mustard'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Goat cheese salad', 'https://korpa.ba/product_uploads/ClxK6miK9DCXla4unGAGNNBjXDFMZ0YB.jpg', 330,
        (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Goat cheese salad'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Goat cheese salad'),
        (select max(id) from public.ingredient where name = 'Lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('rocket')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Goat cheese salad'),
        (select max(id) from public.ingredient where name = 'rocket'));
INSERT INTO public.ingredient (name)
VALUES ('radish')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Goat cheese salad'),
        (select max(id) from public.ingredient where name = 'radish'));
INSERT INTO public.ingredient (name)
VALUES ('goat cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Goat cheese salad'),
        (select max(id) from public.ingredient where name = 'goat cheese'));
INSERT INTO public.ingredient (name)
VALUES ('raisins')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Goat cheese salad'),
        (select max(id) from public.ingredient where name = 'raisins'));
INSERT INTO public.ingredient (name)
VALUES ('carrots')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Goat cheese salad'),
        (select max(id) from public.ingredient where name = 'carrots'));
INSERT INTO public.ingredient (name)
VALUES ('mustard')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Goat cheese salad'),
        (select max(id) from public.ingredient where name = 'mustard'));
INSERT INTO public.ingredient (name)
VALUES ('dressing *Allergens: milk')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Goat cheese salad'),
        (select max(id) from public.ingredient where name = 'dressing *Allergens: milk'));
INSERT INTO public.ingredient (name)
VALUES ('gluten')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Goat cheese salad'),
        (select max(id) from public.ingredient where name = 'gluten'));
INSERT INTO public.ingredient (name)
VALUES ('mustard')
ON CONFLICT (name) DO NOTHING;

INSERT INTO public.ingredient (name)
VALUES ('sesame')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Goat cheese salad'),
        (select max(id) from public.ingredient where name = 'sesame'));
INSERT INTO public.ingredient (name)
VALUES ('nuts')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Goat cheese salad'),
        (select max(id) from public.ingredient where name = 'nuts'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Shopska salad', 'https://korpa.ba/product_uploads/LJl6nUqWOJj7S3xEg2CG76dsYMpMsI8z.jpg', 250,
        (select max(id) from public.restaurant where name = 'Centar Bar'));
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
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Shopska salad'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('parsley *Allergens: milk')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Shopska salad'),
        (select max(id) from public.ingredient where name = 'parsley *Allergens: milk'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Tuna salad', 'https://korpa.ba/product_uploads/QloqQ0qP7N8nEUJ2yr8FE2rR6Ah76rxv.jpg', 320,
        (select max(id) from public.restaurant where name = 'Centar Bar'));
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
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tuna salad'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('rocket')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tuna salad'),
        (select max(id) from public.ingredient where name = 'rocket'));
INSERT INTO public.ingredient (name)
VALUES ('radish')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tuna salad'),
        (select max(id) from public.ingredient where name = 'radish'));
INSERT INTO public.ingredient (name)
VALUES ('olive oil')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tuna salad'),
        (select max(id) from public.ingredient where name = 'olive oil'));
INSERT INTO public.ingredient (name)
VALUES ('corn')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tuna salad'),
        (select max(id) from public.ingredient where name = 'corn'));
INSERT INTO public.ingredient (name)
VALUES ('lemon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tuna salad'),
        (select max(id) from public.ingredient where name = 'lemon'));
INSERT INTO public.ingredient (name)
VALUES ('sherry tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tuna salad'),
        (select max(id) from public.ingredient where name = 'sherry tomato'));
INSERT INTO public.ingredient (name)
VALUES ('olive')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tuna salad'),
        (select max(id) from public.ingredient where name = 'olive'));
INSERT INTO public.ingredient (name)
VALUES ('red bean *Allergens: fish')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Tuna salad'),
        (select max(id) from public.ingredient where name = 'red bean *Allergens: fish'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Crab salad', 'https://korpa.ba/product_uploads/qz63cFQoXkhPn1cAAMs0Ay60uaMKp1eW.jpg', 370,
        (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Crab salad'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Sea shrimp')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Crab salad'),
        (select max(id) from public.ingredient where name = 'Sea shrimp'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Crab salad'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('red lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Crab salad'),
        (select max(id) from public.ingredient where name = 'red lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('rocket')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Crab salad'),
        (select max(id) from public.ingredient where name = 'rocket'));
INSERT INTO public.ingredient (name)
VALUES ('chicory')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Crab salad'),
        (select max(id) from public.ingredient where name = 'chicory'));
INSERT INTO public.ingredient (name)
VALUES ('peanuts')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Crab salad'),
        (select max(id) from public.ingredient where name = 'peanuts'));
INSERT INTO public.ingredient (name)
VALUES ('sherry tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Crab salad'),
        (select max(id) from public.ingredient where name = 'sherry tomato'));
INSERT INTO public.ingredient (name)
VALUES ('peach')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Crab salad'),
        (select max(id) from public.ingredient where name = 'peach'));
INSERT INTO public.ingredient (name)
VALUES ('butter')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Crab salad'),
        (select max(id) from public.ingredient where name = 'butter'));
INSERT INTO public.ingredient (name)
VALUES ('olive oil')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Crab salad'),
        (select max(id) from public.ingredient where name = 'olive oil'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Crab salad'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Avocado salad', 'https://korpa.ba/product_uploads/BoXjZFliBnrooO0uJ2wOZskHJRvi38Zs.jpg', 350,
        (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Avocado salad'),
        (select max(id) from public.category where name = 'Salads'));
INSERT INTO public.ingredient (name)
VALUES ('Avocado')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Avocado salad'),
        (select max(id) from public.ingredient where name = 'Avocado'));
INSERT INTO public.ingredient (name)
VALUES ('olives')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Avocado salad'),
        (select max(id) from public.ingredient where name = 'olives'));
INSERT INTO public.ingredient (name)
VALUES ('lime')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Avocado salad'),
        (select max(id) from public.ingredient where name = 'lime'));
INSERT INTO public.ingredient (name)
VALUES ('cherry tomatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Avocado salad'),
        (select max(id) from public.ingredient where name = 'cherry tomatoes'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Avocado salad'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('olive oil')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Avocado salad'),
        (select max(id) from public.ingredient where name = 'olive oil'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Avocado salad'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('red lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Avocado salad'),
        (select max(id) from public.ingredient where name = 'red lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('arugula')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Avocado salad'),
        (select max(id) from public.ingredient where name = 'arugula'));
INSERT INTO public.ingredient (name)
VALUES ('radicchio')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Avocado salad'),
        (select max(id) from public.ingredient where name = 'radicchio'));
INSERT INTO public.ingredient (name)
VALUES ('italian blend')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Avocado salad'),
        (select max(id) from public.ingredient where name = 'italian blend'));
INSERT INTO public.ingredient (name)
VALUES ('red onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Avocado salad'),
        (select max(id) from public.ingredient where name = 'red onion'));
insert into public.category (name, photo)
VALUES ('Fast and tasty', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Three types of sausages', 'https://korpa.ba/product_uploads/Vk2p8pNV0AHV7TaACBykYzVKemjndGO1.jpg', 370,
        (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Three types of sausages'),
        (select max(id) from public.category where name = 'Fast and tasty'));
INSERT INTO public.ingredient (name)
VALUES ('Pork')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Three types of sausages'),
        (select max(id) from public.ingredient where name = 'Pork'));
INSERT INTO public.ingredient (name)
VALUES ('red pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Three types of sausages'),
        (select max(id) from public.ingredient where name = 'red pepper'));
INSERT INTO public.ingredient (name)
VALUES ('bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Three types of sausages'),
        (select max(id) from public.ingredient where name = 'bacon'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Three types of sausages'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.ingredient (name)
VALUES ('leek')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Three types of sausages'),
        (select max(id) from public.ingredient where name = 'leek'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Three types of sausages'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('hot pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Three types of sausages'),
        (select max(id) from public.ingredient where name = 'hot pepper'));
INSERT INTO public.ingredient (name)
VALUES ('spicy mustard')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Three types of sausages'),
        (select max(id) from public.ingredient where name = 'spicy mustard'));
INSERT INTO public.ingredient (name)
VALUES ('bread')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Three types of sausages'),
        (select max(id) from public.ingredient where name = 'bread'));
INSERT INTO public.ingredient (name)
VALUES ('veggies')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Three types of sausages'),
        (select max(id) from public.ingredient where name = 'veggies'));
INSERT INTO public.ingredient (name)
VALUES ('potatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Three types of sausages'),
        (select max(id) from public.ingredient where name = 'potatoes'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chicken wings in BBQ Sauce', 'https://korpa.ba/product_uploads/1PTMEADBZUFy3Haw6Kyrm96WHdFlXqZj.jpg', 300,
        (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chicken wings in BBQ Sauce'),
        (select max(id) from public.category where name = 'Fast and tasty'));
INSERT INTO public.ingredient (name)
VALUES ('Chicken wings')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken wings in BBQ Sauce'),
        (select max(id) from public.ingredient where name = 'Chicken wings'));
INSERT INTO public.ingredient (name)
VALUES ('BBQ Sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken wings in BBQ Sauce'),
        (select max(id) from public.ingredient where name = 'BBQ Sauce'));
INSERT INTO public.ingredient (name)
VALUES ('soy sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken wings in BBQ Sauce'),
        (select max(id) from public.ingredient where name = 'soy sauce'));
INSERT INTO public.ingredient (name)
VALUES ('ginger. *Allergens: soy')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken wings in BBQ Sauce'),
        (select max(id) from public.ingredient where name = 'ginger. *Allergens: soy'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chicken Quesadilla', 'https://korpa.ba/product_uploads/Slmxirsee7ibbaZmXbTob42L9TzZVA5T.jpg', 350,
        (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chicken Quesadilla'),
        (select max(id) from public.category where name = 'Fast and tasty'));
INSERT INTO public.ingredient (name)
VALUES ('Chicken steak')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Quesadilla'),
        (select max(id) from public.ingredient where name = 'Chicken steak'));
INSERT INTO public.ingredient (name)
VALUES ('onions')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Quesadilla'),
        (select max(id) from public.ingredient where name = 'onions'));
INSERT INTO public.ingredient (name)
VALUES ('pellets')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Quesadilla'),
        (select max(id) from public.ingredient where name = 'pellets'));
INSERT INTO public.ingredient (name)
VALUES ('lemon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Quesadilla'),
        (select max(id) from public.ingredient where name = 'lemon'));
INSERT INTO public.ingredient (name)
VALUES ('cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Quesadilla'),
        (select max(id) from public.ingredient where name = 'cheese'));
INSERT INTO public.ingredient (name)
VALUES ('tortillas. *Allergens: milk')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Quesadilla'),
        (select max(id) from public.ingredient where name = 'tortillas. *Allergens: milk'));
INSERT INTO public.ingredient (name)
VALUES ('egg')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Quesadilla'),
        (select max(id) from public.ingredient where name = 'egg'));
INSERT INTO public.ingredient (name)
VALUES ('mustard')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Quesadilla'),
        (select max(id) from public.ingredient where name = 'mustard'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Macaroni and cheese', 'https://korpa.ba/product_uploads/vGLweLtLWTx3vlds5h6OnhcjynrhxUmv.jpg', 300,
        (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Macaroni and cheese'),
        (select max(id) from public.category where name = 'Fast and tasty'));
INSERT INTO public.ingredient (name)
VALUES ('Macaroni')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macaroni and cheese'),
        (select max(id) from public.ingredient where name = 'Macaroni'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macaroni and cheese'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('edam')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macaroni and cheese'),
        (select max(id) from public.ingredient where name = 'edam'));
INSERT INTO public.ingredient (name)
VALUES ('cooking cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macaroni and cheese'),
        (select max(id) from public.ingredient where name = 'cooking cream'));
INSERT INTO public.ingredient (name)
VALUES ('salt')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macaroni and cheese'),
        (select max(id) from public.ingredient where name = 'salt'));
INSERT INTO public.ingredient (name)
VALUES ('pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macaroni and cheese'),
        (select max(id) from public.ingredient where name = 'pepper'));
INSERT INTO public.ingredient (name)
VALUES ('Italian mixture. *Allergens: gluten')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macaroni and cheese'),
        (select max(id) from public.ingredient where name = 'Italian mixture. *Allergens: gluten'));
INSERT INTO public.ingredient (name)
VALUES ('milk')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Macaroni and cheese'),
        (select max(id) from public.ingredient where name = 'milk'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('potatoes with garlic', 'https://korpa.ba/product_uploads/N48kFfsOZEcqc2xjYZn7KGiYWXwxYImA.jpg', 250,
        (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'potatoes with garlic'),
        (select max(id) from public.category where name = 'Fast and tasty'));
INSERT INTO public.ingredient (name)
VALUES ('Potato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'potatoes with garlic'),
        (select max(id) from public.ingredient where name = 'Potato'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'potatoes with garlic'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.ingredient (name)
VALUES ('rosemary')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'potatoes with garlic'),
        (select max(id) from public.ingredient where name = 'rosemary'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Vegetable potatoes with spicy sauce', 'https://korpa.ba/product_uploads/jDacdNjsxNGDlsedNCI7BZleeYMLh8VP.jpg',
        240, (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Vegetable potatoes with spicy sauce'),
        (select max(id) from public.category where name = 'Fast and tasty'));
INSERT INTO public.ingredient (name)
VALUES ('Potato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetable potatoes with spicy sauce'),
        (select max(id) from public.ingredient where name = 'Potato'));
INSERT INTO public.ingredient (name)
VALUES ('tomato puree')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetable potatoes with spicy sauce'),
        (select max(id) from public.ingredient where name = 'tomato puree'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetable potatoes with spicy sauce'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.ingredient (name)
VALUES ('ground red hot pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetable potatoes with spicy sauce'),
        (select max(id) from public.ingredient where name = 'ground red hot pepper'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('French fries', 'https://korpa.ba/product_uploads/h9Kbk5vPRl8idCixWBNwRYMqZ8xITSBH.jpg', 210,
        (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'French fries'),
        (select max(id) from public.category where name = 'Fast and tasty'));
INSERT INTO public.ingredient (name)
VALUES ('potatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'French fries'),
        (select max(id) from public.ingredient where name = 'potatoes'));
INSERT INTO public.ingredient (name)
VALUES ('ketchup')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'French fries'),
        (select max(id) from public.ingredient where name = 'ketchup'));
INSERT INTO public.ingredient (name)
VALUES ('aioli sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'French fries'),
        (select max(id) from public.ingredient where name = 'aioli sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('French fries with cheese', 'https://korpa.ba/product_uploads/Bgg2kUoFaLjJbcOOPgCP8Y127EiIvJcE.jpg', 240,
        (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'French fries with cheese'),
        (select max(id) from public.category where name = 'Fast and tasty'));
INSERT INTO public.ingredient (name)
VALUES ('potatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'French fries with cheese'),
        (select max(id) from public.ingredient where name = 'potatoes'));
INSERT INTO public.ingredient (name)
VALUES ('cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'French fries with cheese'),
        (select max(id) from public.ingredient where name = 'cheese'));
INSERT INTO public.ingredient (name)
VALUES ('ketchup')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'French fries with cheese'),
        (select max(id) from public.ingredient where name = 'ketchup'));
INSERT INTO public.ingredient (name)
VALUES ('aioli sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'French fries with cheese'),
        (select max(id) from public.ingredient where name = 'aioli sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Melted cheese', 'https://korpa.ba/product_uploads/27llem4pF1OL6sUrdHxeckEznYqZOYzm.jpg', 270,
        (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Melted cheese'),
        (select max(id) from public.category where name = 'Fast and tasty'));
INSERT INTO public.ingredient (name)
VALUES ('Cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Melted cheese'),
        (select max(id) from public.ingredient where name = 'Cheese'));
INSERT INTO public.ingredient (name)
VALUES ('cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Melted cheese'),
        (select max(id) from public.ingredient where name = 'cheese'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Melted cheese'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('oregano')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Melted cheese'),
        (select max(id) from public.ingredient where name = 'oregano'));
INSERT INTO public.ingredient (name)
VALUES ('nutmeg')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Melted cheese'),
        (select max(id) from public.ingredient where name = 'nutmeg'));
INSERT INTO public.ingredient (name)
VALUES ('grilled bread')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Melted cheese'),
        (select max(id) from public.ingredient where name = 'grilled bread'));
INSERT INTO public.ingredient (name)
VALUES ('hot pepper *Allergens: milk')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Melted cheese'),
        (select max(id) from public.ingredient where name = 'hot pepper *Allergens: milk'));
INSERT INTO public.ingredient (name)
VALUES ('gluten')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Melted cheese'),
        (select max(id) from public.ingredient where name = 'gluten'));
INSERT INTO public.ingredient (name)
VALUES ('sesame')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Melted cheese'),
        (select max(id) from public.ingredient where name = 'sesame'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chicken fingers', 'https://korpa.ba/product_uploads/gg3veJzjX5XKWMgt63LXHCd7GBD4vbBL.jpg', 340,
        (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chicken fingers'),
        (select max(id) from public.category where name = 'Fast and tasty'));
INSERT INTO public.ingredient (name)
VALUES ('Chicken white meat')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken fingers'),
        (select max(id) from public.ingredient where name = 'Chicken white meat'));
INSERT INTO public.ingredient (name)
VALUES ('parsley')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken fingers'),
        (select max(id) from public.ingredient where name = 'parsley'));
INSERT INTO public.ingredient (name)
VALUES ('aioli sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken fingers'),
        (select max(id) from public.ingredient where name = 'aioli sauce'));
INSERT INTO public.ingredient (name)
VALUES ('ketchup *Allergens: egg')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken fingers'),
        (select max(id) from public.ingredient where name = 'ketchup *Allergens: egg'));
INSERT INTO public.ingredient (name)
VALUES ('celery')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken fingers'),
        (select max(id) from public.ingredient where name = 'celery'));
INSERT INTO public.ingredient (name)
VALUES ('mustard')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken fingers'),
        (select max(id) from public.ingredient where name = 'mustard'));
INSERT INTO public.ingredient (name)
VALUES ('milk')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken fingers'),
        (select max(id) from public.ingredient where name = 'milk'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Fried onions', 'https://korpa.ba/product_uploads/OiTEZ1ZmPw7RBwLtqFNZTpK0cpu4tWeA.jpg', 290,
        (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Fried onions'),
        (select max(id) from public.category where name = 'Fast and tasty'));
INSERT INTO public.ingredient (name)
VALUES ('Onions')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fried onions'),
        (select max(id) from public.ingredient where name = 'Onions'));
INSERT INTO public.ingredient (name)
VALUES ('breadcrumbs')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fried onions'),
        (select max(id) from public.ingredient where name = 'breadcrumbs'));
INSERT INTO public.ingredient (name)
VALUES ('mustard')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fried onions'),
        (select max(id) from public.ingredient where name = 'mustard'));
INSERT INTO public.ingredient (name)
VALUES ('honey')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fried onions'),
        (select max(id) from public.ingredient where name = 'honey'));
INSERT INTO public.ingredient (name)
VALUES ('ranch sauce *Allergens: egg')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fried onions'),
        (select max(id) from public.ingredient where name = 'ranch sauce *Allergens: egg'));
INSERT INTO public.ingredient (name)
VALUES ('gluten')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fried onions'),
        (select max(id) from public.ingredient where name = 'gluten'));
INSERT INTO public.ingredient (name)
VALUES ('mustard')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient (name)
VALUES ('celery')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fried onions'),
        (select max(id) from public.ingredient where name = 'celery'));
INSERT INTO public.ingredient (name)
VALUES ('soy')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fried onions'),
        (select max(id) from public.ingredient where name = 'soy'));
INSERT INTO public.ingredient (name)
VALUES ('milk')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fried onions'),
        (select max(id) from public.ingredient where name = 'milk'));
INSERT INTO public.ingredient (name)
VALUES ('nuts')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fried onions'),
        (select max(id) from public.ingredient where name = 'nuts'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Nachos', 'https://korpa.ba/product_uploads/9LfuEvLgEcsDwh129tfugDCuve9DKTJj.jpg', 310,
        (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Nachos'),
        (select max(id) from public.category where name = 'Fast and tasty'));
INSERT INTO public.ingredient (name)
VALUES ('Chips')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Nachos'),
        (select max(id) from public.ingredient where name = 'Chips'));
INSERT INTO public.ingredient (name)
VALUES ('minced meat')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Nachos'),
        (select max(id) from public.ingredient where name = 'minced meat'));
INSERT INTO public.ingredient (name)
VALUES ('tomato puree')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Nachos'),
        (select max(id) from public.ingredient where name = 'tomato puree'));
INSERT INTO public.ingredient (name)
VALUES ('pellet')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Nachos'),
        (select max(id) from public.ingredient where name = 'pellet'));
INSERT INTO public.ingredient (name)
VALUES ('yellow cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Nachos'),
        (select max(id) from public.ingredient where name = 'yellow cheese'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Nachos'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Nachos'),
        (select max(id) from public.ingredient where name = 'pepper'));
INSERT INTO public.ingredient (name)
VALUES ('salt')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Nachos'),
        (select max(id) from public.ingredient where name = 'salt'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Nachos'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.ingredient (name)
VALUES ('Italian mixture *Allergens: milk')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Nachos'),
        (select max(id) from public.ingredient where name = 'Italian mixture *Allergens: milk'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chips Mexicana', 'https://korpa.ba/product_uploads/3BcRUbCphT2rFpcYnlyzmgO2lXG1qae9.jpg', 280,
        (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chips Mexicana'),
        (select max(id) from public.category where name = 'Fast and tasty'));
INSERT INTO public.ingredient (name)
VALUES ('Chips')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chips Mexicana'),
        (select max(id) from public.ingredient where name = 'Chips'));
INSERT INTO public.ingredient (name)
VALUES ('tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chips Mexicana'),
        (select max(id) from public.ingredient where name = 'tomato sauce'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chips Mexicana'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chips Mexicana'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chips Mexicana'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('coriander')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chips Mexicana'),
        (select max(id) from public.ingredient where name = 'coriander'));
INSERT INTO public.ingredient (name)
VALUES ('hot pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chips Mexicana'),
        (select max(id) from public.ingredient where name = 'hot pepper'));
INSERT INTO public.ingredient (name)
VALUES ('ranch sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chips Mexicana'),
        (select max(id) from public.ingredient where name = 'ranch sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Salty pancake', 'https://korpa.ba/product_uploads/90wqruLANdYn0RShrwtehMZceFD2I420.jpg', 260,
        (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Salty pancake'),
        (select max(id) from public.category where name = 'Fast and tasty'));
INSERT INTO public.ingredient (name)
VALUES ('Sour cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Salty pancake'),
        (select max(id) from public.ingredient where name = 'Sour cream'));
INSERT INTO public.ingredient (name)
VALUES ('cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Salty pancake'),
        (select max(id) from public.ingredient where name = 'cheese'));
INSERT INTO public.ingredient (name)
VALUES ('chicken/pork ham')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Salty pancake'),
        (select max(id) from public.ingredient where name = 'chicken/pork ham'));
INSERT INTO public.ingredient (name)
VALUES ('pickles')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Salty pancake'),
        (select max(id) from public.ingredient where name = 'pickles'));
INSERT INTO public.ingredient (name)
VALUES ('peeled tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Salty pancake'),
        (select max(id) from public.ingredient where name = 'peeled tomato'));
INSERT INTO public.ingredient (name)
VALUES ('egg')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Salty pancake'),
        (select max(id) from public.ingredient where name = 'egg'));
INSERT INTO public.ingredient (name)
VALUES ('milk')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Salty pancake'),
        (select max(id) from public.ingredient where name = 'milk'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Salty pancake'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('sherry tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Salty pancake'),
        (select max(id) from public.ingredient where name = 'sherry tomato'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Fried leagues', 'https://korpa.ba/product_uploads/PFg1dfr52yMdvN3XPkZa5PPpP8hlX4S7.jpg', 360,
        (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Fried leagues'),
        (select max(id) from public.category where name = 'Fast and tasty'));
INSERT INTO public.ingredient (name)
VALUES ('Squid')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fried leagues'),
        (select max(id) from public.ingredient where name = 'Squid'));
INSERT INTO public.ingredient (name)
VALUES ('sweet and hot sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fried leagues'),
        (select max(id) from public.ingredient where name = 'sweet and hot sauce'));
INSERT INTO public.ingredient (name)
VALUES ('lemon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fried leagues'),
        (select max(id) from public.ingredient where name = 'lemon'));
INSERT INTO public.ingredient (name)
VALUES ('olive oil')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fried leagues'),
        (select max(id) from public.ingredient where name = 'olive oil'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Fish medallions', 'https://korpa.ba/product_uploads/xniKbtJDZv42VWqaxE31zAbdH378wScr.jpg', 320,
        (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Fish medallions'),
        (select max(id) from public.category where name = 'Fast and tasty'));
INSERT INTO public.ingredient (name)
VALUES ('Fish medallions')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fish medallions'),
        (select max(id) from public.ingredient where name = 'Fish medallions'));
INSERT INTO public.ingredient (name)
VALUES ('aioli sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fish medallions'),
        (select max(id) from public.ingredient where name = 'aioli sauce'));
INSERT INTO public.ingredient (name)
VALUES ('sweet and hot sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fish medallions'),
        (select max(id) from public.ingredient where name = 'sweet and hot sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Organic goat cheese', 'None', 300, (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Organic goat cheese'),
        (select max(id) from public.category where name = 'Fast and tasty'));
INSERT INTO public.ingredient (name)
VALUES ('Fried organic goat cheese in olive oil')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Organic goat cheese'),
        (select max(id) from public.ingredient where name = 'Fried organic goat cheese in olive oil'));
INSERT INTO public.ingredient (name)
VALUES ('sweet from wild figs')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Organic goat cheese'),
        (select max(id) from public.ingredient where name = 'sweet from wild figs'));
INSERT INTO public.ingredient (name)
VALUES ('almonds')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Organic goat cheese'),
        (select max(id) from public.ingredient where name = 'almonds'));
INSERT INTO public.ingredient (name)
VALUES ('cranberries')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Organic goat cheese'),
        (select max(id) from public.ingredient where name = 'cranberries'));
insert into public.category (name, photo)
VALUES ('Burgers', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Burger with chicken steak', 'https://korpa.ba/product_uploads/sXAYKmOkfnsuLW41wRJazKc9Ob8blJTA.jpg', 370,
        (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Burger with chicken steak'),
        (select max(id) from public.category where name = 'Burgers'));
INSERT INTO public.ingredient (name)
VALUES ('Fried chicken steak')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger with chicken steak'),
        (select max(id) from public.ingredient where name = 'Fried chicken steak'));
INSERT INTO public.ingredient (name)
VALUES ('French feta cream milk')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger with chicken steak'),
        (select max(id) from public.ingredient where name = 'French feta cream milk'));
INSERT INTO public.ingredient (name)
VALUES ('coconut oil')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger with chicken steak'),
        (select max(id) from public.ingredient where name = 'coconut oil'));
INSERT INTO public.ingredient (name)
VALUES ('butter')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger with chicken steak'),
        (select max(id) from public.ingredient where name = 'butter'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger with chicken steak'),
        (select max(id) from public.ingredient where name = 'mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('sour cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger with chicken steak'),
        (select max(id) from public.ingredient where name = 'sour cream'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger with chicken steak'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger with chicken steak'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('ranch sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger with chicken steak'),
        (select max(id) from public.ingredient where name = 'ranch sauce'));
INSERT INTO public.ingredient (name)
VALUES ('sour cream')
ON CONFLICT (name) DO NOTHING;

INSERT INTO public.ingredient (name)
VALUES ('mayonnaise')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger with chicken steak'),
        (select max(id) from public.ingredient where name = 'mayonnaise'));
INSERT INTO public.ingredient (name)
VALUES ('dill')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger with chicken steak'),
        (select max(id) from public.ingredient where name = 'dill'));
INSERT INTO public.ingredient (name)
VALUES ('salt')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger with chicken steak'),
        (select max(id) from public.ingredient where name = 'salt'));
INSERT INTO public.ingredient (name)
VALUES ('pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger with chicken steak'),
        (select max(id) from public.ingredient where name = 'pepper'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger with chicken steak'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.ingredient (name)
VALUES ('veggies potatoes. *Allergens: gluten')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger with chicken steak'),
        (select max(id) from public.ingredient where name = 'veggies potatoes. *Allergens: gluten'));
INSERT INTO public.ingredient (name)
VALUES ('milk')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger with chicken steak'),
        (select max(id) from public.ingredient where name = 'milk'));
INSERT INTO public.ingredient (name)
VALUES ('egg')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger with chicken steak'),
        (select max(id) from public.ingredient where name = 'egg'));
INSERT INTO public.ingredient (name)
VALUES ('celery')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Burger with chicken steak'),
        (select max(id) from public.ingredient where name = 'celery'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('3 Burgers - Portion + French Fries', 'None', 290,
        (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = '3 Burgers - Portion + French Fries'),
        (select max(id) from public.category where name = 'Burgers'));
INSERT INTO public.ingredient (name)
VALUES ('Burger 1 - meat')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = '3 Burgers - Portion + French Fries'),
        (select max(id) from public.ingredient where name = 'Burger 1 - meat'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = '3 Burgers - Portion + French Fries'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = '3 Burgers - Portion + French Fries'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('edam')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = '3 Burgers - Portion + French Fries'),
        (select max(id) from public.ingredient where name = 'edam'));
INSERT INTO public.ingredient (name)
VALUES ('ketchup Burger 2 - meat')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = '3 Burgers - Portion + French Fries'),
        (select max(id) from public.ingredient where name = 'ketchup Burger 2 - meat'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;

INSERT INTO public.ingredient (name)
VALUES ('pickles')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = '3 Burgers - Portion + French Fries'),
        (select max(id) from public.ingredient where name = 'pickles'));
INSERT INTO public.ingredient (name)
VALUES ('sour cream Burger 3 - meat')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = '3 Burgers - Portion + French Fries'),
        (select max(id) from public.ingredient where name = 'sour cream Burger 3 - meat'));
INSERT INTO public.ingredient (name)
VALUES ('cheddar')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = '3 Burgers - Portion + French Fries'),
        (select max(id) from public.ingredient where name = 'cheddar'));
INSERT INTO public.ingredient (name)
VALUES ('pickles')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient (name)
VALUES ('BBQ sauce. *Allergens: gluten')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = '3 Burgers - Portion + French Fries'),
        (select max(id) from public.ingredient where name = 'BBQ sauce. *Allergens: gluten'));
INSERT INTO public.ingredient (name)
VALUES ('sesame')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = '3 Burgers - Portion + French Fries'),
        (select max(id) from public.ingredient where name = 'sesame'));
INSERT INTO public.ingredient (name)
VALUES ('milk')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = '3 Burgers - Portion + French Fries'),
        (select max(id) from public.ingredient where name = 'milk'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Club sandwich "Caesar"', 'https://korpa.ba/product_uploads/THr5twpkoTy7UTDEzezPyPxEtecwxt68.jpg', 270,
        (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Club sandwich "Caesar"'),
        (select max(id) from public.category where name = 'Burgers'));
INSERT INTO public.ingredient (name)
VALUES ('Chicken steak')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Club sandwich "Caesar"'),
        (select max(id) from public.ingredient where name = 'Chicken steak'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Club sandwich "Caesar"'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Club sandwich "Caesar"'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('rocket')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Club sandwich "Caesar"'),
        (select max(id) from public.ingredient where name = 'rocket'));
INSERT INTO public.ingredient (name)
VALUES ('parmezan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Club sandwich "Caesar"'),
        (select max(id) from public.ingredient where name = 'parmezan'));
INSERT INTO public.ingredient (name)
VALUES ('dressing')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Club sandwich "Caesar"'),
        (select max(id) from public.ingredient where name = 'dressing'));
INSERT INTO public.ingredient (name)
VALUES ('french fries. *Allergens: milk')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Club sandwich "Caesar"'),
        (select max(id) from public.ingredient where name = 'french fries. *Allergens: milk'));
INSERT INTO public.ingredient (name)
VALUES ('mustard')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Club sandwich "Caesar"'),
        (select max(id) from public.ingredient where name = 'mustard'));
INSERT INTO public.ingredient (name)
VALUES ('egg')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Club sandwich "Caesar"'),
        (select max(id) from public.ingredient where name = 'egg'));
INSERT INTO public.ingredient (name)
VALUES ('celery')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Club sandwich "Caesar"'),
        (select max(id) from public.ingredient where name = 'celery'));
INSERT INTO public.ingredient (name)
VALUES ('gluten')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Club sandwich "Caesar"'),
        (select max(id) from public.ingredient where name = 'gluten'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Centar bar burger', 'None', 390, (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Centar bar burger'),
        (select max(id) from public.category where name = 'Burgers'));
INSERT INTO public.ingredient (name)
VALUES ('Beef burger')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Centar bar burger'),
        (select max(id) from public.ingredient where name = 'Beef burger'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Centar bar burger'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Centar bar burger'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('rucola')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Centar bar burger'),
        (select max(id) from public.ingredient where name = 'rucola'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Centar bar burger'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('mozzarela')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Centar bar burger'),
        (select max(id) from public.ingredient where name = 'mozzarela'));
INSERT INTO public.ingredient (name)
VALUES ('spicy mustard')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Centar bar burger'),
        (select max(id) from public.ingredient where name = 'spicy mustard'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Centar bar burger'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('pita bread')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Centar bar burger'),
        (select max(id) from public.ingredient where name = 'pita bread'));
INSERT INTO public.ingredient (name)
VALUES ('veggies potato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Centar bar burger'),
        (select max(id) from public.ingredient where name = 'veggies potato'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Centar bar big burger', 'None', 410, (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Centar bar big burger'),
        (select max(id) from public.category where name = 'Burgers'));
INSERT INTO public.ingredient (name)
VALUES ('Beef minced meat')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Centar bar big burger'),
        (select max(id) from public.ingredient where name = 'Beef minced meat'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Centar bar big burger'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('red lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Centar bar big burger'),
        (select max(id) from public.ingredient where name = 'red lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('radicchio')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Centar bar big burger'),
        (select max(id) from public.ingredient where name = 'radicchio'));
INSERT INTO public.ingredient (name)
VALUES ('rucola')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Centar bar big burger'),
        (select max(id) from public.ingredient where name = 'rucola'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Centar bar big burger'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Centar bar big burger'),
        (select max(id) from public.ingredient where name = 'bacon'));
INSERT INTO public.ingredient (name)
VALUES ('chedar')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Centar bar big burger'),
        (select max(id) from public.ingredient where name = 'chedar'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Centar bar big burger'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Centar bar big burger'),
        (select max(id) from public.ingredient where name = 'cheese'));
INSERT INTO public.ingredient (name)
VALUES ('french fries')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Centar bar big burger'),
        (select max(id) from public.ingredient where name = 'french fries'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Trio mini burgers', 'https://korpa.ba/product_uploads/0dBOysAGXh7zNQ37twvQ5aTDzQauXElS.jpg', 350,
        (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Trio mini burgers'),
        (select max(id) from public.category where name = 'Burgers'));
INSERT INTO public.ingredient (name)
VALUES ('Burger 1: beef/chicken meat')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Trio mini burgers'),
        (select max(id) from public.ingredient where name = 'Burger 1: beef/chicken meat'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Trio mini burgers'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('pickle')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Trio mini burgers'),
        (select max(id) from public.ingredient where name = 'pickle'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Trio mini burgers'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('edam cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Trio mini burgers'),
        (select max(id) from public.ingredient where name = 'edam cheese'));
INSERT INTO public.ingredient (name)
VALUES ('ketchup / Burger 2: beef meat/chicken meat')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Trio mini burgers'),
        (select max(id) from public.ingredient where name = 'ketchup / Burger 2: beef meat/chicken meat'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient (name)
VALUES ('pickle')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient (name)
VALUES ('sour cream / Burger 3: beef meat/chicken meat')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Trio mini burgers'),
        (select max(id) from public.ingredient where name = 'sour cream / Burger 3: beef meat/chicken meat'));
INSERT INTO public.ingredient (name)
VALUES ('cheddar')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Trio mini burgers'),
        (select max(id) from public.ingredient where name = 'cheddar'));
INSERT INTO public.ingredient (name)
VALUES ('pickle')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient (name)
VALUES ('BBQ sauce / + fries')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Trio mini burgers'),
        (select max(id) from public.ingredient where name = 'BBQ sauce / + fries'));
insert into public.category (name, photo)
VALUES ('Meals', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chicken Mojito', 'https://korpa.ba/product_uploads/eVsypLx0NDaCYAHd78LgEkfd6vQzsVbP.jpg', 370,
        (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chicken Mojito'),
        (select max(id) from public.category where name = 'Meals'));
INSERT INTO public.ingredient (name)
VALUES ('Steak')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Mojito'),
        (select max(id) from public.ingredient where name = 'Steak'));
INSERT INTO public.ingredient (name)
VALUES ('cooking cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Mojito'),
        (select max(id) from public.ingredient where name = 'cooking cream'));
INSERT INTO public.ingredient (name)
VALUES ('lime')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Mojito'),
        (select max(id) from public.ingredient where name = 'lime'));
INSERT INTO public.ingredient (name)
VALUES ('mint')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Mojito'),
        (select max(id) from public.ingredient where name = 'mint'));
INSERT INTO public.ingredient (name)
VALUES ('cherry tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Mojito'),
        (select max(id) from public.ingredient where name = 'cherry tomato'));
INSERT INTO public.ingredient (name)
VALUES ('rice. *Allergens: milk')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken Mojito'),
        (select max(id) from public.ingredient where name = 'rice. *Allergens: milk'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chicken curry', 'https://korpa.ba/product_uploads/W8acaK7ImPZlpiOViNCWCCj4137YknVi.jpg', 370,
        (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chicken curry'),
        (select max(id) from public.category where name = 'Meals'));
INSERT INTO public.ingredient (name)
VALUES ('Steak')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken curry'),
        (select max(id) from public.ingredient where name = 'Steak'));
INSERT INTO public.ingredient (name)
VALUES ('cooking cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken curry'),
        (select max(id) from public.ingredient where name = 'cooking cream'));
INSERT INTO public.ingredient (name)
VALUES ('curry')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken curry'),
        (select max(id) from public.ingredient where name = 'curry'));
INSERT INTO public.ingredient (name)
VALUES ('rice')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken curry'),
        (select max(id) from public.ingredient where name = 'rice'));
INSERT INTO public.ingredient (name)
VALUES ('salt')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken curry'),
        (select max(id) from public.ingredient where name = 'salt'));
INSERT INTO public.ingredient (name)
VALUES ('pepper. *Allergens: milk')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken curry'),
        (select max(id) from public.ingredient where name = 'pepper. *Allergens: milk'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Saltimbocca', 'https://korpa.ba/product_uploads/Qv3yZjj9Q01uC0PZViPu1nnld2WLBKiv.jpg', 390,
        (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Saltimbocca'),
        (select max(id) from public.category where name = 'Meals'));
INSERT INTO public.ingredient (name)
VALUES ('Chicken')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Saltimbocca'),
        (select max(id) from public.ingredient where name = 'Chicken'));
INSERT INTO public.ingredient (name)
VALUES ('rice')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Saltimbocca'),
        (select max(id) from public.ingredient where name = 'rice'));
INSERT INTO public.ingredient (name)
VALUES ('cooking cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Saltimbocca'),
        (select max(id) from public.ingredient where name = 'cooking cream'));
INSERT INTO public.ingredient (name)
VALUES ('prosciutto. *Allergens: milk')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Saltimbocca'),
        (select max(id) from public.ingredient where name = 'prosciutto. *Allergens: milk'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Pork steak with rib in BBQ sauce', 'https://korpa.ba/product_uploads/HtAbkFRxMFol5jz1fwY2IT2czLX5plaF.jpg',
        550, (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Pork steak with rib in BBQ sauce'),
        (select max(id) from public.category where name = 'Meals'));
INSERT INTO public.ingredient (name)
VALUES ('Pork rib')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork steak with rib in BBQ sauce'),
        (select max(id) from public.ingredient where name = 'Pork rib'));
INSERT INTO public.ingredient (name)
VALUES ('BBQ Jack Daniels sauce (tomato puree')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork steak with rib in BBQ sauce'),
        (select max(id) from public.ingredient where name = 'BBQ Jack Daniels sauce (tomato puree'));
INSERT INTO public.ingredient (name)
VALUES ('vinegar')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork steak with rib in BBQ sauce'),
        (select max(id) from public.ingredient where name = 'vinegar'));
INSERT INTO public.ingredient (name)
VALUES ('corn syrup')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork steak with rib in BBQ sauce'),
        (select max(id) from public.ingredient where name = 'corn syrup'));
INSERT INTO public.ingredient (name)
VALUES ('sugar')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork steak with rib in BBQ sauce'),
        (select max(id) from public.ingredient where name = 'sugar'));
INSERT INTO public.ingredient (name)
VALUES ('mustard')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork steak with rib in BBQ sauce'),
        (select max(id) from public.ingredient where name = 'mustard'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork steak with rib in BBQ sauce'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork steak with rib in BBQ sauce'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.ingredient (name)
VALUES ('caramel)')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork steak with rib in BBQ sauce'),
        (select max(id) from public.ingredient where name = 'caramel)'));
INSERT INTO public.ingredient (name)
VALUES ('croquettes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork steak with rib in BBQ sauce'),
        (select max(id) from public.ingredient where name = 'croquettes'));
INSERT INTO public.ingredient (name)
VALUES ('salad mix')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork steak with rib in BBQ sauce'),
        (select max(id) from public.ingredient where name = 'salad mix'));
INSERT INTO public.ingredient (name)
VALUES ('celery')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork steak with rib in BBQ sauce'),
        (select max(id) from public.ingredient where name = 'celery'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Centar Bar mixed meat pan', 'https://korpa.ba/product_uploads/RGZKGWz7vFY9aFTRkGudfZJRRcCp4EmJ.jpg', 480,
        (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Centar Bar mixed meat pan'),
        (select max(id) from public.category where name = 'Meals'));
INSERT INTO public.ingredient (name)
VALUES ('Chicken')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Centar Bar mixed meat pan'),
        (select max(id) from public.ingredient where name = 'Chicken'));
INSERT INTO public.ingredient (name)
VALUES ('pork')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Centar Bar mixed meat pan'),
        (select max(id) from public.ingredient where name = 'pork'));
INSERT INTO public.ingredient (name)
VALUES ('pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Centar Bar mixed meat pan'),
        (select max(id) from public.ingredient where name = 'pepper'));
INSERT INTO public.ingredient (name)
VALUES ('onions')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Centar Bar mixed meat pan'),
        (select max(id) from public.ingredient where name = 'onions'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Centar Bar mixed meat pan'),
        (select max(id) from public.ingredient where name = 'mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('BBQ sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Centar Bar mixed meat pan'),
        (select max(id) from public.ingredient where name = 'BBQ sauce'));
INSERT INTO public.ingredient (name)
VALUES ('bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Centar Bar mixed meat pan'),
        (select max(id) from public.ingredient where name = 'bacon'));
INSERT INTO public.ingredient (name)
VALUES ('veggies potatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Centar Bar mixed meat pan'),
        (select max(id) from public.ingredient where name = 'veggies potatoes'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chicken steak', 'https://korpa.ba/product_uploads/QiwYYdu3hdAOBasuWdJRKrBXHEXe3ZP9.jpg', 310,
        (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chicken steak'),
        (select max(id) from public.category where name = 'Meals'));
INSERT INTO public.ingredient (name)
VALUES ('Chicken steak')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken steak'),
        (select max(id) from public.ingredient where name = 'Chicken steak'));
INSERT INTO public.ingredient (name)
VALUES ('veal potato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken steak'),
        (select max(id) from public.ingredient where name = 'veal potato'));
INSERT INTO public.ingredient (name)
VALUES ('ketchup')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken steak'),
        (select max(id) from public.ingredient where name = 'ketchup'));
INSERT INTO public.ingredient (name)
VALUES ('ranch sauce. *Allergens: milk')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken steak'),
        (select max(id) from public.ingredient where name = 'ranch sauce. *Allergens: milk'));
INSERT INTO public.ingredient (name)
VALUES ('egg')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken steak'),
        (select max(id) from public.ingredient where name = 'egg'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chicken parmigiana', 'https://korpa.ba/product_uploads/i3218mCncn2UCHrzt8keWR0n6MlM0J09.jpg', 360,
        (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chicken parmigiana'),
        (select max(id) from public.category where name = 'Meals'));
INSERT INTO public.ingredient (name)
VALUES ('Chicken steak')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken parmigiana'),
        (select max(id) from public.ingredient where name = 'Chicken steak'));
INSERT INTO public.ingredient (name)
VALUES ('cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken parmigiana'),
        (select max(id) from public.ingredient where name = 'cheese'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken parmigiana'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('peeled tomatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken parmigiana'),
        (select max(id) from public.ingredient where name = 'peeled tomatoes'));
INSERT INTO public.ingredient (name)
VALUES ('veggies potato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chicken parmigiana'),
        (select max(id) from public.ingredient where name = 'veggies potato'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Pork tenderlion with dried figs and mushroom sauce', 'None', 930,
        (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Pork tenderlion with dried figs and mushroom sauce'),
        (select max(id) from public.category where name = 'Meals'));
INSERT INTO public.ingredient (name)
VALUES ('Pork tenderloin')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork tenderlion with dried figs and mushroom sauce'),
        (select max(id) from public.ingredient where name = 'Pork tenderloin'));
INSERT INTO public.ingredient (name)
VALUES ('mushroom')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork tenderlion with dried figs and mushroom sauce'),
        (select max(id) from public.ingredient where name = 'mushroom'));
INSERT INTO public.ingredient (name)
VALUES ('dries figs')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork tenderlion with dried figs and mushroom sauce'),
        (select max(id) from public.ingredient where name = 'dries figs'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork tenderlion with dried figs and mushroom sauce'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork tenderlion with dried figs and mushroom sauce'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.ingredient (name)
VALUES ('red wine')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork tenderlion with dried figs and mushroom sauce'),
        (select max(id) from public.ingredient where name = 'red wine'));
INSERT INTO public.ingredient (name)
VALUES ('BBQ sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork tenderlion with dried figs and mushroom sauce'),
        (select max(id) from public.ingredient where name = 'BBQ sauce'));
INSERT INTO public.ingredient (name)
VALUES ('cherry tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork tenderlion with dried figs and mushroom sauce'),
        (select max(id) from public.ingredient where name = 'cherry tomato'));
INSERT INTO public.ingredient (name)
VALUES ('lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork tenderlion with dried figs and mushroom sauce'),
        (select max(id) from public.ingredient where name = 'lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('red lettuce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork tenderlion with dried figs and mushroom sauce'),
        (select max(id) from public.ingredient where name = 'red lettuce'));
INSERT INTO public.ingredient (name)
VALUES ('rubella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork tenderlion with dried figs and mushroom sauce'),
        (select max(id) from public.ingredient where name = 'rubella'));
INSERT INTO public.ingredient (name)
VALUES ('radich')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork tenderlion with dried figs and mushroom sauce'),
        (select max(id) from public.ingredient where name = 'radich'));
INSERT INTO public.ingredient (name)
VALUES ('veggies')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork tenderlion with dried figs and mushroom sauce'),
        (select max(id) from public.ingredient where name = 'veggies'));
INSERT INTO public.ingredient (name)
VALUES ('potato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pork tenderlion with dried figs and mushroom sauce'),
        (select max(id) from public.ingredient where name = 'potato'));
insert into public.category (name, photo)
VALUES ('Risotto', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Risotto with vegetables', 'None', 320, (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Risotto with vegetables'),
        (select max(id) from public.category where name = 'Risotto'));
INSERT INTO public.ingredient (name)
VALUES ('Rice')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Risotto with vegetables'),
        (select max(id) from public.ingredient where name = 'Rice'));
INSERT INTO public.ingredient (name)
VALUES ('zucchini')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Risotto with vegetables'),
        (select max(id) from public.ingredient where name = 'zucchini'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Risotto with vegetables'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('carrot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Risotto with vegetables'),
        (select max(id) from public.ingredient where name = 'carrot'));
INSERT INTO public.ingredient (name)
VALUES ('broccoli')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Risotto with vegetables'),
        (select max(id) from public.ingredient where name = 'broccoli'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Risotto with vegetables'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('butter')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Risotto with vegetables'),
        (select max(id) from public.ingredient where name = 'butter'));
INSERT INTO public.ingredient (name)
VALUES ('dried tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Risotto with vegetables'),
        (select max(id) from public.ingredient where name = 'dried tomato'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Risotto with vegetables'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Risotto with chicken meat', 'https://korpa.ba/product_uploads/o2ulI8BQZrHJBibkrFP17xnmdNqGQbSi.jpg', 350,
        (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Risotto with chicken meat'),
        (select max(id) from public.category where name = 'Risotto'));
INSERT INTO public.ingredient (name)
VALUES ('Chicken meat')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Risotto with chicken meat'),
        (select max(id) from public.ingredient where name = 'Chicken meat'));
INSERT INTO public.ingredient (name)
VALUES ('rice')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Risotto with chicken meat'),
        (select max(id) from public.ingredient where name = 'rice'));
INSERT INTO public.ingredient (name)
VALUES ('zucchini')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Risotto with chicken meat'),
        (select max(id) from public.ingredient where name = 'zucchini'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Risotto with chicken meat'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('carrot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Risotto with chicken meat'),
        (select max(id) from public.ingredient where name = 'carrot'));
INSERT INTO public.ingredient (name)
VALUES ('broccoli')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Risotto with chicken meat'),
        (select max(id) from public.ingredient where name = 'broccoli'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Risotto with chicken meat'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('butter')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Risotto with chicken meat'),
        (select max(id) from public.ingredient where name = 'butter'));
INSERT INTO public.ingredient (name)
VALUES ('dry tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Risotto with chicken meat'),
        (select max(id) from public.ingredient where name = 'dry tomato'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Risotto with chicken meat'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Risotto with shrimps', 'None', 380, (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Risotto with shrimps'),
        (select max(id) from public.category where name = 'Risotto'));
INSERT INTO public.ingredient (name)
VALUES ('Shrimp')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Risotto with shrimps'),
        (select max(id) from public.ingredient where name = 'Shrimp'));
INSERT INTO public.ingredient (name)
VALUES ('rice')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Risotto with shrimps'),
        (select max(id) from public.ingredient where name = 'rice'));
INSERT INTO public.ingredient (name)
VALUES ('zucchini')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Risotto with shrimps'),
        (select max(id) from public.ingredient where name = 'zucchini'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Risotto with shrimps'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('carrot')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Risotto with shrimps'),
        (select max(id) from public.ingredient where name = 'carrot'));
INSERT INTO public.ingredient (name)
VALUES ('broccoli')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Risotto with shrimps'),
        (select max(id) from public.ingredient where name = 'broccoli'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Risotto with shrimps'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('butter')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Risotto with shrimps'),
        (select max(id) from public.ingredient where name = 'butter'));
INSERT INTO public.ingredient (name)
VALUES ('dried tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Risotto with shrimps'),
        (select max(id) from public.ingredient where name = 'dried tomato'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Risotto with shrimps'),
        (select max(id) from public.ingredient where name = 'garlic'));
insert into public.category (name, photo)
VALUES ('Pizza', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Quattro Formaggi', 'https://korpa.ba/product_uploads/AmOFeEhavmj3w17G4PV3FgWo2LsMlMhQ.jpg', 360,
        (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Quattro Formaggi'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('Cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quattro Formaggi'),
        (select max(id) from public.ingredient where name = 'Cheese'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quattro Formaggi'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('gorgonzola')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quattro Formaggi'),
        (select max(id) from public.ingredient where name = 'gorgonzola'));
INSERT INTO public.ingredient (name)
VALUES ('fresh mozzarella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quattro Formaggi'),
        (select max(id) from public.ingredient where name = 'fresh mozzarella'));
INSERT INTO public.ingredient (name)
VALUES ('pelat. *Allergens: gluten')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quattro Formaggi'),
        (select max(id) from public.ingredient where name = 'pelat. *Allergens: gluten'));
INSERT INTO public.ingredient (name)
VALUES ('milk')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Quattro Formaggi'),
        (select max(id) from public.ingredient where name = 'milk'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Bakeries', 'https://korpa.ba/product_uploads/xwYziVN9XXAPYLuJmD1YJeRvYwN3BKmA.jpg', 140,
        (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Bakeries'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('*Allergens: egg')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bakeries'),
        (select max(id) from public.ingredient where name = '*Allergens: egg'));
INSERT INTO public.ingredient (name)
VALUES ('sesame')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bakeries'),
        (select max(id) from public.ingredient where name = 'sesame'));
INSERT INTO public.ingredient (name)
VALUES ('gluten')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bakeries'),
        (select max(id) from public.ingredient where name = 'gluten'));
INSERT INTO public.ingredient (name)
VALUES ('milk')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Bakeries'),
        (select max(id) from public.ingredient where name = 'milk'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Pizza with shrimps', 'None', 380, (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Pizza with shrimps'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('Cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pizza with shrimps'),
        (select max(id) from public.ingredient where name = 'Cheese'));
INSERT INTO public.ingredient (name)
VALUES ('peeled tomatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pizza with shrimps'),
        (select max(id) from public.ingredient where name = 'peeled tomatoes'));
INSERT INTO public.ingredient (name)
VALUES ('shrimp')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pizza with shrimps'),
        (select max(id) from public.ingredient where name = 'shrimp'));
INSERT INTO public.ingredient (name)
VALUES ('olives')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pizza with shrimps'),
        (select max(id) from public.ingredient where name = 'olives'));
INSERT INTO public.ingredient (name)
VALUES ('garlic')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pizza with shrimps'),
        (select max(id) from public.ingredient where name = 'garlic'));
INSERT INTO public.ingredient (name)
VALUES ('parsley')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pizza with shrimps'),
        (select max(id) from public.ingredient where name = 'parsley'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Al Tonno', 'None', 330, (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Al Tonno'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('Cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Al Tonno'),
        (select max(id) from public.ingredient where name = 'Cheese'));
INSERT INTO public.ingredient (name)
VALUES ('tuna')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Al Tonno'),
        (select max(id) from public.ingredient where name = 'tuna'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Al Tonno'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Al Tonno'),
        (select max(id) from public.ingredient where name = 'mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('peeled tomatoes')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Al Tonno'),
        (select max(id) from public.ingredient where name = 'peeled tomatoes'));
INSERT INTO public.ingredient (name)
VALUES ('olives')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Al Tonno'),
        (select max(id) from public.ingredient where name = 'olives'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Centar Bar pizza', 'None', 390, (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Centar Bar pizza'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('Cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Centar Bar pizza'),
        (select max(id) from public.ingredient where name = 'Cheese'));
INSERT INTO public.ingredient (name)
VALUES ('egg')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Centar Bar pizza'),
        (select max(id) from public.ingredient where name = 'egg'));
INSERT INTO public.ingredient (name)
VALUES ('bacon')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Centar Bar pizza'),
        (select max(id) from public.ingredient where name = 'bacon'));
INSERT INTO public.ingredient (name)
VALUES ('ranch sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Centar Bar pizza'),
        (select max(id) from public.ingredient where name = 'ranch sauce'));
INSERT INTO public.ingredient (name)
VALUES ('olives')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Centar Bar pizza'),
        (select max(id) from public.ingredient where name = 'olives'));
INSERT INTO public.ingredient (name)
VALUES ('dry tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Centar Bar pizza'),
        (select max(id) from public.ingredient where name = 'dry tomato'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Margherita pizza', 'None', 290, (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Margherita pizza'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('Cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Margherita pizza'),
        (select max(id) from public.ingredient where name = 'Cheese'));
INSERT INTO public.ingredient (name)
VALUES ('tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Margherita pizza'),
        (select max(id) from public.ingredient where name = 'tomato sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Vesuvio pizza', 'None', 310, (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Vesuvio pizza'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('Cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vesuvio pizza'),
        (select max(id) from public.ingredient where name = 'Cheese'));
INSERT INTO public.ingredient (name)
VALUES ('ham')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vesuvio pizza'),
        (select max(id) from public.ingredient where name = 'ham'));
INSERT INTO public.ingredient (name)
VALUES ('tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vesuvio pizza'),
        (select max(id) from public.ingredient where name = 'tomato sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Napolitana pizza', 'None', 320, (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Napolitana pizza'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('Cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Napolitana pizza'),
        (select max(id) from public.ingredient where name = 'Cheese'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Napolitana pizza'),
        (select max(id) from public.ingredient where name = 'mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Napolitana pizza'),
        (select max(id) from public.ingredient where name = 'tomato sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Capricciosa pizza', 'https://korpa.ba/product_uploads/FbHYPOeLJAjPvO9hzLBPvxbh3CGXyhu8.jpg', 330,
        (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Capricciosa pizza'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('Cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Capricciosa pizza'),
        (select max(id) from public.ingredient where name = 'Cheese'));
INSERT INTO public.ingredient (name)
VALUES ('ham')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Capricciosa pizza'),
        (select max(id) from public.ingredient where name = 'ham'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Capricciosa pizza'),
        (select max(id) from public.ingredient where name = 'mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Capricciosa pizza'),
        (select max(id) from public.ingredient where name = 'tomato sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Calzone', 'None', 330, (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Calzone'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('Cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Calzone'),
        (select max(id) from public.ingredient where name = 'Cheese'));
INSERT INTO public.ingredient (name)
VALUES ('ham')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Calzone'),
        (select max(id) from public.ingredient where name = 'ham'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Calzone'),
        (select max(id) from public.ingredient where name = 'mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Calzone'),
        (select max(id) from public.ingredient where name = 'tomato sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Vegetarian pizza', 'None', 310, (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Vegetarian pizza'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('Cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetarian pizza'),
        (select max(id) from public.ingredient where name = 'Cheese'));
INSERT INTO public.ingredient (name)
VALUES ('tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetarian pizza'),
        (select max(id) from public.ingredient where name = 'tomato'));
INSERT INTO public.ingredient (name)
VALUES ('pepper')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetarian pizza'),
        (select max(id) from public.ingredient where name = 'pepper'));
INSERT INTO public.ingredient (name)
VALUES ('onion')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetarian pizza'),
        (select max(id) from public.ingredient where name = 'onion'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetarian pizza'),
        (select max(id) from public.ingredient where name = 'mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('cow cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Vegetarian pizza'),
        (select max(id) from public.ingredient where name = 'cow cheese'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Pepperoni pizza', 'None', 340, (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Pepperoni pizza'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('Cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pepperoni pizza'),
        (select max(id) from public.ingredient where name = 'Cheese'));
INSERT INTO public.ingredient (name)
VALUES ('spicy pepperoni')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pepperoni pizza'),
        (select max(id) from public.ingredient where name = 'spicy pepperoni'));
INSERT INTO public.ingredient (name)
VALUES ('mushrooms')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pepperoni pizza'),
        (select max(id) from public.ingredient where name = 'mushrooms'));
INSERT INTO public.ingredient (name)
VALUES ('tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pepperoni pizza'),
        (select max(id) from public.ingredient where name = 'tomato sauce'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Prosciutto pizza', 'https://korpa.ba/product_uploads/MUct0B6Oq75PDzSvdtaLhtssleq5XMch.jpg', 400,
        (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Prosciutto pizza'),
        (select max(id) from public.category where name = 'Pizza'));
INSERT INTO public.ingredient (name)
VALUES ('Cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Prosciutto pizza'),
        (select max(id) from public.ingredient where name = 'Cheese'));
INSERT INTO public.ingredient (name)
VALUES ('prosciutto')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Prosciutto pizza'),
        (select max(id) from public.ingredient where name = 'prosciutto'));
INSERT INTO public.ingredient (name)
VALUES ('arugula')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Prosciutto pizza'),
        (select max(id) from public.ingredient where name = 'arugula'));
INSERT INTO public.ingredient (name)
VALUES ('cherry tomato')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Prosciutto pizza'),
        (select max(id) from public.ingredient where name = 'cherry tomato'));
INSERT INTO public.ingredient (name)
VALUES ('parmesan')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Prosciutto pizza'),
        (select max(id) from public.ingredient where name = 'parmesan'));
INSERT INTO public.ingredient (name)
VALUES ('tomato sauce')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Prosciutto pizza'),
        (select max(id) from public.ingredient where name = 'tomato sauce'));
insert into public.category (name, photo)
VALUES ('Desserts', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Pancake with cream and banana', 'https://korpa.ba/product_uploads/q7sqZyVtzRYopJD35YHwSVJPa4MaPoUt.jpg', 210,
        (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Pancake with cream and banana'),
        (select max(id) from public.category where name = 'Desserts'));
INSERT INTO public.ingredient (name)
VALUES ('Pancake with cream and banana')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pancake with cream and banana'),
        (select max(id) from public.ingredient where name = 'Pancake with cream and banana'));
INSERT INTO public.ingredient (name)
VALUES ('whipped cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pancake with cream and banana'),
        (select max(id) from public.ingredient where name = 'whipped cream'));
INSERT INTO public.ingredient (name)
VALUES ('chocolate sauce. *Allergens: milk')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pancake with cream and banana'),
        (select max(id) from public.ingredient where name = 'chocolate sauce. *Allergens: milk'));
INSERT INTO public.ingredient (name)
VALUES ('gluten')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pancake with cream and banana'),
        (select max(id) from public.ingredient where name = 'gluten'));
INSERT INTO public.ingredient (name)
VALUES ('egg')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pancake with cream and banana'),
        (select max(id) from public.ingredient where name = 'egg'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Fruit waffles', 'https://korpa.ba/product_uploads/BmpAzgshTe0Ov7fF4Xwe0YWDBf9nCeEk.jpg', 250,
        (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Fruit waffles'),
        (select max(id) from public.category where name = 'Desserts'));
INSERT INTO public.ingredient (name)
VALUES ('Waffles')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fruit waffles'),
        (select max(id) from public.ingredient where name = 'Waffles'));
INSERT INTO public.ingredient (name)
VALUES ('seasonal fruits')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fruit waffles'),
        (select max(id) from public.ingredient where name = 'seasonal fruits'));
INSERT INTO public.ingredient (name)
VALUES ('whipped cream. *Allergens: milk')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fruit waffles'),
        (select max(id) from public.ingredient where name = 'whipped cream. *Allergens: milk'));
INSERT INTO public.ingredient (name)
VALUES ('gluten')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fruit waffles'),
        (select max(id) from public.ingredient where name = 'gluten'));
INSERT INTO public.ingredient (name)
VALUES ('egg')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Fruit waffles'),
        (select max(id) from public.ingredient where name = 'egg'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chocolate waffles', 'https://korpa.ba/product_uploads/HNeiZ8USGLc3BBgQ4ftyoWCYdzCdQ6lZ.jpg', 250,
        (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chocolate waffles'),
        (select max(id) from public.category where name = 'Desserts'));
INSERT INTO public.ingredient (name)
VALUES ('Waffles')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chocolate waffles'),
        (select max(id) from public.ingredient where name = 'Waffles'));
INSERT INTO public.ingredient (name)
VALUES ('nutella')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chocolate waffles'),
        (select max(id) from public.ingredient where name = 'nutella'));
INSERT INTO public.ingredient (name)
VALUES ('grated chocolate')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chocolate waffles'),
        (select max(id) from public.ingredient where name = 'grated chocolate'));
INSERT INTO public.ingredient (name)
VALUES ('whipped cream. *Allergens: milk')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chocolate waffles'),
        (select max(id) from public.ingredient where name = 'whipped cream. *Allergens: milk'));
INSERT INTO public.ingredient (name)
VALUES ('gluten')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chocolate waffles'),
        (select max(id) from public.ingredient where name = 'gluten'));
INSERT INTO public.ingredient (name)
VALUES ('egg')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chocolate waffles'),
        (select max(id) from public.ingredient where name = 'egg'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Fruit salad', 'None', 280, (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Fruit salad'),
        (select max(id) from public.category where name = 'Desserts'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Pancake Snickers', 'None', 230, (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Pancake Snickers'),
        (select max(id) from public.category where name = 'Desserts'));
INSERT INTO public.ingredient (name)
VALUES ('Pancake')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pancake Snickers'),
        (select max(id) from public.ingredient where name = 'Pancake'));
INSERT INTO public.ingredient (name)
VALUES ('cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pancake Snickers'),
        (select max(id) from public.ingredient where name = 'cream'));
INSERT INTO public.ingredient (name)
VALUES ('caramel')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pancake Snickers'),
        (select max(id) from public.ingredient where name = 'caramel'));
INSERT INTO public.ingredient (name)
VALUES ('peanuts')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pancake Snickers'),
        (select max(id) from public.ingredient where name = 'peanuts'));
INSERT INTO public.ingredient (name)
VALUES ('whipped cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pancake Snickers'),
        (select max(id) from public.ingredient where name = 'whipped cream'));
INSERT INTO public.ingredient (name)
VALUES ('chocolate dressing')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pancake Snickers'),
        (select max(id) from public.ingredient where name = 'chocolate dressing'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Pancake Twix', 'None', 230, (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Pancake Twix'),
        (select max(id) from public.category where name = 'Desserts'));
INSERT INTO public.ingredient (name)
VALUES ('Pancake')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pancake Twix'),
        (select max(id) from public.ingredient where name = 'Pancake'));
INSERT INTO public.ingredient (name)
VALUES ('cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pancake Twix'),
        (select max(id) from public.ingredient where name = 'cream'));
INSERT INTO public.ingredient (name)
VALUES ('plazma biscuit')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pancake Twix'),
        (select max(id) from public.ingredient where name = 'plazma biscuit'));
INSERT INTO public.ingredient (name)
VALUES ('caramel dressing')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pancake Twix'),
        (select max(id) from public.ingredient where name = 'caramel dressing'));
INSERT INTO public.ingredient (name)
VALUES ('whipped cream')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pancake Twix'),
        (select max(id) from public.ingredient where name = 'whipped cream'));
INSERT INTO public.ingredient (name)
VALUES ('chocolate dressing')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Pancake Twix'),
        (select max(id) from public.ingredient where name = 'chocolate dressing'));
insert into public.category (name, photo)
VALUES ('Sauces', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('BBQ sauce', 'None', 40, (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'BBQ sauce'),
        (select max(id) from public.category where name = 'Sauces'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('aioli sauce', 'None', 40, (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'aioli sauce'),
        (select max(id) from public.category where name = 'Sauces'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Ranch sauce', 'None', 40, (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Ranch sauce'),
        (select max(id) from public.category where name = 'Sauces'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Ketchup', 'None', 40, (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Ketchup'),
        (select max(id) from public.category where name = 'Sauces'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Brava sauce', 'None', 40, (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Brava sauce'),
        (select max(id) from public.category where name = 'Sauces'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chili sauce', 'None', 40, (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chili sauce'),
        (select max(id) from public.category where name = 'Sauces'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Mayonnaise', 'None', 40, (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Mayonnaise'),
        (select max(id) from public.category where name = 'Sauces'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Mustard', 'None', 40, (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Mustard'),
        (select max(id) from public.category where name = 'Sauces'));
insert into public.category (name, photo)
VALUES ('Extras', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Cheese', 'None', 80, (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Cheese'),
        (select max(id) from public.category where name = 'Extras'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Mushrooms', 'None', 50, (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Mushrooms'),
        (select max(id) from public.category where name = 'Extras'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Ham', 'None', 60, (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Ham'),
        (select max(id) from public.category where name = 'Extras'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Pepperoni', 'None', 70, (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Pepperoni'),
        (select max(id) from public.category where name = 'Extras'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Prosciutto', 'None', 80, (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Prosciutto'),
        (select max(id) from public.category where name = 'Extras'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Olives', 'None', 40, (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Olives'),
        (select max(id) from public.category where name = 'Extras'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Cheese - white', 'None', 60, (select max(id) from public.restaurant where name = 'Centar Bar'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Cheese - white'),
        (select max(id) from public.category where name = 'Extras'));