
--create a table for each file and view table
create table Department(
	dept_no varchar(30),
	dept_name varchar(30)
);	

select *
from department;


create table Dept_Emp(
	emp_no INT,
	dept_no varchar(30)
);	

select *
from Dept_Emp;


create table Employees(
	emp_no INT,
	emp_title varchar(30),
	birth_date date,
	first_name varchar(30),
	last_name varchar(30),
	sex varchar(30),
	hire_date date 
);	

select *
from Employees;


create table Salaries(
	emp_no INT,
	salary INT
);	

select *
from Salaries;


create table Titles(
	title_id varchar(30),
	title varchar(30)
);	

select *
from Titles;
