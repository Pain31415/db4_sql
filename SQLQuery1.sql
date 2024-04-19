USE [db3_sql]
GO

SELECT COUNT(*) AS NumberOfProfessors
FROM Professors
WHERE Department = 'Software Development';

SELECT COUNT(*) AS NumberOfLectures
FROM Lectures
WHERE ProfessorId = (SELECT ProfessorId FROM Professors WHERE Name = 'Dave McQueen');

SELECT COUNT(*) AS NumberOfClasses
FROM Classes
WHERE Room = 'D201';

SELECT Room, COUNT(*) AS NumberOfLectures
FROM Classes
GROUP BY Room;

SELECT COUNT(DISTINCT StudentId) AS NumberOfStudents
FROM Attendance
WHERE LectureId IN (SELECT LectureId FROM Lectures WHERE ProfessorId = (SELECT ProfessorId FROM Professors WHERE Name = 'Jack Underhill'));

SELECT AVG(Salary) AS AverageSalary
FROM Professors
WHERE Department = 'Computer Science';

SELECT MIN(NumberOfStudents) AS MinStudents, MAX(NumberOfStudents) AS MaxStudents
FROM (SELECT GroupId, COUNT(*) AS NumberOfStudents FROM Students GROUP BY GroupId) AS GroupStudentCount;

SELECT AVG(Funding) AS AverageFunding
FROM Departments;

SELECT p.Name AS ProfessorName, COUNT(*) AS NumberOfCourses
FROM Professors p
JOIN Lectures l ON p.ProfessorId = l.ProfessorId
GROUP BY p.Name;

SELECT DayOfWeek, COUNT(*) AS NumberOfLectures
FROM Lectures
GROUP BY DayOfWeek;

SELECT Room, COUNT(DISTINCT DepartmentId) AS NumberOfDepartments
FROM Classes
GROUP BY Room;

SELECT d.Faculty, COUNT(*) AS NumberOfCourses
FROM Departments d
JOIN Lectures l ON d.DepartmentId = l.DepartmentId
GROUP BY d.Faculty;

SELECT p.Name AS ProfessorName, c.Room, COUNT(*) AS NumberOfLectures
FROM Professors p
JOIN Lectures l ON p.ProfessorId = l.ProfessorId
JOIN Classes c ON l.LectureId = c.LectureId
GROUP BY p.Name, c.Room;