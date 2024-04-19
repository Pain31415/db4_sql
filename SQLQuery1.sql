USE [db3_sql]
GO

INSERT INTO Departments (Building, Name) VALUES 
    (1, '���������� ��������'),
    (2, '������������ ��������'),
    (3, 'ճ������� ��������');

INSERT INTO Doctors (Name, Premium, Salary, Surname) VALUES 
    ('����������', 200, 3500, '���������'),
    ('������', 150, 3200, 'ѳ�������'),
    ('������', 180, 3800, '��������');

INSERT INTO Examinations (Name) VALUES 
    ('��������� �����'),
    ('�����������������'),
    ('��������������');

INSERT INTO Wards (Name, Places, DepartmentId) VALUES 
    ('������ 201', 12, 1),
    ('������ 202', 18, 2),
    ('������ 203', 25, 1);

INSERT INTO DoctorsExaminations (EndTime, StartTime, DoctorId, ExaminationId, WardId) VALUES 
    ('13:30', '09:00', 1, 1, 1),
    ('15:45', '10:15', 2, 2, 2),
    ('18:00', '12:30', 3, 3, 3);