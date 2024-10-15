-- STATISTICS VIEWS
-- v_orders_by_restaurant
drop view if exists public.v_orders_by_restaurant;
create or replace view public.v_orders_by_restaurant AS
select r.id as restaurant_id, r.name as restaurant_name, count(distinct o.id) as number_of_orders
from public.customer c
         join public.users u on c.user_id = u.user_id
         join public.orders o on o.customer_user_id = c.user_id
         join public.cart c2 on c2.id = o.cart_id
         join public.cart_consists_of_food ccof on c2.id = ccof.cart_id
         join public.food f on f.id = ccof.food_id
         join public.category_of_food cof on f.id = cof.food_id
         join public.category c3 on cof.category_id = c3.id
         join public.restaurant r on r.id = c2.restaurant_id
group by r.id, r.name;
select * from public.v_orders_by_restaurant;

-- v_orders_by_category
drop view if exists public.v_orders_by_category;
create or replace view public.v_orders_by_category AS
select c3.id as category_id, c3.name as category_name, count(c3.id) as number_of_orders
from public.customer c
         join public.users u on c.user_id = u.user_id
         join public.orders o on o.customer_user_id = c.user_id
         join public.cart c2 on c2.id = o.cart_id
         join public.cart_consists_of_food ccof on c2.id = ccof.cart_id
         join public.food f on f.id = ccof.food_id
         join public.category_of_food cof on f.id = cof.food_id
         join public.category c3 on cof.category_id = c3.id
         join public.restaurant r on r.id = c2.restaurant_id
group by c3.id, c3.name;
select * from public.v_orders_by_category;

-- v_orders_by_restaurants_over_time
drop view if exists public.v_orders_over_time_by_restaurant;
CREATE OR REPLACE VIEW public.v_orders_over_time_by_restaurant AS
WITH last_10_days AS (
    SELECT generate_series(CURRENT_DATE - interval '9 days', CURRENT_DATE, '1 day'::interval)::date AS order_date
),
     restaurant_data AS (
         SELECT r.id AS restaurant_id, r.name
         FROM public.restaurant r
     )
SELECT
    ROW_NUMBER() OVER (ORDER BY d.order_date DESC, r.name) AS id,
    d.order_date as order_date,
    r.name as restaurant_name,
    COALESCE(subquery.number_of_orders, 0) AS number_of_orders
FROM last_10_days d
         CROSS JOIN restaurant_data r
         LEFT JOIN (
    SELECT
        o.date_created::date AS order_date,
        c2.restaurant_id,
        COUNT(DISTINCT o.id) AS number_of_orders
    FROM public.orders o
             JOIN public.cart c2 ON c2.id = o.cart_id
             JOIN public.cart_consists_of_food ccof ON c2.id = ccof.cart_id
             JOIN public.food f ON f.id = ccof.food_id
    GROUP BY o.date_created::date, c2.restaurant_id
) subquery ON subquery.order_date = d.order_date AND subquery.restaurant_id = r.restaurant_id
ORDER BY d.order_date DESC, r.name;

select * from public.v_orders_over_time_by_restaurant;
-- end

