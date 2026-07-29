with sales_source as (
SELECT traffic_source, 
		sum(amount_money) as "amount_sales"
FROM user_events
group by traffic_source
order by amount_sales desc
-- suma trzieb cez konkretny source(email, ads,...)
)
select* from sales_source;


with customer_stat as(
SELECT traffic_source, 
		sum(event_type = "page_view" ) as "views",
        sum(event_type = "add_to_cart") as "cart",
        sum(event_type = "checkout_start") as "checkout",
        sum(event_type = "payment_info") as "payment_info",
        sum(event_type = "purchase") as "purchase",
        (sum(event_type = "add_to_cart")) / (sum(event_type = "page_view" )) * 100 AS "views to cart %",
        (sum(event_type = "checkout_start")) / (sum(event_type = "add_to_cart" )) * 100 AS "cart to checkout %",
        (sum(event_type = "payment_info")) / (sum(event_type = "checkout_start" )) * 100 AS "checkout to payment_info %",
        (sum(event_type = "purchase")) / (sum(event_type = "payment_info" )) * 100 AS "payment_info to purchase %",
        (sum(event_type = "purchase")) / (sum(event_type = "page_view" )) * 100 AS "wiew to purchase %",
        (sum(event_type = "purchase")) / (sum(event_type = "add_to_cart" )) * 100 AS "cart to purchase %"
FROM user_events
group by traffic_source
-- konkretne kroky cez konkretny source(email, ads,...)
)
select * from customer_stat;

SELECT *
FROM user_events;

with num_event as (
SELECT event_type, 
		count(event_type)
FROM user_events
group by event_type
-- kolko krat bola vykonana dana akcia (nakup, scrollovanie,...)
)
select * from num_event;



SELECT distinct user_id
FROM user_events
where event_type = "purchase";

SELECT product_id, 
		round(sum(amount_money)) as "P_sales",
        count(user_id) as "Num_buyers",
        round(sum(amount_money) /count(user_id)) AS "average_price_of_products per person"
FROM user_events
WHERE event_type = 'purchase'
group by product_id
order by P_sales desc;
-- cena produktu jeho pocet kupujucich a trzby



WITH user_durations AS (
    SELECT event_type,
        (TIMESTAMPDIFF(SECOND, event_date, LEAD(event_date) OVER (PARTITION BY user_id ORDER BY event_date)))/60 AS duration_min
    FROM user_events
)
SELECT event_type,
    AVG(duration_min) AS avg_duration_min
FROM user_durations
WHERE duration_min IS NOT NULL 
GROUP BY event_type;
-- casove udaje

SELECT CAST(event_date AS DATE) as days, sum(amount_money)
FROM user_events
group by days;
