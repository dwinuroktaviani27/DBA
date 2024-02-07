USE BikeStores;

-- RETRIEVE SOME COLUMNS
--query the first name and last name of all customers
SELECT 
	first_name, 
	last_name
FROM 
	sales.customers;

--statement returns the first names, last names, and emails of all customers
SELECT 
	first_name, 
	last_name,
	email
FROM 
	sales.customers;

--RETRIEVE ALL COLUMNS
SELECT 
	*
FROM 
	sales.customers;

--SORT RESULT SET
SELECT 
	*
FROM 
	sales.customers
WHERE state = 'CA';

-- sort the result set based on one or more columns, use the ORDER BY clause
SELECT
    *
FROM
    sales.customers
WHERE
    state = 'CA'
ORDER BY
    first_name;

--GROUP ROWS INTO GROUP
SELECT
	city,
	COUNT(*)
FROM 
	sales.customers
WHERE 
	state = 'CA'
GROUP BY 
	city
ORDER BY 
	city;

--FILTER GROUPS
SELECT
	city,
	COUNT(*)
FROM 
	sales.customers
WHERE 
	state = 'CA'
GROUP BY 
	city
HAVING
	COUNT (*) > 10
ORDER BY 
	city;


