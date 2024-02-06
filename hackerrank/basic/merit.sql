SELECT i.employee_ID, i.name
FROM employee_information i JOIN last_quarter_bonus b 
ON i.employee_ID = b.employee_ID
WHERE i.division = 'HR'
AND b.bonus >= 5000;