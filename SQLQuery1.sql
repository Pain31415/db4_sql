USE [db3_sql]
GO

INSERT INTO Professors (ProfessorId, Name, Department, Salary)
VALUES 
    (1, 'Dave McQueen', 'Software Development', 5000.00),
    (2, 'Jack Underhill', 'Computer Science', 4800.00),
    (3, 'John Doe', 'Software Development', 5200.00);

INSERT INTO Rooms (RoomId, RoomName)
VALUES 
    (1, 'D201'),
    (2, 'D202'),
    (3, 'D203');

INSERT INTO Lectures (LectureId, ProfessorId, RoomId, StartTime, DurationMinutes)
VALUES 
    (1, 1, 1, '2024-04-20 10:00:00', 90),
    (2, 1, 1, '2024-04-21 11:30:00', 90),
    (3, 2, 2, '2024-04-20 13:00:00', 90),
    (4, 3, 3, '2024-04-22 09:00:00', 120);

INSERT INTO Students (StudentId, Name, GroupId)
VALUES 
    (1, 'Alice Smith', 1),
    (2, 'Bob Johnson', 1),
    (3, 'Emma Davis', 2);

INSERT INTO Groups (GroupId, GroupName)
VALUES 
    (1, 'Group A'),
    (2, 'Group B');