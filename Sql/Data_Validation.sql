CREATE DATABASE HR_Analytics_DB
GO
USE HR_Analytics_DB;

--View All records
SELECT *
FROM HR_Analytics;

--Check Total records
SELECT COUNT(*) AS Total_Employees
FROM HR_Analytics

--Total number of columns
SELECT COUNT(*) 
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME='HR_Analytics'

--Check duplicate Employee IDs
SELECT EmpID,
COUNT(*) AS Duplicate_Count
FROM HR_Analytics
GROUP BY EmpID
HAVING COUNT(*) >1;

--Check Null Values
SELECT *
FROM HR_Analytics
WHERE Age IS NULL;

SELECT * 
FROM HR_Analytics
WHERE YearsWithCurrManager IS NULL;

--Check Distinct Deartment
SELECT DISTINCT Department
FROM HR_Analytics

--Check Distinct Job roles
SELECT DISTINCT JobRole
FROM HR_Analytics

--Check attrition values
SELECT DISTINCT Attrition
FROM HR_Analytics;

