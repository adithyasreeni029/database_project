--A small company maintains two tables:
--employees – which contains employee details like id and name,departments – which contains emp_id and the department_name the employee works in.
--Creating the table of employees
CREATE TABLE employees (
    id INT(11) PRIMARY KEY ,
    emp_name VARCHAR(255)
);

--Creating the table of departments
CREATE TABLE departments (
    emp_id INT(11) PRIMARY key,
    dep_name VARCHAR(255)
);

--Insering data into employee table
INSERT INTO employees (id,emp_name)
VALUES (1,'Anjali'),
(2,'Rohan'),
(3,'meena');

--Inserting data into departments table
INSERT INTO departments (emp_id,dep_name)
VALUES (1,'HR'),
(2,'IT'),
(4,'FINANCE');

--Show a list of all employees along with their department name. If an employee doesn’t belong to any department.
SELECT employees.emp_name,departments.dep_name
FROM employees
LEFT JOIN departments ON employees.id = departments.emp_id;

--Show only those employees who have a department assigned
SELECT employees.emp_name,departments.dep_name
FROM employees
JOIN departments ON employees.id = departments.emp_id;

--Show all department assignments, even if the employee doesn’t exist in the employee table
SELECT employees.emp_name,departments.dep_name
FROM employees
RIGHT JOIN departments ON employees.id = departments.emp_id;
