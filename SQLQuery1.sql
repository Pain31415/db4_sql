CREATE DATABASE [db3_sql]
GO
USE [db3_sql]
GO

CREATE TABLE Professors (
    ProfessorId INT PRIMARY KEY,
    Name NVARCHAR(100),
    Department NVARCHAR(100),
    Salary DECIMAL(10, 2)
);
CREATE TABLE Rooms (
    RoomId INT PRIMARY KEY,
    RoomName NVARCHAR(100)
);

CREATE TABLE Students (
    StudentId INT PRIMARY KEY,
    Name NVARCHAR(100),
    GroupId INT,
    CONSTRAINT FK_Group FOREIGN KEY (GroupId) REFERENCES Groups(GroupId)
);

CREATE TABLE Groups (
    GroupId INT PRIMARY KEY,
    GroupName NVARCHAR(100)
);

CREATE TABLE Lectures (
    LectureId INT PRIMARY KEY,
    ProfessorId INT,
    RoomId INT,
    StartTime DATETIME,
    DurationMinutes INT,
    CONSTRAINT FK_Professor FOREIGN KEY (ProfessorId) REFERENCES Professors(ProfessorId),
    CONSTRAINT FK_Room FOREIGN KEY (RoomId) REFERENCES Rooms(RoomId)
);