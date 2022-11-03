USE rating;

-- create table
CREATE TABLE table_employee (
    Employee_ID VARCHAR(100) NOT NULL,
    Role VARCHAR(100),
    PhoneNumber VARCHAR(20)
  );

-- insert info
INSERT INTO table_employee
VALUES 
('1', 'Teacher, Administrator', '555-455-7824'),
('2', 'Accounting, Administrator', '875-288-4637'),
('3', 'Principal', '756-234-2375'),
('4', 'Teacher', '922-465-2364'),
('5', 'Administrator, Teacher', '233-453-8694');

-- split the original tables into two to create 1st normal form
-- first table contains Employee_ID and phone number
CREATE TABLE table_phone_numbers
  AS (SELECT Employee_ID, PhoneNumber
      FROM table_employee);

-- create temp table
CREATE TABLE table_temp (
    Employee_ID VARCHAR(100)  NOT NULL,
    PhoneNumber VARCHAR(20),
    Role VARCHAR(100));


insert into table_temp
select * from 
( SELECT Employee_ID, PhoneNumber,
-- The CASE Statement here checks the first entry in the column Using (SUBSTR AND INSTR)
    CASE WHEN
        SUBSTR(Role, 1, INSTR(Role, ',')-1)='' THEN Role
        ELSE SUBSTR(Role,1,INSTR(Role, ',')-1)
    END AS Role
FROM table_employee

-- Using the union operator to join the first and the second entry of the table
UNION

SELECT Employee_ID, PhoneNumber, 
-- Using SUBSTR and INSTR to access the second entry inside the columns
    SUBSTR(Role,INSTR(Role,',')+1) As Role
FROM table_employee
-- Checking the columns with multiple entries
WHERE Role LIKE "%,%" ) as a;

-- second table contains Employee_ID and Role
CREATE TABLE table_role
  AS (SELECT Employee_ID, Role
      FROM table_temp);
      

SELECT *
FROM table_role
ORDER BY Employee_ID ASC; 
