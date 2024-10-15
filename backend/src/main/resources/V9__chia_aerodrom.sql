INSERT INTO public.location (number, street)
VALUES ('5,', 'Bojmija 8/1-local');
INSERT INTO public.restaurant (average_rating, delivery_time, logo, name, photo, location_id)
VALUES (0, '20-30 min', 'assets/images/chia_aerodrom.png', 'CHIA Aerodrom',
        'https://korpa.ba/restaurant_uploads/Vw3IXI1fIrB0mfxsnSO1nvCrxRlTbanD.jpg',
        (select max(id) from public.location));
INSERT INTO public.users (email, name, password, phone, surname, username, role)
VALUES ('chia_aerodrom_employee@mail.com', 'Employee', '$2a$10$VAlO0DtwWX42GHzGGM0DHOIx2kLX1EAhLwaTrXwEsj5n5K9Lr7EQO',
        '071234567', 'CHIA Aerodrom', 'chia_aerodrom_employee', 'employee');
INSERT INTO public.restaurant_employee (user_id, restaurant_id)
VALUES ((select max(user_id) from public.users), (select max(id) from public.restaurant));
INSERT INTO public.category (name, photo)
VALUES ('Healthy', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chia classic', 'https://korpa.ba/product_uploads/IHJg2z7NVWMhBccPegXTqTIUDs4N6RTX.jpg', 140,
        (select max(id) from public.restaurant where name = 'CHIA Aerodrom'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chia classic'),
        (select max(id) from public.category where name = 'Healthy'));
INSERT INTO public.ingredient (name)
VALUES ('Raspberry')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chia classic'),
        (select max(id) from public.ingredient where name = 'Raspberry'));
INSERT INTO public.ingredient (name)
VALUES ('blueberry')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chia classic'),
        (select max(id) from public.ingredient where name = 'blueberry'));
INSERT INTO public.ingredient (name)
VALUES ('banana')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chia classic'),
        (select max(id) from public.ingredient where name = 'banana'));
INSERT INTO public.ingredient (name)
VALUES ('chia')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chia classic'),
        (select max(id) from public.ingredient where name = 'chia'));
INSERT INTO public.ingredient (name)
VALUES ('cashew milk')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chia classic'),
        (select max(id) from public.ingredient where name = 'cashew milk'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Choco premium', 'https://korpa.ba/product_uploads/urU1b2U4WXMi6tavf28cinhLhOntzxkU.jpg', 160,
        (select max(id) from public.restaurant where name = 'CHIA Aerodrom'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Choco premium'),
        (select max(id) from public.category where name = 'Healthy'));
INSERT INTO public.ingredient (name)
VALUES ('Raspberry')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Choco premium'),
        (select max(id) from public.ingredient where name = 'Raspberry'));
INSERT INTO public.ingredient (name)
VALUES ('blueberry')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Choco premium'),
        (select max(id) from public.ingredient where name = 'blueberry'));
INSERT INTO public.ingredient (name)
VALUES ('banana')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Choco premium'),
        (select max(id) from public.ingredient where name = 'banana'));
INSERT INTO public.ingredient (name)
VALUES ('chia')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Choco premium'),
        (select max(id) from public.ingredient where name = 'chia'));
INSERT INTO public.ingredient (name)
VALUES ('cashew milk')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Choco premium'),
        (select max(id) from public.ingredient where name = 'cashew milk'));
INSERT INTO public.ingredient (name)
VALUES ('cocoa')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Choco premium'),
        (select max(id) from public.ingredient where name = 'cocoa'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chia protein', 'https://korpa.ba/product_uploads/qGo579oqfrp8XBIXcCyGBglbl1PjNDSu.jpg', 170,
        (select max(id) from public.restaurant where name = 'CHIA Aerodrom'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chia protein'),
        (select max(id) from public.category where name = 'Healthy'));
INSERT INTO public.ingredient (name)
VALUES ('Raspberry')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chia protein'),
        (select max(id) from public.ingredient where name = 'Raspberry'));
INSERT INTO public.ingredient (name)
VALUES ('blueberry')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chia protein'),
        (select max(id) from public.ingredient where name = 'blueberry'));
INSERT INTO public.ingredient (name)
VALUES ('banana')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chia protein'),
        (select max(id) from public.ingredient where name = 'banana'));
INSERT INTO public.ingredient (name)
VALUES ('chia')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chia protein'),
        (select max(id) from public.ingredient where name = 'chia'));
INSERT INTO public.ingredient (name)
VALUES ('cashew milk')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chia protein'),
        (select max(id) from public.ingredient where name = 'cashew milk'));
