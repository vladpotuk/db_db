-- ��������� ���� ����� db_3
CREATE DATABASE db_db;
GO

-- ������������ ���� ����� db_3
USE db_db;
GO

-- ��������� ������� ������� (Departments)
CREATE TABLE Departments (
    Id INT PRIMARY KEY IDENTITY,
    Financing MONEY NOT NULL,
    Name NVARCHAR(100) NOT NULL UNIQUE
);
GO

-- ��������� ������� ���������� (Faculties)
CREATE TABLE Faculties (
    Id INT PRIMARY KEY IDENTITY,
    Dean NVARCHAR(MAX) NOT NULL,
    Name NVARCHAR(100) NOT NULL UNIQUE
);
GO

-- ��������� ������� ����� (Groups)
CREATE TABLE Groups (
    Id INT PRIMARY KEY IDENTITY,
    Name NVARCHAR(10) NOT NULL UNIQUE,
    Rating INT NOT NULL CHECK (Rating >= 0 AND Rating <= 5),
    Year INT NOT NULL CHECK (Year >= 1 AND Year <= 5)
);
GO

-- ��������� ������� ��������� (Teachers)
CREATE TABLE Teachers (
    Id INT PRIMARY KEY IDENTITY,
    EmploymentDate DATE NOT NULL,
    IsAssistant BIT NOT NULL DEFAULT 0,
    IsProfessor BIT NOT NULL DEFAULT 0,
    Name NVARCHAR(MAX) NOT NULL,
    Position NVARCHAR(MAX) NOT NULL,
    Premium MONEY NOT NULL CHECK (Premium >= 0),
    Salary MONEY NOT NULL CHECK (Salary > 0),
    Surname NVARCHAR(MAX) NOT NULL
);
GO
