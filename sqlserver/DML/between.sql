use BikeStores;

--query finds the products whose list prices are between 149.99 and 199.99
SELECT 
	product_id,
	product_name,
	list_price
FROM 
	production.products
WHERE 
	list_price BETWEEN 149.99 AND 199.99
ORDER BY 
	list_price;

--get the products whose list prices are not in the range of 149.99 and 199.99,use the NOT BETWEEN
SELECT 
	product_id,
	product_name,
	list_price
FROM 
	production.products
WHERE 
	list_price NOT BETWEEN 149.99 AND 199.99
ORDER BY 
	list_price;

--query finds the orders that customers placed between January 15, 2017 and January 17, 2017
SELECT 
	order_id,
	customer_id,
	order_date,
	order_status
FROM 
	sales.orders
WHERE 
	order_date BETWEEN '20170115' AND '20170117'
ORDER BY 
	order_date;