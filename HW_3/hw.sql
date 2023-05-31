1. 
SELECT city, sname, snum, comm 
FROM salespeople;
2.
SELECT rating, cname
FROM customer
WHERE city IN ('SanJose');
3.
SELECT DISTINCT sname 
FROM salespeople;
4.
SELECT cname
FROM customers
WHERE cname RLIKE ('^G%');
5.
SELECT * 
FROM orders
WHERE amt > 1000;
6.
SELECT *
FROM orders
WHERE MIN(amt);
7.
SELECT *
FROM customers
WHERE rating > 100
AND city NOT IN ('Rome');
8.
SELECT *
FROM workers
ORDER BY salary;

SELECT *
FROM workers
ORDER BY salary DESC;
9.
SELECT * 
FROM ( 
	SELECT sallary 
	FROM staff 
	ORDER BY sallary DESC LIMIT 5 
      ) t 
ORDER BY sallary;
10.
SELECT speciality, 
       SUM(salary) AS total_sum 
FROM staff 
GROUP BY speciality 
HAVING SUM(salary) > 100000;
