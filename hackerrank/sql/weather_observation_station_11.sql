-- Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT CITY
FROM STATION
WHERE SUBSTRING(CITY,1,1) NOT IN ('A','I','U','E','O') OR SUBSTRING(REVERSE(CITY),1,1) NOT IN ('A','I','U','E','O');