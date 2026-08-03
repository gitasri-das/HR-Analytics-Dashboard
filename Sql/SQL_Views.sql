USE HR_Analytics_DB;

CREATE VIEW vw_DepartmentSummary AS
SELECT
    Department,
    COUNT(*) AS Employees,
    AVG(MonthlyIncome) AS AvgSalary
FROM HR_Analytics
GROUP BY Department;

CREATE VIEW vw_AttritionSummary AS
SELECT
    Department,
    COUNT(*) AS AttritionCount
FROM HR_Analytics
WHERE Attrition='Yes'
GROUP BY Department;

CREATE VIEW vw_GenderSummary AS
SELECT
    Gender,
    COUNT(*) AS Employees
FROM HR_Analytics
GROUP BY Gender;

CREATE VIEW vw_PerformanceSummary AS
SELECT
    PerformanceRating,
    COUNT(*) AS Employees
FROM HR_Analytics
GROUP BY PerformanceRating;

CREATE VIEW vw_JobSatisfaction AS
SELECT
    JobSatisfaction,
    COUNT(*) AS Employees
FROM HR_Analytics
GROUP BY JobSatisfaction;

CREATE VIEW vw_JobRoleSummary AS
SELECT
    JobRole,
    COUNT(*) AS Employees
FROM HR_Analytics
GROUP BY JobRole;




CREATE VIEW vw_HRDashboard AS
SELECT
    EmpID,
    Department,
    JobRole,
    Gender,
    Age,
    Attrition,
    MonthlyIncome,
    SalarySlab,
    OverTime,
    JobSatisfaction,
    EnvironmentSatisfaction,
    WorkLifeBalance,
    PerformanceRating,
    YearsAtCompany,
    TotalExperienceYears
FROM HR_Analytics;