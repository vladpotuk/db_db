
SELECT *
FROM Departments
ORDER BY Id DESC;


SELECT [Name] AS 'Group Name', Rating AS 'Group Rating'
FROM Groups;


SELECT Surname, Premium * 100 / (Salary + Premium) AS 'Premium Percentage', Salary * 100 / (Salary + Premium) AS 'Salary Percentage'
FROM Teachers;


SELECT 'The dean of faculty ' + [Name] + ' is ' + Dean AS 'Faculty Information'
FROM Faculties;


SELECT Surname
FROM Teachers
WHERE IsProfessor = 1 AND Salary > 1050;
