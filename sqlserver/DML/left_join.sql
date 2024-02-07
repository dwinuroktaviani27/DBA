use BikeStores;

--statement uses the LEFT JOIN clause to query data from the products and order_items tables
SELECT 
	product_name,
	order_id
FROM
	production.products p
	LEFT JOIN sales.order_items o 
	ON o.product_id = p.product_id
ORDER BY order_id;

--query returns the products that do not appear in any sales order
SELECT
	product_name,
	order_id
FROM
	production.products p
	LEFT JOIN sales.order_items o 
	ON o.product_id = p.product_id
WHERE order_id IS NULL;

--oin three tables: production.products, sales.orders, and sales.order_items using the LEFT JOIN clauses
SELECT
	p.product_name,
	o.order_id,
	i.item_id,
	o.order_date
FROM
	production.products p
	LEFT JOIN sales.order_items i
	ON i.product_id = p.product_id
	LEFT JOIN sales.orders o
	ON o.order_id = i.order_id
ORDER BY order_id;

--query finds the products that belong to order id 100
SELECT 
	product_name,
	order_id
FROM
	production.products p
	LEFT JOIN sales.order_items o 
	ON o.product_id = p.product_id
WHERE order_id = 100
ORDER BY order_id;

--the condition order_id = 100 to the ON clause:
SELECT 
	product_name,
	order_id
FROM
	production.products p
	LEFT JOIN sales.order_items o 
	ON o.product_id = p.product_id
	AND o.order_id = 100
ORDER BY order_id;