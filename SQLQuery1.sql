USE [db3_sql]
GO

INSERT INTO Departments (Building, Name) VALUES 
    (1, 'Педіатричне відділення'),
    (2, 'Терапевтичне відділення'),
    (3, 'Хірургічне відділення');

INSERT INTO Doctors (Name, Premium, Salary, Surname) VALUES 
    ('Олександра', 200, 3500, 'Коваленко'),
    ('Максим', 150, 3200, 'Сідоренко'),
    ('Наталія', 180, 3800, 'Петренко');

INSERT INTO Examinations (Name) VALUES 
    ('Первинний огляд'),
    ('Електрокардіограма'),
    ('Рентгенографія');

INSERT INTO Wards (Name, Places, DepartmentId) VALUES 
    ('Палата 201', 12, 1),
    ('Палата 202', 18, 2),
    ('Палата 203', 25, 1);

INSERT INTO DoctorsExaminations (EndTime, StartTime, DoctorId, ExaminationId, WardId) VALUES 
    ('13:30', '09:00', 1, 1, 1),
    ('15:45', '10:15', 2, 2, 2),
    ('18:00', '12:30', 3, 3, 3);