USE BikeStores;

--query returns all products from the products table and sorts the products by their list prices and names:
SELECT
	product_name,
	list_price
FROM 
	production.products
ORDER BY 
	list_price,
	product_name;

--To skip the first 10 products and return the rest, use the OFFSET clause as shown in the following statement:
SELECT
	product_name,
	list_price
FROM 
	production.products
ORDER BY 
	list_price,
	product_name
OFFSET 10 ROWS;

--To skip the first 10 products and select the next 10 products, use both OFFSET and FETCH clauses as follows:
SELECT
	product_name,
	list_price
FROM 
	production.products
ORDER BY 
	list_price,
	product_name
OFFSET 10 ROWS
FETCH NEXT 10 ROWS ONLY;

--To get the top 10 most expensive products use both OFFSET and FETCH clauses:
SELECT
	product_name,
	list_price
FROM 
	production.products
ORDER BY 
	list_price DESC,
	product_name
OFFSET 0 ROWS
FETCH FIRST 10 ROWS ONLY;
