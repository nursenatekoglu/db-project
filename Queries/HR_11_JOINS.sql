SELECT * FROM CUSTOMER;

SELECT * FROM ADDRESS;


SELECT FIRST_NAME, LAST_NAME, ADDRESS, PHONE
FROM CUSTOMER JOIN ADDRESS
ON CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;


--left join
SELECT FIRST_NAME, LAST_NAME, C.ADDRESS_ID, ADDRESS, PHONE
FROM CUSTOMER C LEFT JOIN ADDRESS A
ON C.ADDRESS_ID = A.ADDRESS_ID;

--right join
SELECT FIRST_NAME, LAST_NAME, C.ADDRESS_ID, ADDRESS, PHONE
FROM CUSTOMER C RIGHT JOIN ADDRESS A
ON C.ADDRESS_ID = A.ADDRESS_ID;

--full join
SELECT FIRST_NAME, LAST_NAME, C.ADDRESS_ID, ADDRESS, PHONE
FROM CUSTOMER C FULL JOIN ADDRESS A
ON C.ADDRESS_ID = A.ADDRESS_ID;





