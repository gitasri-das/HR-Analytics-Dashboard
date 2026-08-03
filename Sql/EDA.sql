USE HR_Analytics_DB;


--Rename Column name
EXEC sp_rename
'HR_Analytics.[TotalExperience(Years)]',
'TotalExperienceYears',
'COLUMN';

EXEC sp_rename
'HR_Analytics.[SalaryHike %]',
'SalaryHikePercent',
'COLUMN';

EXEC sp_rename
'HR_Analytics.[DistanceFromHome(KM)]',
'DistanceFromHomeKM',
'COLUMN';

--Employee Count
SELECT COUNT(*) AS TotalEmployees
FROM HR_Analytics

--Attrition Rate
SELECT
ROUND(
100.0*
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)
/COUNT(*),2) AS AttritionRate
FROM HR_Analytics

--Department-wise Employees
SELECT Department,
COUNT(*) AS EmployeeS
FROM HR_Analytics
GROUP BY Department
ORDER BY Employees DESC;

--Department-wise Attrition
SELECT Department,
COUNT(*) AS AttritionCount
FROM HR_Analytics
WHERE Attrition='Yes'
GROUP BY Department
ORDER BY AttritionCount DESC;

--Gender Distribution
SELECT Gender,
COUNT(*) AS Employees
FROM HR_Analytics
GROUP BY Gender;

--Average Salary by Department
SELECT Department,
AVG(MonthlyIncome) AS AvgSalary
FROM HR_Analytics
GROUP BY Department
ORDER BY AvgSalary DESC;

--Salary Slab Distribution
SELECT SalarySlab,
COUNT(*) AS Employees
FROM HR_Analytics
GROUP BY SalarySlab;

--Education Level
SELECT Education,
COUNT(*) AS Employees
FROM HR_Analytics
GROUP BY Education;

--Education Field
SELECT EducationField,
COUNT(*) AS Employees
FROM HR_Analytics
GROUP BY EducationField;

--Job Satisfaction
SELECT JobSatisfaction,
COUNT(*) AS Employees
FROM HR_Analytics
GROUP BY JobSatisfaction;

--Work-Life Balance
SELECT WorkLifeBalance,
COUNT(*) AS Employees
FROM HR_Analytics
GROUP BY WorkLifeBalance;

--Overtime vs Attrition
SELECT OverTime,
Attrition,
COUNT(*) AS Employees
FROM HR_Analytics
GROUP BY OverTime, Attrition;

--Performance Rating
SELECT PerformanceRating,
COUNT(*) AS Employees
FROM HR_Analytics
GROUP BY PerformanceRating;

--Business Travel
SELECT BusinessTravel,
COUNT(*) AS Employees
FROM HR_Analytics
GROUP BY BusinessTravel;

--Average Age
SELECT AVG(Age) AS AverageAge
FROM HR_Analytics

--Average Experience
SELECT AVG(TotalExperienceYears) AS AvgExperience
FROM HR_Analytics

--Average Years at Company
SELECT AVG(YearsAtCompany) AS AvgYears
FROM HR_Analytics

--Marital Status
SELECT MaritalStatus,
COUNT(*) AS Employees
FROM HR_Analytics
GROUP BY MaritalStatus;