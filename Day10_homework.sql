/*
You are designing a simple database for an online book store. 
The store keeps track of authors and the books they write.
Create a table for authors (author_id and email must be unique)
*/
CREATE TABLE authors (
   author_id INT PRIMARY KEY,
   author_name VARCHAR(255),
   email VARCHAR(255) UNIQUE 
);
/*
 Create a table for books (book_id must be unique)
 Apply appropriate rules so that:No two authors can have the same email address.
 Each author and book must have a unique ID and Each book must be linked to an existing author.
 */
CREATE TABLE  books (
    book_id INT PRIMARY KEY,
    book_title VARCHAR(255),
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id),
);