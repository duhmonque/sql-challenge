DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS salaries;

CREATE TABLE titles (
  title_id character(5) PRIMARY KEY NOT NULL,
  title character varying(30) NOT NULL
);
CREATE TABLE employees (
  emp_no integer PRIMARY KEY NOT NULL,
  emp_title_id character(5) REFERENCES titles NOT NULL,
  birth_date date NOT NULL,
  first_name character varying(30) NOT NULL,
  last_name character varying(30) NOT NULL,
  sex character(1) NOT NULL,
  hire_date date NOT NULL
);

CREATE TABLE departments (
  dept_no character(4) PRIMARY KEY NOT NULL,
  dept_name character varying(30) NOT NULL
);
Select * 
From departments;

CREATE TABLE dept_emp (
  emp_no integer REFERENCES employees NOT NULL,
  dept_no character(4) REFERENCES departments NOT NULL
);
CREATE TABLE dept_manager (
  dept_no character(4) REFERENCES departments NOT NULL,
  emp_no integer PRIMARY KEY NOT NULL
);
CREATE TABLE salaries (
  emp_no integer PRIMARY KEY NOT NULL,
  salary integer NOT NULL
);