INSERT INTO public.ingredient (name)
VALUES ('protein')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chia protein'),
        (select max(id) from public.ingredient where name = 'protein'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Peanut Butter Chia', 'https://korpa.ba/product_uploads/nisji92Qq900sUbsDIsRECuxk5wumQGN.jpg', 180,
        (select max(id) from public.restaurant where name = 'CHIA Aerodrom'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Peanut Butter Chia'),
        (select max(id) from public.category where name = 'Healthy'));
INSERT INTO public.ingredient (name)
VALUES ('Raspberry')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Peanut Butter Chia'),
        (select max(id) from public.ingredient where name = 'Raspberry'));
INSERT INTO public.ingredient (name)
VALUES ('blueberry')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Peanut Butter Chia'),
        (select max(id) from public.ingredient where name = 'blueberry'));
INSERT INTO public.ingredient (name)
VALUES ('banana')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Peanut Butter Chia'),
        (select max(id) from public.ingredient where name = 'banana'));
INSERT INTO public.ingredient (name)
VALUES ('chia')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Peanut Butter Chia'),
        (select max(id) from public.ingredient where name = 'chia'));
INSERT INTO public.ingredient (name)
VALUES ('cashew milk')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Peanut Butter Chia'),
        (select max(id) from public.ingredient where name = 'cashew milk'));
INSERT INTO public.ingredient (name)
VALUES ('peanut butter')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Peanut Butter Chia'),
        (select max(id) from public.ingredient where name = 'peanut butter'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chia kids', 'https://korpa.ba/product_uploads/IO1tfdSihFAN6ui1WJ0NMI6wiXsIlLSR.jpg', 110,
        (select max(id) from public.restaurant where name = 'CHIA Aerodrom'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chia kids'),
        (select max(id) from public.category where name = 'Healthy'));
INSERT INTO public.ingredient (name)
VALUES ('Raspberry')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chia kids'),
        (select max(id) from public.ingredient where name = 'Raspberry'));
INSERT INTO public.ingredient (name)
VALUES ('blueberry')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chia kids'),
        (select max(id) from public.ingredient where name = 'blueberry'));
INSERT INTO public.ingredient (name)
VALUES ('banana')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chia kids'),
        (select max(id) from public.ingredient where name = 'banana'));
INSERT INTO public.ingredient (name)
VALUES ('chia')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chia kids'),
        (select max(id) from public.ingredient where name = 'chia'));
INSERT INTO public.ingredient (name)
VALUES ('cashew milk')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chia kids'),
        (select max(id) from public.ingredient where name = 'cashew milk'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Oatmeal', 'https://korpa.ba/product_uploads/b0Xm0szkoY5URAUPTZwb2WGKzPST78To.jpg', 200,
        (select max(id) from public.restaurant where name = 'CHIA Aerodrom'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Oatmeal'),
        (select max(id) from public.category where name = 'Healthy'));
INSERT INTO public.ingredient (name)
VALUES ('Oats')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Oatmeal'),
        (select max(id) from public.ingredient where name = 'Oats'));
INSERT INTO public.ingredient (name)
VALUES ('banana')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Oatmeal'),
        (select max(id) from public.ingredient where name = 'banana'));
INSERT INTO public.ingredient (name)
VALUES ('protein')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Oatmeal'),
        (select max(id) from public.ingredient where name = 'protein'));
INSERT INTO public.ingredient (name)
VALUES ('cashew milk')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Oatmeal'),
        (select max(id) from public.ingredient where name = 'cashew milk'));
INSERT INTO public.ingredient (name)
VALUES ('raspberry')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Oatmeal'),
        (select max(id) from public.ingredient where name = 'raspberry'));
INSERT INTO public.ingredient (name)
VALUES ('blueberry')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Oatmeal'),
        (select max(id) from public.ingredient where name = 'blueberry'));
INSERT INTO public.ingredient (name)
VALUES ('peanut butter')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Oatmeal'),
        (select max(id) from public.ingredient where name = 'peanut butter'));
INSERT INTO public.ingredient (name)
VALUES ('granola')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Oatmeal'),
        (select max(id) from public.ingredient where name = 'granola'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Smoothie', 'https://korpa.ba/product_uploads/obfHnNqX0U6halSVzvFICyQpVfjOdsS9.jpg', 160,
        (select max(id) from public.restaurant where name = 'CHIA Aerodrom'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Smoothie'),
        (select max(id) from public.category where name = 'Healthy'));
INSERT INTO public.ingredient (name)
VALUES ('Chia')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Smoothie'),
        (select max(id) from public.ingredient where name = 'Chia'));
