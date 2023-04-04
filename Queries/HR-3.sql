--get me info who is working as IT_PROG or SA_REP
SELECT * FROM EMPLOYEES
WHERE JOB_ID IN ('IT_PROG', 'SA_REP');

--how many employee working as IT_PROG or SA_REP
SELECT COUNT(*) FROM EMPLOYEES
WHERE JOB_ID IN ('IT_PROG', 'SA_REP');

--how many employees making more than 8000
SELECT COUNT(*) FROM EMPLOYEES
WHERE SALARY>8000;

--how many unique first names we have?
SELECT COUNT(DISTINCT FIRST_NAME) FROM EMPLOYEES;


--get me all employees information based on who is making more salary to low salary
SELECT * FROM EMPLOYEES
ORDER BY SALARY DESC;

--desc: z~a, 9~0
--asc: a~z, 0~9

--get me all employee info order by alphabetical based on firstname
SELECT * FROM EMPLOYEES
ORDER BY FIRST_NAME;

--NOTE: by default order type is asc if you do not specify after column name


--get me all employees whose first name starts with C
SELECT *
FROM EMPLOYEES
WHERE FIRST_NAME LIKE 'C%';

--get me 5 letter first names where the middle char is z
SELECT *
FROM EMPLOYEES
WHERE FIRST_NAME LIKE '__z__';

--get me first name where second char is u
SELECT *
FROM EMPLOYEES
WHERE FIRST_NAME LIKE '_u%';

--find me minimum salary
SELECT MIN(SALARY) FROM EMPLOYEES;

--find me max salary
SELECT MAX(SALARY) FROM EMPLOYEES;

--find me avarage salary
SELECT AVG(SALARY) FROM EMPLOYEES;

--round the number
SELECT ROUND (AVG(SALARY),2) FROM EMPLOYEES;

SELECT ROUND (AVG(SALARY)) FROM EMPLOYEES;

--find me sum salary
SELECT SUM(SALARY) FROM EMPLOYEES;










