/*
You are helping design a student registration system for a training institute.
Create a table called students.
*/
CREATE TABLE students (
    Student_id INT(11) PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    email VARCHAR(255) UNIQUE
);

-- Create another table called courses.
CREATE TABLE courses (
    course_id INT(11) PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(255)  
);

/*
Create a table called enrollments to store which student has enrolled in which course
This table should:Include student_id and course_id and 
Make sure both values must match existing records in the other two tables
*/
CREATE TABLE enrollments ( 
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id),
);