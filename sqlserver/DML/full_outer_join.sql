use BikeStores;

--create schema named pm 
CREATE SCHEMA pm;
GO

-- create new tables named projects and members in the pm schema
CREATE TABLE pm.projects(
    id INT PRIMARY KEY IDENTITY,
    title VARCHAR(255) NOT NULL
);

CREATE TABLE pm.members(
    id INT PRIMARY KEY IDENTITY,
    name VARCHAR(120) NOT NULL,
    project_id INT,
    FOREIGN KEY (project_id) 
        REFERENCES pm.projects(id)
);

--insert some rows into the projects and members tables
INSERT INTO 
    pm.projects(title)
VALUES
    ('New CRM for Project Sales'),
    ('ERP Implementation'),
    ('Develop Mobile Sales Platform');


INSERT INTO
    pm.members(name, project_id)
VALUES
    ('John Doe', 1),
    ('Lily Bush', 1),
    ('Jane Doe', 2),
    ('Jack Daniel', null);

--query data from the projects and members tables
SELECT * FROM pm.projects;
SELECT * FROM pm.members;

--use the FULL OUTER JOIN to query data from projects and members tables
SELECT 
	m.name member,
	p.title project
FROM 
	pm.members m 
	FULL OUTER JOIN pm.projects p
	ON m.project_id = p.id;

--find the members who do not participate in any project and projects which do not have any members, you add a WHERE clause 
SELECT 
	m.name member,
	p.title project
FROM 
	pm.members m 
	FULL OUTER JOIN pm.projects p
	ON m.project_id = p.id
WHERE m.id IS NULL OR
	p.id IS NULL;