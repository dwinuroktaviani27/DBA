use BikeStores;

--statement finds the products whose list price is one of the following values: 89.99, 109.99, and 159.99
SELECT 
	product_name,
	list_price
FROM	
	production.products
WHERE 
	list_price IN (89.99, 109.99, 159.99)
ORDER BY 
	list_price;

--The query above is equivalent to the following query that uses the OR operator 
SELECT 
	product_name,
	list_price
FROM	
	production.products
WHERE 
	list_price = 89.99 OR list_price= 109.99 OR list_price = 159.99
ORDER BY 
	list_price;

--find the products whose list prices are not one of the prices above, you use the NOT IN operator
SELECT 
	product_name,
	list_price
FROM	
	production.products
WHERE 
	list_price NOT IN (89.99, 109.99, 159.99)
ORDER BY 
	list_price;

--Using SQL Server IN operator with a subquery
--query returns a list of product identification numbers of the products located in the store id one and has the quantity greater than or equal to 30
SELECT
	product_id
FROM
	production.stocks
WHERE 
	store_id = 1 AND quantity >= 30;

--use the query above as a subquery 
SELECT 
	product_id,
	product_name,
	list_price
FROM
	production.products
WHERE
	product_id IN (
		SELECT 
			product_id
		FROM 
			production.stocks
		WHERE store_id = 1 AND quantity >= 30
	)
ORDER BY product_id;