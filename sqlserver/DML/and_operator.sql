use BikeStores;

--finds the products where the category identification number is one and the list price is greater than 400
SELECT *
FROM
	production.products
WHERE 
	category_id = 1 AND list_price >  400
ORDER BY list_price DESC;

--statement finds the products that meet all the following conditions: category id is 1, the list price is greater than 400, and the brand id is 1
SELECT *
FROM
	production.products
WHERE 
	category_id = 1 AND list_price >  400 AND brand_id = 1
ORDER BY list_price DESC;

--Using the AND operator with other logical operators
--used both OR and AND operators in the condition. As always, SQL Server evaluated the AND operator first. 
--Therefore, the query retrieved the products whose brand id is two and list price is greater than 1,000 or those whose brand id is one.
SELECT *
FROM
	production.products
WHERE 
	brand_id = 1 OR brand_id = 2 AND list_price > 1000
ORDER BY brand_id DESC;

--To get the product whose brand id is one or two and list price is larger than 1,000 use parentheses
SELECT *
FROM
	production.products
WHERE 
	(brand_id = 1 OR brand_id = 2) AND list_price > 1000
ORDER BY brand_id DESC;