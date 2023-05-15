# sql-challenge

# As a new data engineer at Pewlett Hackard, I completed a research project about the people the company employeed from the 1980s to the 1990s using the 6 CSV files that remain from that time period. The 6 CSV files are departments, dept_emp, dept_manager, employees, salaries, and titles. For this project, I created an Entity Relationships Diagram (ERD) saved as an image file called data_model to show the relationships of the files. See below data modeling description of the relationships between the files. I created a data_engineering sql file that creates a table for each CSV file. The user is able to run this sql file to have tables created for each CSV, then the user is able to import the CSVs into each table. Note: The user must import departments and employees prior to the other files, as the other files depend on departments and employees. Finally, I created a data_analysis sql file that is able to be used to find information in regards to the companys employees. The user is able to run the code for each of the questions to output the answer to the question. 

# DATA MODELING DESCRIPTION: 
 - departments many to one dept_manager = departments can have many dept_managers but a dept_manager can only have one department
 - dept_manager many to one dept_emp = dept_managers can have many dept_emps but a dept_emp can only have one dept_manager
 - dept_emp one to one employees = dept_employee can only have one employees information and empoloyees can only have one department
 - employees one to many salaries = employees can only have one salary but a salary can have many employees
 - employees one to many titles = employees can only have one titles but titles can have many employees