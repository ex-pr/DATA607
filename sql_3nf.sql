USE rating;

-- create table
CREATE TABLE table_books (
    Book_ID TINYINT(5) AUTO_INCREMENT,
    Genre_ID TINYINT(5),
    Genre_type VARCHAR(100),
    Price VARCHAR(20),
    PRIMARY KEY (Book_ID)
  );
-- insert info
INSERT INTO table_books
VALUES 
('1', '1', 'Gardening', '25.99'),
('2', '2','Sports', '14.99'),
('3', '1', 'Gardening', '10.00'),
('4', '3', 'Travel', '12.99'),
('5', '2', 'Sports', '17.99');

CREATE TABLE table_book_info (
    Book_ID TINYINT(5) NOT NULL AUTO_INCREMENT,
    Genre_ID TINYINT(5),
    Price VARCHAR(20),
	PRIMARY KEY (Book_ID));

CREATE TABLE table_genre(
    Genre_ID TINYINT(5) NOT NULL AUTO_INCREMENT,
    Genre_type VARCHAR(100),
    PRIMARY KEY(Genre_ID),
    FOREIGN KEY(Genre_ID) REFERENCES table_book_info (Book_ID));

-- Inserting into the table_book_info
INSERT INTO table_book_info (Book_ID, Genre_ID, Price)
SELECT Book_ID, Genre_ID, Price
FROM table_books;

-- Inserting into the table_genre
INSERT IGNORE INTO table_genre(Genre_ID, Genre_type)
SELECT Genre_ID, Genre_type
FROM table_books;
