
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/28/2021 23:35:34
-- Generated from EDMX file: C:\Users\chait\source\repos\SchoolDB\SchoolDB\SchoolDB.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [SchoolDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Students'
CREATE TABLE [dbo].[Students] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Age] nvarchar(max)  NOT NULL,
    [MobileNumber] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Lecturers'
CREATE TABLE [dbo].[Lecturers] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Education] nvarchar(max)  NOT NULL,
    [Student_Id] int  NOT NULL
);
GO

-- Creating table 'Courses'
CREATE TABLE [dbo].[Courses] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Subjects'
CREATE TABLE [dbo].[Subjects] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Lecturer_Id] int  NOT NULL,
    [Course_Id] int  NOT NULL
);
GO

-- Creating table 'StudentCourse'
CREATE TABLE [dbo].[StudentCourse] (
    [Students_Id] int  NOT NULL,
    [Courses_Id] int  NOT NULL
);
GO

-- Creating table 'LecturerCourse'
CREATE TABLE [dbo].[LecturerCourse] (
    [Lecturers_Id] int  NOT NULL,
    [Courses_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Students'
ALTER TABLE [dbo].[Students]
ADD CONSTRAINT [PK_Students]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Lecturers'
ALTER TABLE [dbo].[Lecturers]
ADD CONSTRAINT [PK_Lecturers]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Courses'
ALTER TABLE [dbo].[Courses]
ADD CONSTRAINT [PK_Courses]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Subjects'
ALTER TABLE [dbo].[Subjects]
ADD CONSTRAINT [PK_Subjects]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Students_Id], [Courses_Id] in table 'StudentCourse'
ALTER TABLE [dbo].[StudentCourse]
ADD CONSTRAINT [PK_StudentCourse]
    PRIMARY KEY CLUSTERED ([Students_Id], [Courses_Id] ASC);
GO

-- Creating primary key on [Lecturers_Id], [Courses_Id] in table 'LecturerCourse'
ALTER TABLE [dbo].[LecturerCourse]
ADD CONSTRAINT [PK_LecturerCourse]
    PRIMARY KEY CLUSTERED ([Lecturers_Id], [Courses_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Students_Id] in table 'StudentCourse'
ALTER TABLE [dbo].[StudentCourse]
ADD CONSTRAINT [FK_StudentCourse_Student]
    FOREIGN KEY ([Students_Id])
    REFERENCES [dbo].[Students]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Courses_Id] in table 'StudentCourse'
ALTER TABLE [dbo].[StudentCourse]
ADD CONSTRAINT [FK_StudentCourse_Course]
    FOREIGN KEY ([Courses_Id])
    REFERENCES [dbo].[Courses]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_StudentCourse_Course'
CREATE INDEX [IX_FK_StudentCourse_Course]
ON [dbo].[StudentCourse]
    ([Courses_Id]);
GO

-- Creating foreign key on [Lecturers_Id] in table 'LecturerCourse'
ALTER TABLE [dbo].[LecturerCourse]
ADD CONSTRAINT [FK_LecturerCourse_Lecturer]
    FOREIGN KEY ([Lecturers_Id])
    REFERENCES [dbo].[Lecturers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Courses_Id] in table 'LecturerCourse'
ALTER TABLE [dbo].[LecturerCourse]
ADD CONSTRAINT [FK_LecturerCourse_Course]
    FOREIGN KEY ([Courses_Id])
    REFERENCES [dbo].[Courses]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LecturerCourse_Course'
CREATE INDEX [IX_FK_LecturerCourse_Course]
ON [dbo].[LecturerCourse]
    ([Courses_Id]);
GO

-- Creating foreign key on [Student_Id] in table 'Lecturers'
ALTER TABLE [dbo].[Lecturers]
ADD CONSTRAINT [FK_LecturerStudent]
    FOREIGN KEY ([Student_Id])
    REFERENCES [dbo].[Students]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LecturerStudent'
CREATE INDEX [IX_FK_LecturerStudent]
ON [dbo].[Lecturers]
    ([Student_Id]);
GO

-- Creating foreign key on [Lecturer_Id] in table 'Subjects'
ALTER TABLE [dbo].[Subjects]
ADD CONSTRAINT [FK_SubjectLecturer]
    FOREIGN KEY ([Lecturer_Id])
    REFERENCES [dbo].[Lecturers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SubjectLecturer'
CREATE INDEX [IX_FK_SubjectLecturer]
ON [dbo].[Subjects]
    ([Lecturer_Id]);
GO

-- Creating foreign key on [Course_Id] in table 'Subjects'
ALTER TABLE [dbo].[Subjects]
ADD CONSTRAINT [FK_SubjectCourse]
    FOREIGN KEY ([Course_Id])
    REFERENCES [dbo].[Courses]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SubjectCourse'
CREATE INDEX [IX_FK_SubjectCourse]
ON [dbo].[Subjects]
    ([Course_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------