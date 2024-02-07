USE BikeStores;

--A table can be given an alias which is known as correlation name or range variable
SELECT 
	sales.customers.customer_id,
	first_name,
	last_name,
	order_id
FROM 
	sales.customers
INNER JOIN sales.orders ON sales.orders.customer_id = sales.customers.customer_id;

-- improve its readability by using the table alias as 
SELECT 
	c.customer_id,
	first_name,
	last_name,
	order_id
FROM 
	sales.customers c
INNER JOIN sales.orders o ON o.customer_id = c.customer_id;