INSERT INTO public.ingredient (name)
VALUES ('banana')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Smoothie'),
        (select max(id) from public.ingredient where name = 'banana'));
INSERT INTO public.ingredient (name)
VALUES ('protein')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Smoothie'),
        (select max(id) from public.ingredient where name = 'protein'));
INSERT INTO public.ingredient (name)
VALUES ('cashew milk')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Smoothie'),
        (select max(id) from public.ingredient where name = 'cashew milk'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Nova Kap', 'https://korpa.ba/product_uploads/nXP4afo2KxyjODFJHyEDqTlu1URMkoCw.png', 170,
        (select max(id) from public.restaurant where name = 'CHIA Aerodrom'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Nova Kap'),
        (select max(id) from public.category where name = 'Healthy'));
INSERT INTO public.ingredient (name)
VALUES ('Oats')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Nova Kap'),
        (select max(id) from public.ingredient where name = 'Oats'));
INSERT INTO public.ingredient (name)
VALUES ('chokeberry')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Nova Kap'),
        (select max(id) from public.ingredient where name = 'chokeberry'));
INSERT INTO public.ingredient (name)
VALUES ('buckwheat')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Nova Kap'),
        (select max(id) from public.ingredient where name = 'buckwheat'));
INSERT INTO public.ingredient (name)
VALUES ('banana')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Nova Kap'),
        (select max(id) from public.ingredient where name = 'banana'));
INSERT INTO public.ingredient (name)
VALUES ('Greek yogurt')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Nova Kap'),
        (select max(id) from public.ingredient where name = 'Greek yogurt'));
INSERT INTO public.ingredient (name)
VALUES ('raspberry/blueberry')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Nova Kap'),
        (select max(id) from public.ingredient where name = 'raspberry/blueberry'));
INSERT INTO public.ingredient (name)
VALUES ('cashew milk')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Nova Kap'),
        (select max(id) from public.ingredient where name = 'cashew milk'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Chia wrap', 'https://korpa.ba/product_uploads/pSJ6VzXmxBhxWUjSgH7IKqw3rDLqJACJ.png', 200,
        (select max(id) from public.restaurant where name = 'CHIA Aerodrom'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Chia wrap'),
        (select max(id) from public.category where name = 'Healthy'));
INSERT INTO public.ingredient (name)
VALUES ('Tortilla with chia seeds')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chia wrap'),
        (select max(id) from public.ingredient where name = 'Tortilla with chia seeds'));
INSERT INTO public.ingredient (name)
VALUES ('tenderloin/prosciutto')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chia wrap'),
        (select max(id) from public.ingredient where name = 'tenderloin/prosciutto'));
INSERT INTO public.ingredient (name)
VALUES ('Greek yogurt')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chia wrap'),
        (select max(id) from public.ingredient where name = 'Greek yogurt'));
INSERT INTO public.ingredient (name)
VALUES ('fresh cucumber')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chia wrap'),
        (select max(id) from public.ingredient where name = 'fresh cucumber'));
INSERT INTO public.ingredient (name)
VALUES ('pesto')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chia wrap'),
        (select max(id) from public.ingredient where name = 'pesto'));
INSERT INTO public.ingredient (name)
VALUES ('cheese')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chia wrap'),
        (select max(id) from public.ingredient where name = 'cheese'));
INSERT INTO public.ingredient (name)
VALUES ('corn')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chia wrap'),
        (select max(id) from public.ingredient where name = 'corn'));
INSERT INTO public.ingredient (name)
VALUES ('chickpeas')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Chia wrap'),
        (select max(id) from public.ingredient where name = 'chickpeas'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Raffaello oatmeal', 'None', 220, (select max(id) from public.restaurant where name = 'CHIA Aerodrom'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Raffaello oatmeal'),
        (select max(id) from public.category where name = 'Healthy'));
INSERT INTO public.ingredient (name)
VALUES ('Oats')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Raffaello oatmeal'),
        (select max(id) from public.ingredient where name = 'Oats'));
INSERT INTO public.ingredient (name)
VALUES ('banana')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Raffaello oatmeal'),
        (select max(id) from public.ingredient where name = 'banana'));
INSERT INTO public.ingredient (name)
VALUES ('protein')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Raffaello oatmeal'),
        (select max(id) from public.ingredient where name = 'protein'));
INSERT INTO public.ingredient (name)
VALUES ('cashew milk')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Raffaello oatmeal'),
        (select max(id) from public.ingredient where name = 'cashew milk'));
INSERT INTO public.ingredient (name)
VALUES ('coconut')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Raffaello oatmeal'),
        (select max(id) from public.ingredient where name = 'coconut'));
