--Use the provided information to create a table schema for each of the six CSV files. Be sure to do the following:
--Remember to specify the data types, primary keys, foreign keys, and other constraints.
--For the primary keys, verify that the column is unique. Otherwise, create a composite keyLinks to an external site., which takes two primary keys to uniquely identify a row.
--Be sure to create the tables in the correct order to handle the foreign keys.
--Import each CSV file into its corresponding SQL table.

-- create titles table
Create table "titles" (
    "title_id" varchar(10) not null,
    "title" varchar(30) not null,
    constraint "pk_titles" 
	primary key ("title_id")
);

select *
from titles
-- import data
--rerun to confirm data uploaded
select *
from titles

 --create salaries table
Create table "salaries" (
    "emp_no" integer not null,
    "salary" integer not null
);

select *
from salaries

-- import data
--rerun to confirm data uploaded
select *
from salaries

--create employees table
create table "employees" (
    "emp_no" integer   not null,
    "emp_title_id" varchar(10)   not null,
    "birth_date" varchar(8)   not null,
    "first_name" varchar(20)   not null,
    "last_name" varchar(20)   not null,
    "sex" varchar(1)   not null,
    "hire_date" varchar(8)   not null,
    constraint"pk_employees" 
	primary key ("emp_no")
);

select *
from employees

-- import data
--rerun to confirm data uploaded
select *
from employees


 --create dept_emp table
CREATE TABLE "dept_emp" (
    "emp_no" integer not null,
    "dept_no" varchar(10) not null
);

select *
from dept_emp

-- import data
--rerun to confirm data uploaded
select *
from dept_emp


--creat departments table
create table "departments" (
    "dept_no" varchar(10) not null,
    "dept_name" varchar(30) not null,
    constraint "pk_departments" 
	primary key ("dept_no")
);
 
 select *
from departments

-- import data
--rerun to confirm data uploaded
select *
from dept_emp

--create dept_manager table
create table "dept_manager" (
    "dept_no" varchar(10) not null,
    "emp_no" integer not null
);

select *
from dept_manager

-- import data
--rerun to confirm data uploaded
select *
from dept_manager
