-- DELIVERY MAN
INSERT INTO public.users (email, name, password, phone, surname, username, role)
VALUES ('delivery_employee@mail.com', 'Employee', '$2a$10$L6mckt0mfQhi3pVdaz0fvuJMQIKh0D3ZiF1fBPvXK.JciP31hYT/2',
        '075368426', 'Delivery', 'delivery_employee', 'delivery');

INSERT INTO public.delivery_man (user_id)
VALUES ((select max(user_id) from public.users));
-- CUSTOMERS
INSERT INTO public.users (email, name, password, phone, surname, username, role)
VALUES ('hungry13_customer13@mail.com', 'customer13', '$2a$10$Yjfls9w.o7BsgnsFwjp9wuQjIlwJ5oggpc7BzrhTtOACI37PppaS6',
        '070123456', 'hungry13', 'hungry13_customer13', 'customer');

INSERT INTO public.customer (user_id)
VALUES ((select max(user_id) from public.users));

select create_customer_order((select max(user_id) from public.customer), 1, 5);
select create_customer_order((select max(user_id) from public.customer), 2, 5);
select create_customer_order((select max(user_id) from public.customer), 3, 5);
select create_customer_order((select max(user_id) from public.customer), 4, 5);
select create_customer_order((select max(user_id) from public.customer), 5, 5);
select create_customer_order((select max(user_id) from public.customer), 6, 5);
select create_customer_order((select max(user_id) from public.customer), 7, 5);
select create_customer_order((select max(user_id) from public.customer), 8, 5);
select create_customer_order((select max(user_id) from public.customer), 9, 5);
select create_customer_order((select max(user_id) from public.customer), 10, 5);
select create_customer_order((select max(user_id) from public.customer), 11, 5);
select create_customer_order((select max(user_id) from public.customer), 12, 5);




CREATE OR REPLACE FUNCTION create_customer_order(
    customer_id bigint,
    input_restaurant_id INT,
    num_food_items INT
) RETURNS VOID AS
$$
DECLARE
    cart_id         INT;
    food            RECORD;
    location_id     INT;
    delivery_man_id INT;
BEGIN
    -- Step 1: Insert a new cart for the customer
    INSERT INTO public.cart (customer_user_id, restaurant_id, status)
    VALUES (customer_id, input_restaurant_id, 'ORDERED')
    RETURNING id INTO cart_id;

    -- Step 2: Randomly select 'num_food_items' foods from the restaurant and insert them into the cart
    FOR food IN
        SELECT id
        FROM public.food f
        WHERE f.restaurant_id = input_restaurant_id
        ORDER BY RANDOM()
        LIMIT num_food_items
        LOOP
            INSERT INTO public.cart_consists_of_food (quantity, cart_id, food_id)
            VALUES (1, cart_id, food.id);
        END LOOP;

    -- Step 3: Insert a location for delivery
    INSERT INTO public.location (number, street)
    VALUES (RANDOM() * 100, 'Street ' || random() * 100) -- Replace with dynamic data if needed
    RETURNING id INTO location_id;

    -- Step 4: Select a random delivery man
    SELECT user_id INTO delivery_man_id FROM public.delivery_man ORDER BY RANDOM() LIMIT 1;

    -- Step 5: Insert an order
    INSERT INTO public.orders (date_created, payment_method, status, cart_id, customer_user_id, delivery_man_user_id,
                               location_id, payment_id)
    VALUES (NOW(), 'OnDelivery', 'Delivered', cart_id, customer_id, delivery_man_id, location_id, null);

    RAISE NOTICE 'Order created for customer %, cart ID %, with % food items.', customer_id, cart_id, num_food_items;
END ;
$$ LANGUAGE plpgsql;
