use BikeStores;

--statement retrieves all products with the category id 1
SELECT 
	product_id,
	product_name,
	category_id,
	model_year,
	list_price
FROM
	production.products
WHERE 
	category_id = 1
ORDER BY list_price DESC;

--returns products that meet two conditions: category id is 1, and the model is 2018. It uses the logical operator AND to combine the two conditions
SELECT 
	product_id,
	product_name,
	category_id,
	model_year,
	list_price
FROM
	production.products
WHERE 
	category_id = 1 AND model_year = 2018
ORDER BY list_price DESC;

--statement finds the products whose list price is greater than 300, and the model is 2018.
SELECT 
	product_id,
	product_name,
	category_id,
	model_year,
	list_price
FROM
	production.products
WHERE 
	list_price > 300 AND model_year = 2018
ORDER BY list_price DESC;

--query finds products whose list price is greater than 3,000 or whose model is 2018.
SELECT 
	product_id,
	product_name,
	category_id,
	model_year,
	list_price
FROM
	production.products
WHERE 
	list_price > 3000 OR model_year = 2018
ORDER BY list_price DESC;

--statement finds the products whose list prices are between 1,899 and 1,999.99

SELECT 
	product_id,
	product_name,
	category_id,
	model_year,
	list_price
FROM
	production.products
WHERE 
	list_price BETWEEN  1.889 AND 1999.99
ORDER BY list_price DESC;

--uses the IN operator to find products whose list price is 299.99 or 466.99 or 489.99.
SELECT 
	product_id,
	product_name,
	category_id,
	model_year,
	list_price
FROM
	production.products
WHERE 
	list_price IN(299.99, 466.99, 489.99)
ORDER BY list_price DESC;

--uses the LIKE operator to find products whose name contains the string Cruiser
SELECT 
	product_id,
	product_name,
	category_id,
	model_year,
	list_price
FROM
	production.products
WHERE 
	product_name LIKE '%Cruiser%'
ORDER BY list_price;