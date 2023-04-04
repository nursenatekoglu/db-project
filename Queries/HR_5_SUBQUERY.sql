--how to find employees information of who is making highest salary in the company

--get me highest salary
SELECT MAX(SALARY) FROM EMPLOYEES;

--highest salary employee information
SELECT *
FROM EMPLOYEES
WHERE SALARY =24000;

--SUBQUERY SOLUTION IN ONE SHOT
SELECT *
FROM EMPLOYEES
WHERE SALARY = (SELECT MAX(SALARY) FROM EMPLOYEES);


--finding second highest salary
--get highest salary first
SELECT MAX(SALARY) FROM EMPLOYEES;
--24000

SELECT MAX(SALARY)
FROM EMPLOYEES
WHERE SALARY<240000;

--ONE SHOT COMBINING TWO QUERIES
SELECT MAX(SALARY)
FROM EMPLOYEES
WHERE SALARY<(SELECT MAX(SALARY) FROM EMPLOYEES);
--17000


--employee information of who is making second highest salary?
SELECT *
FROM EMPLOYEES
WHERE SALARY=(SELECT MAX(SALARY)
              FROM EMPLOYEES
              WHERE SALARY<(SELECT MAX(SALARY) FROM EMPLOYEES));

-------------

SELECT * FROM EMPLOYEES
ORDER BY SALARY DESC;

SELECT *
FROM EMPLOYEES
WHERE ROWNUM <11;

--list the employees who is making top 10 salary

--get the first 10 people then order them hig to low based on salary
SELECT *
FROM EMPLOYEES
WHERE ROWNUM <11
ORDER BY SALARY DESC;

--order all employees based on salary high to low then display only first 10 result
SELECT *
FROM (SELECT * FROM EMPLOYEES ORDER BY SALARY DESC)
WHERE ROWNUM <11;





