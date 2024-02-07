USE BikeStores;

--statement returns all cities of all customers in the customers tables
SELECT
	city
FROM 
	sales.customers
ORDER BY 
	city;

--To get distinct cities, add the DISTINCT
SELECT DISTINCT
	city
FROM 
	sales.customers
ORDER BY 
	city;

--statement returns all cities and states of all customers:
SELECT
	city,
	state
FROM 
	sales.customers
ORDER BY 
	city,
	state;

--statement finds the distinct city and state of all customers
SELECT DISTINCT
	city,
	state
FROM 
	sales.customers;

--DISTINCT with null values example
--finds the distinct phone numbers of the customers
SELECT DISTINCT
	phone
FROM 
	sales.customers
ORDER BY
	phone;

--statement uses the GROUP BY clause to return distinct cities together with state and zip code from the sales.customers table:
SELECT 
	city,
	state,zip_code
FROM 
	sales.customers
GROUP BY 
	city,state,zip_code
ORDER BY
	city, state,zip_code;

--It is equivalent to the following query that uses the DISTINCT operator
SELECT DISTINCT
	city,
	state,
	zip_code
FROM 
	sales.customers;