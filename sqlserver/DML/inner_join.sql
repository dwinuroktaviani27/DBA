use BikeStores;

--statement retrieves the product information from the production.products table
SELECT 
	product_name,
	list_price,
	category_id
FROM 
	production.products
ORDER BY product_name DESC;

--include the category names in the result set, you use the INNER JOIN clause
SELECT 
	product_name,
	list_price,
	category_name
FROM 
	production.products p
	INNER JOIN production.categories c
	ON c.category_id = p.category_id
ORDER BY product_name DESC;

--statement uses two INNER JOIN clauses to query data from the three tables
SELECT 
	product_name,
	list_price,
	brand_name,
	category_name
FROM 
	production.products p
	INNER JOIN production.categories c
	ON c.category_id = p.category_id
	INNER JOIN production.brands b
	ON b.brand_id = p.brand_id
ORDER BY product_name DESC;