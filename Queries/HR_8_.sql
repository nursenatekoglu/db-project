/*

 create table syntax:
     create table TableName(
        colName1 DataType Constraints,
        colName2 DataType Constraints(optional),
        colName3 DataType Constraints,
        ...
    );

 */

 CREATE TABLE ScrumTeam(
     Emp_ID Integer Primary Key,
     FirstName varchar(30) not null,
     LastName varchar(30),
     JobTitle varchar(20)

 );

SELECT * FROM ScrumTeam;

/*

 INSERT INTO tableName (column1, column2,...)
 VALUES (value1, value2, ...)

 */

INSERT INTO ScrumTeam (Emp_ID, FirstName, LastName, JobTitle)
VALUES (1, 'Seeverus', 'Snape', 'Tester');

INSERT INTO ScrumTeam VALUES (2, 'Joey', 'Tirribiani', 'Developer');

INSERT INTO ScrumTeam VALUES (3, 'Phoebe', 'Buffay', 'ScrumMaster');

INSERT INTO ScrumTeam VALUES (4, 'Monica', 'Geller', 'PO');