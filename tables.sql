CREATE TABLE title(
	title_id CHAR(5) PRIMARY KEY, 
	title VARCHAR(18)
);

CREATE TABLE employees(
emp_no INT PRIMARY KEY, 
emp_title_id CHAR(5),
birth_date DATE,
first_name VARCHAR(30),
last_name VARCHAR(30),
sex CHAR(1),
hire_date DATE,
FOREIGN KEY(emp_title_id) REFERENCES title(title_id)
);

CREATE TABLE departments(
	dept_no CHAR(4) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(20) NOT NULL
);

CREATE TABLE salaries(
	emp_no INT PRIMARY KEY,
	salary INT NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES dept_manager(emp_no)
);

CREATE TABLE dept_manager(
	dept_no CHAR(4),
	emp_no INT NOT NULL PRIMARY KEY,
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(4),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
	PRIMARY KEY(emp_no, dept_no)
);

