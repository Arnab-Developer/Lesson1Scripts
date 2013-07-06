USE [master]
GO

CREATE DATABASE Lesson1Database ON PRIMARY
(
    NAME = N'Lesson1Database',
    FILENAME = N'C:\Lesson1\Lesson1Database.mdf',
    SIZE = 3MB,
    MAXSIZE = UNLIMITED,
    FILEGROWTH = 10%
)
LOG ON
(
    NAME = N'Lesson1DatabaseLog',
    FILENAME = N'C:\Lesson1\Lesson1DatabaseLog.ldf',
    SIZE = 2MB,
    MAXSIZE = UNLIMITED,
    FILEGROWTH = 10%
)
GO