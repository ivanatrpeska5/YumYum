ALTER TABLE public.ingredient
    ADD CONSTRAINT unique_ingredient_name_constraint UNIQUE (name);

ALTER TABLE public.category
    ADD CONSTRAINT unique_category_name_constraint UNIQUE (name);

ALTER TABLE public.ingredient_in_food
    ADD CONSTRAINT unique_food_ingredient_constraint UNIQUE (food_id, ingredient_id);

