USE HR_Analytics_DB;

--Check Negative Salary
SELECT *
FROM HR_Analytics
WHERE MonthlyIncome<0;

--Check invalid ages
SELECT *
FROM HR_Analytics
WHERE Age <18
OR Age > 65;

--Check Missing Salary
SELECT *
FROM HR_Analytics
WHERE MonthlyIncome IS NULL

--Check Missing department
SELECT *
FROM HR_Analytics
WHERE Department IS NULL

--Check Missing Job role
SELECT *
FROM HR_Analytics
WHERE JobRole IS NULL;


UPDATE HR_Analytics
SET BusinessTravel = 'Travel_Rarely'
WHERE BusinessTravel = 'TravelRarely';


--Create a Column
ALTER TABLE HR_Analytics
ADD AttritionFlag INT;



UPDATE HR_Analytics
SET AttritionFlag =
    CASE
        WHEN Attrition = 'Yes' THEN 1
        ELSE 0
    END;

SELECT TOP 10 Attrition, AttritionFlag
FROM HR_Analytics;