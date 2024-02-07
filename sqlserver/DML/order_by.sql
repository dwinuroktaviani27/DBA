USE BikeStores;

--statement sorts the customer list by the first name in ascending order
SELECT
	first_name,
	last_name
FROM 
	sales.customers
ORDER BY 
	first_name;

--statement sorts the customer list by the first name in descending
SELECT
	first_name,
	last_name
FROM 
	sales.customers
ORDER BY 
	first_name DESC;

/*
statement retrieves the first name, last name, and city of the customers. It sorts 
the customer list by the city first and then by the first name.
*/
SELECT
	city,
	first_name,
	last_name
FROM 
	sales.customers
ORDER BY 
	city,
	first_name;

/*
statement sorts the customers by the city in descending order and then sorts the sorted 
result set by the first name in ascending order.
*/

SELECT
	city,
	first_name,
	last_name
FROM 
	sales.customers
ORDER BY 
	city DESC,
	first_name ASC;

--statement sorts the customer by the state even though the state column does not appear on the select list.
SELECT
	city,
	first_name,
	last_name
FROM 
	sales.customers
ORDER BY 
	state;

--statement uses the LEN() function in the ORDER BY clause to retrieve a customer list sorted by the length of the first name:
SELECT
	first_name,
	last_name
FROM 
	sales.customers
ORDER BY 
	LEN(first_name) DESC;

--statement sorts the customers by first name and last name. But instead of specifying the column names explicitly, it uses the ordinal positions of the columns:
SELECT
	first_name,
	last_name
FROM 
	sales.customers
ORDER BY 
	1,
	2;