--Imagine you are helping a small bookstore manage their online inventory system.

--Create a new database called BookStoreDB.
CREATE DATABASE BookStoreDB;

--Select this database to work on.
USE BookStoreDB;

--Create a table named authors
CREATE TABLE authors (
    author_id INT(11) PRIMARY key ,
    author_name VARCHAR(255),
    country VARCHAR(255)
);

--Create another table named books
CREATE TABLE books (
    book_id INT(11) PRIMARY KEY,
    title VARCHAR(255),
    price INT(11),
    author_id INT(11),
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

-- Add a new column called published_year (number) to the books table.
ALTER TABLE books
ADD published_year INT(11);

-- Delete all rows from the books table without removing the table itself.
TRUNCATE TABLE books;

-- Remove the BookStoreDB completely from the system.
DROP DATABASE BookStoreDB;