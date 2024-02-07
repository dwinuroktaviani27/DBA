use BikeStores;

--statement returns all order_id from the sales.order_items and product name from the production.products table
SELECT 
	product_name,
	order_id
FROM
	sales.order_items o
	RIGHT JOIN production.products p
	ON o.product_id = p.product_id
ORDER BY order_id;

-- get the products that do not have any sales, you add a WHERE clause to the above query to filter out the products that have sales
SELECT 
	product_name,
	order_id
FROM
	sales.order_items o
	RIGHT JOIN production.products p
	ON o.product_id = p.product_id
WHERE order_id IS NULL
ORDER BY product_name;