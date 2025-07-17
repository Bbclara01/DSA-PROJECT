SELECT * FROM public.kms
SELECT "product_category",
SUM("sales") AS total_sales
FROM kms
GROUP BY "product_category"
ORDER BY total_sales DESC
LIMIT 1;

product_category	total_sales
Technology	5984248.1820000000


2.
Top region
SELECT "region", 
SUM(sales) AS total_sales
FROM kms
GROUP BY "region"
ORDER BY total_sales DESC
LIMIT 3;

region	total_sales
West	3597549.2755000000
Ontario	3063212.4795000000
Prarie	2837304.6015000000


BOTTOM REGION
SELECT "region", 
SUM(sales) AS total_sales
FROM kms
GROUP BY "region"
ORDER BY total_sales ASC
LIMIT 3;

region	total_sales
Nunavut	116376.4835000000
Northwest Territories	800847.3295000000
Yukon	975867.3710000000


3.
SELECT SUM(sales) AS total_sales
FROM kms
WHERE province='Ontario'
AND product_sub_category ='Appliances';

total_sales
202346.8400000000


5.
SELECT ship_mode,
SUM(shipping_cost) AS total_shipping_cost
FROM kms
GROUP BY ship_mode
ORDER BY total_shipping_cost DESC
LIMIT 1;

ship_mode	total_shipping_cost
Delivery Truck	51971.9400000000


6.
SELECT customer_name, 
SUM(sales) AS total_sales
FROM kms
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;



SELECT customer_name, product_category, 
SUM(sales) AS total_sales
FROM kms
GROUP BY customer_name, product_category
ORDER BY customer_name, total_sales DESC;

7.
SELECT customer_name, 
SUM(sales) AS total_sales
FROM kms
WHERE customer_segmant = 'Small Business'
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 1;

customer_name	total_sales
Dennis Kane	75967.5905000000


8.
SELECT customer_name, 
COUNT(order_id) AS total_orders
FROM kms
WHERE customer_segmant = 'Corporate'
AND order_date BETWEEN '2009-01-01' AND '2012-12-31'
GROUP BY customer_name
ORDER BY total_orders DESC
LIMIT 1;

customer_name	total_orders
Adam Hart	27


9. 
SELECT customer_name, 
SUM(profit) AS total_profit
FROM kms
WHERE customer_segmant = 'Consumer'
GROUP BY customer_name
ORDER BY total_profit DESC
LIMIT 1;

customer_name	total_profit
Emily Phan	34005.4400000000


10
SELECT DISTINCT customer_name, customer_segmant,
FROM kms
WHERE order_priorty= 'low';

