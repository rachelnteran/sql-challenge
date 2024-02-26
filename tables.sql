CREATE TABLE title(
	title_id INTEGER PRIMARY KEY, 
	title VARCHAR(255)
);

CREATE TABLE employees(
emp_no INT PRIMARY KEY, 
emp_title_id INT,
birth_date INT,
first_name VARCHAR(255),
last_name VARCHAR(255),
sex VARCHAR(255),
hire_date INT,
FOREIGN KEY(emp_title_id) REFERENCES title(title_id)
);

CREATE TABLE departments(
	dept_no VARCHAR PRIMARY KEY NOT NULL,
	dept_name VARCHAR NOT NULL
);

CREATE TABLE salaries(
	emp_no INT,
	salary INT NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(255),
	emp_no INT NOT NULL,
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(255),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
);

