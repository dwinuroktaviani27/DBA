--Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
SELECT 
    DISTINCT(CITY),
    MIN(LENGTH(CITY))
FROM STATION 
GROUP BY CITY 
ORDER BY (LENGTH(CITY)) ASC ,CITY ASC LIMIT 1; 

SELECT 
    DISTINCT(CITY),
    MAX(LENGTH(CITY)) 
FROM STATION 
GROUP BY CITY 
ORDER BY (LENGTH(CITY)) DESC ,CITY DESC LIMIT 1;