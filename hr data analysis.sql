SELECT
 round((sum(
case when Attrition = 'yes' THEN 1 ELSE 0 
END)/ count(*)) * 100, 2) as attrition_rate
from employee_copy;



SELECT Department, 
round((sum(
case when Attrition = 'yes' THEN 1 ELSE 0 
END)/ count(*)) * 100, 2) as percentage
from employee_copy
GROUP BY Department
ORDER BY percentage DESC
;


SELECT JobRole, 
round((sum(
case when Attrition = 'yes' THEN 1 ELSE 0 
END)/ count(*)) * 100, 2) as percentage
from employee_copy
GROUP BY JobRole
ORDER BY percentage DESC
;


SELECT Department ,round(avg(Salary), 2) as avg_salary
from employee_copy
GROUP BY Department
ORDER BY avg_salary DESC;

SELECT  Department, MAX(Salary) highest, min(Salary) lowest, MAX(Salary) - min(Salary) salary_gap 
FROM employee_copy
GROUP BY Department 
ORDER BY salary_gap DESC;


SELECT FirstName, LastName, Department, JobRole,Salary
FROM employee_copy
ORDER BY Salary DESC
LIMIT 10;


SELECT Department, sum( CASE WHEN Gender = 'male' then 1 ELSE 0 END )  male,
sum( CASE WHEN Gender = 'female' then 1 ELSE 0 END )  female ,
count(*) Total
from employee_copy
GROUP BY Department;



SELECT Department, round(avg(Age), 2)  avg_age
from employee_copy
GROUP BY Department
ORDER BY avg_age DESC;



SELECT Department, round(avg(YearsSinceLastPromotion), 2)  avg_prom
from employee_copy
GROUP BY Department
ORDER BY avg_prom DESC;




SELECT FirstName,LastName, Department, YearsAtCompany
from employee_copy
WHERE YearsSinceLastPromotion = 0;

SELECT *
from employee_copy;

SELECT EducationField,round(avg(Salary), 2) as avg_salary
from employee_copy
GROUP BY EducationField
ORDER BY avg_salary DESC;




SELECT Department,
round((sum(
CASE WHEN overtime = 'yes' THEN 1 ELSE 0 
END) / count(*)) * 100, 2) as overtime_rate 
from employee_copy
GROUP BY Department
ORDER BY overtime_rate DESC;



