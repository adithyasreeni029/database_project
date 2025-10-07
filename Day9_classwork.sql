-- You are helping manage a simple system for a local library. The librarian has two tables:
-- Creating the table of books – which stores book details
 CREATE TABLE books (
    id INT(11) PRIMARY KEY,
    title VARCHAR(255)
);

-- inserting values in to books
INSERT INTO `books` (id,title)
VALUES (1,'The Alchemist'),
(2,'The Power of Now'),
(3,' Think and Grow Rich'),
(4,'Clean Code');

--Creating the table of borrowers – which stores information about who borrowed which book
CREATE TABLE borrowers (
    borrower_id INT(11) PRIMARY KEY,
    nam_e VARCHAR(255),
    book_id INT(11)
);

--inserting values in to borrowers
INSERT INTO `borrowers` (borrower_id,nam_e,book_id)
VALUES (101,' Alice ',1),
(102,'Bob',2),
(103,'Charlie',NULL);

--Showing the list of all books along with the name of the person who borrowed them (if borrowed).
SELECT books.title,borrowers.nam_e 
FROM books
LEFT JOIN borrowers ON books.id=borrowers.book_id;

-- Show the list of all borrowers along with the book details they borrowed (if any).
SELECT borrowers.nam_e,books.title
FROM borrowers
LEFT JOIN books ON borrowers.book_id = books.id;

--Show the list of all books that have not been borrowed by anyone.
SELECT books.title
FROM books
LEFT JOIN borrowers ON books.id = borrowers.book_id
WHERE borrowers.book_id IS NULL;

--Show the list of all borrowers even if they haven't borrowed any book.
SELECT borrowers.nam_e
FROM borrowers
LEFT JOIN books ON borrowers.book_id = books.id;
