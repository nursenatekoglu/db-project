--how can we rename the column that we displayed
SELECT FIRST_NAME AS "GIVEN_NAME", LAST_NAME AS "SURNAME"
FROM EMPLOYEES;

--text functions, string manipulations
--java first_name+" "+last_name
--in sql concat is ||
--(|| = +)

SELECT FIRST_NAME||' '||EMPLOYEES.LAST_NAME AS "FULL_NAME"
FROM EMPLOYEES;

--task:
--add @gmail.com and name new column to full_email
SELECT EMAIL|| 'gmail.com' AS "FULL_EMAIL"
FROM EMPLOYEES;

--making all lower case
SELECT LOWER ( EMAIL|| 'gmail.com') AS "FULL_EMAIL"
FROM EMPLOYEES;

--upper case
SELECT UPPER ( EMAIL|| 'gmail.com') AS "FULL_EMAIL"
FROM EMPLOYEES;

--length (value)
SELECT FIRST_NAME, LENGTH(FIRST_NAME) AS "LENGTH_NAME"
FROM EMPLOYEES
ORDER BY "LENGTH_NAME" DESC;

--substr (colName, begIndex, NumberOfChar)
SELECT SUBSTR(FIRST_NAME,0,1) || '.' || SUBSTR(LAST_NAME,0,1) AS "INITIALS"
FROM EMPLOYEES;


--VIEW (not creating any table)
CREATE VIEW EMAILLIST_NURSENA AS SELECT SUBSTR(FIRST_NAME,0,1) || '.' || SUBSTR(LAST_NAME,0,1) AS "INITIALS",
FIRST_NAME||' '||EMPLOYEES.LAST_NAME AS "FULL_NAME",
LOWER ( EMAIL|| 'gmail.com') AS "FULL_EMAIL"
FROM EMPLOYEES;

SELECT "FULL_NAME"
FROM EMAILLIST_NURSENA;


--REMOVE VIEW (deletes the view)
DROP VIEW EMAILLIST_NURSENA;