INSERT INTO public.ingredient (name)
VALUES ('nuts')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Raffaello oatmeal'),
        (select max(id) from public.ingredient where name = 'nuts'));
INSERT INTO public.ingredient (name)
VALUES ('cashew butter')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Raffaello oatmeal'),
        (select max(id) from public.ingredient where name = 'cashew butter'));
INSERT INTO public.ingredient (name)
VALUES ('granola')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Raffaello oatmeal'),
        (select max(id) from public.ingredient where name = 'granola'));
INSERT INTO public.category (name, photo)
VALUES ('Butters', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Peanut butter', 'https://korpa.ba/product_uploads/rSKUyqfFQ6cg8N7z3jueOCBTiBvlVPmQ.jpg', 220,
        (select max(id) from public.restaurant where name = 'CHIA Aerodrom'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Peanut butter'),
        (select max(id) from public.category where name = 'Butters'));
INSERT INTO public.ingredient (name)
VALUES ('peanuts')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Peanut butter'),
        (select max(id) from public.ingredient where name = 'peanuts'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Almond butter', 'https://korpa.ba/product_uploads/apsKy7dvc0L5DPGZFmiX6VbWNkayBJg2.jpg', 400,
        (select max(id) from public.restaurant where name = 'CHIA Aerodrom'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Almond butter'),
        (select max(id) from public.category where name = 'Butters'));
INSERT INTO public.ingredient (name)
VALUES ('almonds')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Almond butter'),
        (select max(id) from public.ingredient where name = 'almonds'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Cashew butter', 'https://korpa.ba/product_uploads/jtlQgUBwyCO8PlOnEvhJEg7qClhQpcmy.jpg', 400,
        (select max(id) from public.restaurant where name = 'CHIA Aerodrom'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Cashew butter'),
        (select max(id) from public.category where name = 'Butters'));
INSERT INTO public.ingredient (name)
VALUES ('cashews')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'Cashew butter'),
        (select max(id) from public.ingredient where name = 'cashews'));
INSERT INTO public.category (name, photo)
VALUES ('Desserts', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('American pancake', 'https://korpa.ba/product_uploads/iMZa64mCT83eDTao7MKwVN3UPDiwliZE.jpg', 140,
        (select max(id) from public.restaurant where name = 'CHIA Aerodrom'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'American pancake'),
        (select max(id) from public.category where name = 'Desserts'));
INSERT INTO public.ingredient (name)
VALUES ('Oats')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'American pancake'),
        (select max(id) from public.ingredient where name = 'Oats'));
INSERT INTO public.ingredient (name)
VALUES ('cashew milk')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'American pancake'),
        (select max(id) from public.ingredient where name = 'cashew milk'));
INSERT INTO public.ingredient (name)
VALUES ('protein')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'American pancake'),
        (select max(id) from public.ingredient where name = 'protein'));
INSERT INTO public.ingredient (name)
VALUES ('banana')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'American pancake'),
        (select max(id) from public.ingredient where name = 'banana'));
INSERT INTO public.ingredient (name)
VALUES ('raspberries')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'American pancake'),
        (select max(id) from public.ingredient where name = 'raspberries'));
INSERT INTO public.ingredient (name)
VALUES ('blueberries')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'American pancake'),
        (select max(id) from public.ingredient where name = 'blueberries'));
INSERT INTO public.ingredient (name)
VALUES ('peanut butter')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.ingredient_in_food (food_id, ingredient_id)
VALUES ((select max(id) from public.food where name = 'American pancake'),
        (select max(id) from public.ingredient where name = 'peanut butter'));
INSERT INTO public.category (name, photo)
VALUES ('Drinks', '/')
ON CONFLICT (name) DO NOTHING;
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Orange juice', 'https://korpa.ba/product_uploads/7x2ZJg5tGZ8NBTi0Txap97PzoDBR0JpR.jpg', 130,
        (select max(id) from public.restaurant where name = 'CHIA Aerodrom'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Orange juice'),
        (select max(id) from public.category where name = 'Drinks'));
INSERT INTO public.food (name, photo, price, restaurant_id)
VALUES ('Multivitamin juice', 'https://korpa.ba/product_uploads/BCDBnVjiK0ZYZ1ugp18PiWPgtgHCiNUG.jpg', 140,
        (select max(id) from public.restaurant where name = 'CHIA Aerodrom'));
INSERT INTO public.category_of_food (food_id, category_id)
VALUES ((select max(id) from public.food where name = 'Multivitamin juice'),
        (select max(id) from public.category where name = 'Drinks'));