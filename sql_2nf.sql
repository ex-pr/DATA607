USE rating;

-- create table
CREATE TABLE table_purchase (
    Customer_ID TINYINT(5) NOT NULL,
    Store_ID TINYINT(5) NOT NULL  AUTO_INCREMENT,
    Purchase_location VARCHAR(100),
	CONSTRAINT PK_table_purchase Primary Key Clustered 
(Store_ID, Customer_ID));

-- insert info
INSERT INTO table_purchase
VALUES 
(1, 1, 'Los Angeles'),
(1, 3,'San Francisco'),
(2, 1,'Los Angeles'),
(3, 2,'New York'),
(4, 3,'San Francisco');

-- Creating the Tables for the Second Normal Form 2NF
CREATE TABLE table_customer (
    Customer_ID TINYINT(5) NOT NULL,
    Store_ID TINYINT(5) NOT NULL);

CREATE TABLE table_store(
    Store_ID TINYINT(5) NOT NULL,
    Purchase_location VARCHAR(100), 
    PRIMARY KEY(Store_ID),
	FOREIGN KEY(Store_ID) REFERENCES table_purchase (Store_ID));
    
-- insert info from origonal table    

INSERT INTO table_customer 
SELECT * FROM
( SELECT Customer_ID, Store_ID
FROM table_purchase) as a;

INSERT IGNORE INTO table_store
SELECT * FROM
( SELECT  Store_ID, Purchase_location
FROM table_purchase) as a;


    
    

