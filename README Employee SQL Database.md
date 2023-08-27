
# SQL Database Challenge Module 9

Design tables to hold provided data (CSV files).  Import files into a SQL database.  Then perform data modeling, data engineering and data analysis. 


## Background
It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.
## Data Modeling
-  Inspect the CSV files, and then sketch an Entity Relationship Diagram of the tables.

## Data Engineering
- Use provided information to create a table schema for each of the six CSV files. 
    - specify the data types, primary keys, foreign keys and other constraints
    - for primary keys verify that the column is unique.  If needed create a composite key.
    - Create the tables in correct order to handle the foreign keys.

- Import each CSV file into its corresponding SQL table
## Data Analysis
- List the employee number, last name, first name, sex, and salary of each employee.

- List the first name, last name, and hire date for the employees who were hired in 1986.

- List the manager of each department along with their department number, department name, employee number, last name, and first name.

- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

- List each employee in the Sales department, including their employee number, last name, and first name.

- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
## Acknowledgements

 - [Awesome Readme Templates](https://awesomeopensource.com/project/elangosundar/awesome-README-templates)
 - [Awesome README](https://github.com/matiassingers/awesome-readme)
 - [How to write a Good readme](https://bulldogjob.com/news/449-how-to-write-a-good-readme-for-your-github-project)
- TA Carlos Fernandez assisted with importing file issues
- Instructor Steven Green assisted with query information with using "date"
- Lesley Conn assisted with how to upload pgAdmin work
