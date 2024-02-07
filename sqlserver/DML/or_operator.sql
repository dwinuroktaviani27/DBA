use BikeStores;

--finds the products whose list price is less than 200 or greater than 6,000
SELECT 
	product_name,
	list_price
FROM
	production.products
WHERE 
	list_price < 200 or list_price > 6000 
ORDER BY 
	list_price;

--MULTIPLE OPERATORS 
--finds the products whose brand id is 1, 2, or 4
SELECT 
	product_name,
	brand_id
FROM
	production.products
WHERE 
	brand_id = 1 OR brand_id = 2 OR brand_id = 4
ORDER BY 
	brand_id DESC;

--Replace multiple OR operators by the IN operator
SELECT 
	product_name,
	brand_id
FROM
	production.products
WHERE 
	brand_id IN(1,2,4)
ORDER BY 
	brand_id DESC;

--Using OR operator with AND operator 
--we used both OR and AND operators. As always, SQL Server evaluated the AND operator first. 
--Therefore, the query returned the products whose brand id is 2 and the list price is greater than 500 or those whose brand id is 1.
SELECT 
	product_name,
	brand_id,
	list_price
FROM
	production.products
WHERE 
	brand_id  = 1 or brand_id = 2 AND list_price > 500
ORDER BY 
	brand_id DESC,
	list_price;

-- find the products whose brand id is 1 or 2 and list price is greater than 500
SELECT 
	product_name,
	brand_id,
	list_price
FROM
	production.products
WHERE 
	(brand_id  = 1 or brand_id = 2) AND list_price > 500
ORDER BY 
	brand_id;