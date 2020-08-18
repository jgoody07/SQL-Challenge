-- Creating table schema

-- Create table departments
DROP TABLE departments

CREATE TABLE departments (
	dept_no VARCHAR(10),
	dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY (dept_no)
);

SELECT * FROM departments

-- create table titles
DROP TABLE titles

CREATE TABLE titles (
	title_id VARCHAR (10) NOT NULL,
	title VARCHAR (20) NOT NULL,
	PRIMARY KEY (title_id)
);

SELECT * FROM titles

-- create table employees
DROP TABLE employees

CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR (10) NOT NULL,
	birth_data DATE NOT NULL,
	first_name VARCHAR (20) NOT NULL,
	last_name VARCHAR (20) NOT NULL,
	sex VARCHAR (2) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

SELECT * FROM employees

-- create table dept_emp
DROP TABLE dept_emp

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR (10) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp

-- create table dept_managers
DROP TABLE dept_managers

CREATE TABLE dept_managers (
	dept_no VARCHAR (10) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_managers

-- create table salaries
DROP TABLE salaries

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries




