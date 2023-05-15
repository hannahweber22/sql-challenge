--DEPARTMENTS
CREATE TABLE departments (
	dept_no VARCHAR(30) NOT NULL,
	dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY (dept_no)
);

--EMPLOYEES
CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title VARCHAR(30) NOT NULL,
	birth_date VARCHAR(30) NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(10) NOT NULL,
	hire_date VARCHAR(30) NOT NULL,
	PRIMARY KEY (emp_no)
);
--DEPT_EMP
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(30) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

--DEPT_MANAGER
CREATE TABLE dept_manager (
	dept_no VARCHAR(30) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no) 
);



--SALARIES
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

--TITLES
CREATE TABLE titles (
	title_id VARCHAR(30) NOT NULL,
	title VARCHAR (30) NOT NULL,
	PRIMARY KEY (title_id)
);


