use BikeStores;

--create a new schema named hr
CREATE SCHEMA hr;
GO

-- create two new tables named candidates and employees in the hr schema
CREATE TABLE hr.candidates (
	id INT PRIMARY KEY IDENTITY,
	fullname VARCHAR(100) not null
);

CREATE TABLE hr.employees(
	id INT PRIMARY KEY IDENTITY,
	fullname VARCHAR(100) NOT NULL
);

-- insert some rows into the candidates and employees tables
INSERT INTO 
    hr.candidates(fullname)
VALUES
    ('John Doe'),
    ('Lily Bush'),
    ('Peter Drucker'),
    ('Jane Doe');


INSERT INTO 
    hr.employees(fullname)
VALUES
    ('John Doe'),
    ('Jane Doe'),
    ('Michael Scott'),
    ('Jack Sparrow');

--INNER JOIN 
-- inner join clause to get the rows from the candidates table that has the corresponding rows with the same values in the fullname column of the employees table
SELECT 
	c.id candidate_id,
	c.fullname candidate_name,
	e.id employee_id,
	e.fullname employee_name
FROM 
	hr.candidates c
INNER JOIN 
	hr.employees e 
ON 
	e.fullname = c.fullname;

--LEFT JOIN 
--statement joins the candidates table with the employees table using left join
SELECT 
	c.id candidate_id,
	c.fullname candidate_name,
	e.id employee_id,
	e.fullname employee_name
FROM 
	hr.candidates c
LEFT JOIN 
	hr.employees e 
ON 
	e.fullname = c.fullname;

--get the rows that are available only in the left table but not in the right table,add a WHERE clause to the above query
SELECT 
	c.id candidate_id,
	c.fullname candidate_name,
	e.id employee_id,
	e.fullname employee_name
FROM 
	hr.candidates c
LEFT JOIN 
	hr.employees e 
ON 
	e.fullname = c.fullname
WHERE e.id IS NULL;

--RIGHT JOIN 
SELECT 
	c.id candidate_id,
	c.fullname candidate_name,
	e.id employee_id,
	e.fullname employee_name
FROM 
	hr.candidates c
 RIGHT JOIN 
	hr.employees e 
ON 
	e.fullname = c.fullname;

-- get rows that are available only in the right table by adding a WHERE clause to the above query
SELECT 
	c.id candidate_id,
	c.fullname candidate_name,
	e.id employee_id,
	e.fullname employee_name
FROM 
	hr.candidates c
RIGHT JOIN 
	hr.employees e 
ON 
	e.fullname = c.fullname
WHERE c.id IS NULL;

--FULL JOIN 
--full join between the candidates and employees tables
SELECT 
	c.id candidate_id,
	c.fullname candidate_name,
	e.id employee_id,
	e.fullname employee_name
FROM 
	hr.candidates c
FULL JOIN 
	hr.employees e 
ON 
	e.fullname = c.fullname;

--To select rows that exist either left or right table,exclude rows that are common to both tables by adding a WHERE clause 
SELECT 
	c.id candidate_id,
	c.fullname candidate_name,
	e.id employee_id,
	e.fullname employee_name
FROM 
	hr.candidates c
FULL JOIN 
	hr.employees e 
ON 
	e.fullname = c.fullname
WHERE c.id IS NULL OR e.id IS NULL;