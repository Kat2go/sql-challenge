-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/Thh7HV
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

CREATE TABLE [Titles] (
    [Title_ID] varchar  NOT NULL ,
    [Title] varchar  NOT NULL 
)

CREATE TABLE [Salaries] (
    [Emp_No] integer  NOT NULL ,
    [Salary] integer  NOT NULL 
)

CREATE TABLE [Employees] (
    [Emp_No] integer  NOT NULL ,
    [Emp_title] varchar  NOT NULL ,
    [Birth_date] date  NOT NULL ,
    [First_name] varchar  NOT NULL ,
    [Last_name] varchar  NOT NULL ,
    [sex] varchar  NOT NULL ,
    [hire_date] date  NOT NULL 
)

CREATE TABLE [Dept_Manager] (
    [Dept_No] varchar  NOT NULL ,
    [Emp_No] integer  NOT NULL 
)

CREATE TABLE [Dept_Emp] (
    [Emp_No] integer  NOT NULL ,
    [Dept_No] varchar  NOT NULL 
)

CREATE TABLE [Departments] (
    [Dept_No] varchar  NOT NULL ,
    [Dept_Name] varchar  NOT NULL 
)

ALTER TABLE [Titles] WITH CHECK ADD CONSTRAINT [FK_Titles_Title_ID] FOREIGN KEY([Title_ID])
REFERENCES [Employees] ([Emp_title])

ALTER TABLE [Titles] CHECK CONSTRAINT [FK_Titles_Title_ID]

ALTER TABLE [Salaries] WITH CHECK ADD CONSTRAINT [FK_Salaries_Emp_No] FOREIGN KEY([Emp_No])
REFERENCES [Employees] ([Emp_No])

ALTER TABLE [Salaries] CHECK CONSTRAINT [FK_Salaries_Emp_No]

ALTER TABLE [Employees] WITH CHECK ADD CONSTRAINT [FK_Employees_Emp_No] FOREIGN KEY([Emp_No])
REFERENCES [Dept_Emp] ([Emp_No])

ALTER TABLE [Employees] CHECK CONSTRAINT [FK_Employees_Emp_No]

ALTER TABLE [Dept_Manager] WITH CHECK ADD CONSTRAINT [FK_Dept_Manager_Dept_No] FOREIGN KEY([Dept_No])
REFERENCES [Departments] ([Dept_No])

ALTER TABLE [Dept_Manager] CHECK CONSTRAINT [FK_Dept_Manager_Dept_No]

ALTER TABLE [Dept_Manager] WITH CHECK ADD CONSTRAINT [FK_Dept_Manager_Emp_No] FOREIGN KEY([Emp_No])
REFERENCES [Employees] ([Emp_No])

ALTER TABLE [Dept_Manager] CHECK CONSTRAINT [FK_Dept_Manager_Emp_No]

ALTER TABLE [Departments] WITH CHECK ADD CONSTRAINT [FK_Departments_Dept_No] FOREIGN KEY([Dept_No])
REFERENCES [Dept_Emp] ([Dept_No])

ALTER TABLE [Departments] CHECK CONSTRAINT [FK_Departments_Dept_No]

COMMIT TRANSACTION QUICKDBD