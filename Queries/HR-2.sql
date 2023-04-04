--I want to see firstname lastname phone number of david(s)

SELECT FIRST_NAME, LAST_NAME, PHONE_NUMBER
FROM EMPLOYEES
WHERE FIRST_NAME= 'David' AND LAST_NAME='Lee';

--get me all information who is making more than 7000 salary
SELECT * FROM EMPLOYEES
WHERE SALARY>7000 ;

--get me email and salary of who is making less than 4000
SELECT EMAIL, SALARY FROM EMPLOYEES
WHERE SALARY<4000;

--get me all info of who is working as IT_PROG or SA_REP
SELECT * FROM EMPLOYEES
WHERE JOB_ID= 'IT_PROG' OR JOB_ID='SA_REP';

--get me firstname, lastname, salary who is working more than 5000 and less than 10000
SELECT FIRST_NAME, LAST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY>=5000 AND SALARY<=10000;

SELECT FIRST_NAME, LAST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY BETWEEN 5000 AND 10000;

--get me all info where employee id 135, 176, 154, 129
SELECT *
FROM EMPLOYEES
WHERE EMPLOYEE_ID IN (135,176,154,129);

--get me city of where country id IT, US, UK
SELECT CITY
FROM LOCATIONS
WHERE COUNTRY_ID IN ('IT', 'US', 'UK');




--
