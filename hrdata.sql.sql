CREATE DATABASE hrdata;
USE hrdata;

-- upload csv file as table employees
SELECT * FROM employees;

-- Total Employees
SELECT COUNT(*) AS Total_employees
FROM employees;

-- Total Old Employees
SELECT COUNT(*) AS Total_OLD_employees
FROM employees
WHERE Dateoftermination != '';


-- Total Current Employees
SELECT COUNT(*) AS Total_current_employees
FROM employees
WHERE Dateoftermination = '';

-- Average Salary
SELECT AVG(Salary) AS Avg_salary
FROM employees;

-- Average Age
SELECT AVG(TIMESTAMPDIFF(YEAR,STR_TO_DATE(DOB, '%d-%m-%Y'),CURDATE())) AS Avg_Age
FROM employees;

-- Average Years in Company
SELECT AVG(TIMESTAMPDIFF(YEAR,STR_TO_DATE(DATEOFhire,'%d-%m-%Y'), curdate())) aS AVG_years_in_company
FROM employees;

-- Adding New Column for Employee Current Status
ALTER TABLE employees
ADD employeesCURRENTSTATUS INT;

-- Updating values for New Column
SET SQL_SAFE_UPDATES =0;
UPDATE employees
SET employeesCURRENTSTATUS = CASE
  WHEN DATEOFTERMINATION =''THEN 1
  ELSE 0
END;


-- Calculate Attrition Rate based on custom EmpStatusID values
SELECT
      (CAST(COUNT(CASE WHEN employeesCURRENTSTATUS =0 THEN 1 END) AS
      FLOAT)/COUNT(*))*100 AS ATTRITION_RATE
FROM employees;
 
 
 -- Print 1st 5 Rows
SELECT *
FROM employees
LIMIT 5;


-- Print last 5 Rows
SELECT *
FROM  employees
LIMIT 5;

SELECT *
FROM  employees
ORDER BY EmpID DESC
LIMIT 5;

-- Changing Data Type of Salary
ALTER TABLE employees
MODIFY COLUMN SALARY DECIMAL(10,2);


-- Convert all date columns in proper dates
UPDATE employees
SET DOB = STR_TO_DATE(DOB,'%d-%m-%Y');
UPDATE employees
SET DATEOFHIRE = STR_TO_DATE(DATEOFHIRE,'%d-%m-%Y');
UPDATE employees
SET LASTPERFORMANCEREVIEW_DATE = STR_TO_DATE( LASTPERFORMANCEREVIEW_DATE ,'%d-%m-%Y');

ALTER TABLE employees
MODIFY COLUMN DOB date,
MODIFY COLUMN DATEOFHIRE date,
MODIFY COLUMN  LASTPERFORMANCEREVIEW_DATE DATE;
UPDATE employees
SET Dateoftermination ='CurrentLYWorking'
WHERE Dateoftermination Is NULL OR Dateoftermination ='';



-- count of each unique value in the MaritalDesc
SELECT MaritalDesc,COUNT(*) AS Count
FROM employees
GROUP BY MaritalDesc
ORDER BY COUNT DESC;


-- count of each unique value in the Department
SELECT Department,COUNT(*) AS Count
FROM employees
GROUP BY Department
ORDER BY COUNT DESC;


-- count of each unique value in the Positions
SELECT position,COUNT(*) AS Count
FROM employees
GROUP BY position
ORDER BY COUNT DESC;


-- count of each unique value in the Manager
SELECT managername,COUNT(*) AS Count
FROM employees
GROUP BY managername
ORDER BY COUNT DESC;



select CASE
WHEN Salary <30000 then'<30k'
WHEN Salary BETWEEN 30000 AND 49999 then'30k-49K'
WHEN Salary BETWEEN 50000 AND 69999 then'50k-69K'
WHEN Salary BETWEEN 70000 AND 89999 then'70k-89K'
WHEN Salary >=90000 THEN '90K AND ABOVE'
END AS SALARY_RANGE,
COUNT(*) AS FREQUENCY
FROM employees GROUP BY SALARY_RANGE ORDER BY SALARY_RANGE;


SELECT 
 PERFORMANCESCORE,
 COUNT(*) AS COUNT
 FROM employees
 GROUP BY  PERFORMANCESCORE
ORDER BY  PERFORMANCESCORE;


SELECT 
 Department,
 AVG(SALARY) AS AVERAGESALARY
 FROM employees
 GROUP BY   DepartmenT
ORDER BY  DepartmenT;


SELECT 
 TermReason,
 COUNT(*) AS COUNT
 FROM employees
 WHERE  TermReason IS NOT NULL
 GROUP BY TermReason
ORDER BY TermReason;


SELECT
 STATE,
 COUNT(*) AS COUNT
 FROM employees
  GROUP BY STATE
ORDER BY COUNT DESC;


SELECT
 GENDER,
 COUNT(*) AS COUNT
 FROM employees
  GROUP BY GENDER
ORDER BY COUNT DESC;

-- Add a new column AGE
ALTER TABLE employees
ADD COLUMN Age INT;

-- Update the Age column with calculated age
UPDATE employees
SET AGE = TIMESTAMPDIFF(YEAR,DOB,CURDATE());


select CASE
WHEN Age <20 then'<20k'
WHEN Age BETWEEN 20 AND 29 then'20_29'
WHEN Age BETWEEN 30 AND 39 then'30k-40K'
WHEN Age BETWEEN 40 AND 49 then'40k-50K'
WHEN Age BETWEEN 50 AND 59 then'50k-60K'
WHEN Age >=60 THEN '60 AND ABOVE'
END AS Age_GROUP,
COUNT(*) AS count
FROM employees GROUP BY Age_GROUP;


