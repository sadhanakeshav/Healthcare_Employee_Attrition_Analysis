# Healthcare Employee Attrition Analysis


## Problem Statement

Employee attrition is a critical issue in the healthcare industry, leading to increased costs, loss of expertise, and disruption of patient care. This project aims to analyze the factors contributing to employee attrition within a healthcare organization using a comprehensive dataset. The analysis focuses on understanding the impact of various demographic, job-related, and satisfaction-related factors on attrition rates. By identifying the key drivers of attrition, the organization can develop targeted strategies to improve employee retention, enhance job satisfaction, and ultimately reduce turnover.


### Steps followed 

- Step 1 : Established a connection to the MySQL database and imported the healthcare employee attrition dataset from a CSV file.
- Step 2 : Used the DESCRIBE statement to review the dataset structure and ensure that all columns were correctly imported with appropriate data types.
- Step 3 : Executed basic SELECT queries to check column distributions and validate data integrity.

- Step 4 : Ran a query to identify and count null values across all columns to ensure data completeness before proceeding with analysis.
- Step 5 : Performed a series of SQL queries to derive insights about employee attrition by examining relationships between different columns, such as the impact of salary hikes and years since the last promotion, and how gender and marital status affect attrition rates.


# Insights


Following inferences were drawn from the table;

### [1] Job Roles and Commute:

  

   


   Employees in "Other" job roles have higher attrition, while "Admin" roles have lower attrition. Longer commutes (>20 km) increase attrition, while shorter commutes (0-5 km) reduce it.
           
### [2] Gender and Overtime:

   Female employees have higher attrition rates. Frequent overtime is associated with increased attrition.
  
  
  
  ### [3]Environment and Tenure:
  
   Poor environment satisfaction, especially among long-tenured employees (19 years), leads to higher attrition.

 ### [4] Compensation and Department:
 
 
 
   The Neurology department offers the highest average monthly income and has the lowest attrition rate, indicating that competitive salaries help retain employees.
 
 ### [5] Education and Career Progression:
 

 
   Employees with lower education levels and those with large salary hikes but no recent promotions have higher attrition. Enhancing educational opportunities and career progression could improve retention.
         
