use BikeStores;

--statement finds the customers who do not have phone numbers recorded in the  customers table
SELECT
	customer_id,
	first_name,
	last_name,
	phone
FROM 
	sales.customers
WHERE
	phone IS NULL
ORDER BY
	first_name,
	last_name;

--to check if a value is not NULL, you can use the IS NOT NULL operator
SELECT
	customer_id,
	first_name,
	last_name,
	phone
FROM 
	sales.customers
WHERE
	phone IS NOT NULL
ORDER BY
	first_name,
	last_name;