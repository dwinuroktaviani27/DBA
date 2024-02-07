use BikeStores

--finds the customers whose last name starts with the letter z
SELECT 
	customer_id,
	first_name,
	last_name
FROM 
	sales.customers
WHERE 
	last_name LIKE 'z%'
ORDER BY 
	first_name;

--returns the customers whose last name ends with the string er
SELECT 
	customer_id,
	first_name,
	last_name
FROM 
	sales.customers
WHERE 
	last_name LIKE '%er'
ORDER BY 
	first_name;


--statement retrieves the customers whose last name starts with the letter t and ends with the letter s
SELECT 
	customer_id,
	first_name,
	last_name
FROM 
	sales.customers
WHERE 
	last_name LIKE 't%s'
ORDER BY 
	first_name;

--statement returns the customers where the second character is the letter u
SELECT 
	customer_id,
	first_name,
	last_name
FROM 
	sales.customers
WHERE 
	last_name LIKE '_u%'
ORDER BY 
	first_name;

--The square brackets with a list of characters e.g., [ABC] represents a single character that must be one of the characters specified in the list.
-- query returns the customers where the first character in the last name is Y or Z
SELECT 
	customer_id,
	first_name,
	last_name
FROM 
	sales.customers
WHERE 
	last_name LIKE '[YZ]%'
ORDER BY 
	last_name;

--The square brackets with a character range e.g., [A-C] represent a single character that must be within a specified range.
--query finds the customers where the first character in the last name is the letter in the range A through C
SELECT 
	customer_id,
	first_name,
	last_name
FROM 
	sales.customers
WHERE 
	last_name LIKE '[A-C]%'
ORDER BY 
	first_name;

--The square brackets with a caret sign (^) followed by a range e.g., [^A-C] or character list e.g., [ABC] represent a 
--single character that is not in the specified range or character list.
--query returns the customers where the first character in the last name is not the letter in the range A through X
SELECT 
	customer_id,
	first_name,
	last_name
FROM 
	sales.customers
WHERE 
	last_name LIKE '[^A-X]%'
ORDER BY 
	first_name;

--The NOT LIKE operator
--uses the NOT LIKE operator to find customers where the first character in the first name is not the letter A
SELECT 
	customer_id,
	first_name,
	last_name
FROM 
	sales.customers
WHERE 
	last_name NOT LIKE 'A%'
ORDER BY 
	first_name;

--SQL Server LIKE with ESCAPE
--create new table for demonstration
CREATE TABLE sales.feedbacks (
	feedback_id INT IDENTITY(1,1) PRIMARY KEY,
	comment VARCHAR(255) NOT NULL
);

--insert some rows into the sales.feedbacks
INSERT INTO sales.feedbacks (comment)
VALUES ('Can you give me 30% discount?'),
      ('May I get me 30USD off?'),
      ('Is this having 20% discount today?');

--query data from the sales.feedbacks table
SELECT * FROM sales.feedbacks;

--search for 30% in the comment column,
SELECT 
	feedback_id,
	comment
FROM 
	sales.feedbacks
WHERE 
	comment LIKE '%30%';

--search for 30% in the comment column,which is not what we expected.
SELECT 
	feedback_id,
	comment
FROM 
	sales.feedbacks
WHERE 
	comment LIKE '%30!%%' ESCAPE '!';