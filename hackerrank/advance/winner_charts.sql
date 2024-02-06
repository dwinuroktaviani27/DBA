WITH t1 AS
(SELECT *,DENSE_RANK() OVER(PARTITION BY event_id ORDER BY score DESC) AS 'rk' FROM Scoretable),

t2 AS
(SELECT * FROM t1 WHERE rk<=3),

t3 AS 
(SELECT event_id , CASE WHEN rk=1 THEN p_Name ELSE NULL END AS 'first' FROM t2 WHERE rk=1 ),

t4 AS 
(SELECT event_id , CASE WHEN rk=2 THEN p_Name ELSE NULL END AS 'second' FROM t2 WHERE rk=2 ),

t5 AS 
(SELECT event_id , CASE WHEN rk=3 THEN p_Name ELSE NULL END AS 'third' FROM t2 WHERE rk=3 ),

t6 AS 
(SELECT t3.event_id , t3.first , t4.second , t5.third FROM t3 JOIN t4 ON t3.event_id = t4.event_id JOIN t5 ON t4.event_id=t5.event_id ORDER BY 1,2,3,4)

SELECT event_id , GROUP_CONCAT(DISTINCT first) AS 'rank 1' , GROUP_CONCAT(DISTINCT second) AS 'rank 2' , GROUP_CONCAT(DISTINCT third) AS 'rank 3'
FROM t6 GROUP BY 1 ORDER BY 1;