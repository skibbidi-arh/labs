use lab7;

CREATE TABLE ResearchGroup (
    GroupName VARCHAR(255) PRIMARY KEY,
    Lab VARCHAR(255),
    Budget DECIMAL(10, 2),
    Head VARCHAR(255)
);


CREATE TABLE Faculty (
    FacultyID INT PRIMARY KEY,
    Name VARCHAR(255),
    ContactNumber VARCHAR(15),
    ResearchLab VARCHAR(255),
    GroupName VARCHAR(255),
    FOREIGN KEY (GroupName) REFERENCES ResearchGroup(GroupName)
);

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(255),
    ContactNumber VARCHAR(15),
    ResearchLab VARCHAR(255),
    Supervisor INT,
    GroupName VARCHAR(255),
    FOREIGN KEY (Supervisor) REFERENCES Faculty(FacultyID),
    FOREIGN KEY (GroupName) REFERENCES ResearchGroup(GroupName)
);


CREATE TABLE ResearchProject (
    ProjectTitle VARCHAR(255) PRIMARY KEY,
    StartDate DATE,
    EndDate DATE,
    ResearchDomain VARCHAR(255)
);


CREATE TABLE Collaboration (
    FacultyID INT,
    StudentID INT,
    ProjectTitle VARCHAR(255),
    PRIMARY KEY (FacultyID, StudentID, ProjectTitle),
    FOREIGN KEY (FacultyID) REFERENCES Faculty(FacultyID),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (ProjectTitle) REFERENCES ResearchProject(ProjectTitle)
);


CREATE TABLE Publication (
    PublicationTitle VARCHAR(255) PRIMARY KEY,
    ConferenceName VARCHAR(255),
    PublicationDate DATE,
    ResearchDomain VARCHAR(255),
    ResearchLab VARCHAR(255),
    ProjectTitle VARCHAR(255),
    FOREIGN KEY (ProjectTitle) REFERENCES ResearchProject(ProjectTitle)
);

DROP TABLE IF EXISTS Collaboration;
DROP TABLE IF EXISTS Publication;
DROP TABLE IF EXISTS ResearchProject;
DROP TABLE IF EXISTS Student;
DROP TABLE IF EXISTS Faculty;
DROP TABLE IF EXISTS ResearchGroup;

