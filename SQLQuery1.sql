USE [db3_sql]
GO

SELECT COUNT(*) AS NumberOfWards
FROM Wards
WHERE Places > 10;

SELECT d.Building, COUNT(w.Id) AS NumberOfWards
FROM Departments d
LEFT JOIN Wards w ON d.Id = w.DepartmentId
GROUP BY d.Building;

SELECT d.Name AS DepartmentName, COUNT(w.Id) AS NumberOfWards
FROM Departments d
LEFT JOIN Wards w ON d.Id = w.DepartmentId
GROUP BY d.Name;

SELECT d.Name AS DepartmentName, SUM(dr.Premium) AS TotalPremium
FROM Departments d
LEFT JOIN Doctors dr ON d.Id = dr.DepartmentId
GROUP BY d.Name;

SELECT d.Name AS DepartmentName
FROM Departments d
LEFT JOIN Wards w ON d.Id = w.DepartmentId
LEFT JOIN DoctorsExaminations de ON w.Id = de.WardId
GROUP BY d.Name
HAVING COUNT(DISTINCT de.DoctorId) >= 5;

SELECT COUNT(*) AS NumberOfDoctors, SUM(Salary + Premium) AS TotalSalary
FROM Doctors;

SELECT AVG(Salary + Premium) AS AverageSalary
FROM Doctors;

SELECT Name AS WardName
FROM Wards
WHERE Places = (SELECT MIN(Places) FROM Wards);

SELECT d.Building
FROM Departments d
LEFT JOIN Wards w ON d.Id = w.DepartmentId
GROUP BY d.Building
HAVING SUM(Places) > 100;