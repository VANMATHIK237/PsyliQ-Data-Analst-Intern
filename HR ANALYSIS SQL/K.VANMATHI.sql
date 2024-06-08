
#HR DATA ANALYSIS USING SQL#

#DATA
SELECT * FROM hr.gd;

#1. Retrieve the total number of employees in the dataset
SELECT COUNT(EmployeeCount) FROM hr.gd;

#2. List all unique job roles in the dataset.
SELECT DISTINCT(JobRole) FROM hr.gd;

#3. Find the average age of employees
SELECT AVG(Age) FROM hr.gd;

#4. Retrieve the names and ages of employees who have worked at the company for more than 5 years
SELECT Emp_Name , Age FROM hr.gd
WHERE TotalWorkingYears > 5;

#5. Get a count of employees grouped by their department
SELECT COUNT(EmployeeCount) , Department FROM hr.gd
GROUP BY Department ;

#6. List employees who have 'High' Job Satisfaction
SELECT g.Emp_Name FROM hr.gd as g INNER JOIN hr.`e.survey` as s on g.EmployeeID = s.EmployeeID
WHERE JobSatisfaction = ( SELECT MAX(JobSatisfaction) FROM hr.`e.survey`)

#7. Find the highest Monthly Income in the dataset
SELECT  MAX(MonthlyIncome) FROM  hr.gd;

#8. List employees who have 'Travel_Rarely' as their BusinessTravel type.
SELECT Emp_Name  FROM hr.gd
WHERE BusinessTravel = "Travel_Rarely"

#9. Retrieve the distinct MaritalStatus categories in the dataset.
SELECT DISTINCT(MaritalStatus) FROM hr.gd;

#10. Get a list of employees with more than 2 years of work experience but less than 4 years in their current role.
SELECT Emp_Name FROM hr.gd
WHERE TotalWorkingYears > 2 AND YearsAtCompany < 4;

#11. List employees who have changed their job roles within the company (JobLevel and JobRole differ from their previous job)
SELECT EmployeeID, Emp_Name , JobLevel FROM hr.gd
WHERE JobLevel > 1

#12. Find the average distance from home for employees in each department
SELECT  Department , AVG(DistanceFromHome) Average_Distance FROM hr.gd
GROUP BY Department;

#13. Retrieve the top 5 employees with the highest MonthlyIncome.
SELECT Emp_Name, MonthlyIncome  FROM  hr.gd
ORDER BY MonthlyIncome DESC
LIMIT 5
 
 #14. Calculate the percentage of employees who have had a promotion in the last year.
SELECT (COUNT(*)/(SELECT SUM(YearsSinceLastPromotion)) *100)  AS PERCENTAGE FROM  hr.gd
  
#15. List the employees with the highest and lowest EnvironmentSatisfaction.
SELECT Emp_Name , max(EnvironmentSatisfaction), MIN(EnvironmentSatisfaction)  from hr.gd as g INNER JOIN hr.`e.survey` as s on g.EmployeeID = s.EmployeeID
GROUP BY Emp_Name 

#16. Find the employees who have the same JobRole and MaritalStatus.



#17. List the employees with the highest TotalWorkingYears who also have a PerformanceRating of 4
SELECT Emp_Name, Max(TotalWorkingYears) FROM  hr.gd as g INNER JOIN hr.`m.survey` as s on g.EmployeeID = s.EmployeeID
WHERE PerformanceRating = 4
GROUP BY Emp_Name
ORDER BY Max(TotalWorkingYears) DESC


# 18. Calculate the average Age and JobSatisfaction for each BusinessTravel type
SELECT  BusinessTravel, AVG(Age), AVG(JobSatisfaction) FROM  hr.gd as g INNER JOIN hr.`e.survey` as s on g.EmployeeID = s.EmployeeID
GROUP BY BusinessTravel

#19. Retrieve the most common EducationField among employees.
SELECT MAX(EducationField) FROM  hr.gd;

# 20. List the employees who have worked for the company the longest but haven't had a promotion
SELECT Emp_Name FROM  hr.gd
WHERE TotalWorkingYears > 1 AND YearsSinceLastPromotion = 0




  
  























