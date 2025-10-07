--You are setting up a simple online system for a small grocery shop.

--Creating a new database called Groceryshop
CREATE DATABASE Groceryshop;

--Using this databace creating a table named product
USE Groceryshop;
CREATE TABLE product (
    pro_id INT(11) PRIMARY key,
    pro_name VARCHAR(255),
    price INT(11)
);

--To add a new column called category (text) to the same table.
ALTER TABLE product
ADD category VARCHAR(255);

--The shop owner wants to remove all items from the products table without deleting the table itself.
TRUNCATE TABLE product ;

--delete the entire database as it’s no longer needed.
DROP DATABASE Groceryshop;