USE DUMMY;

-- Teacher Table
CREATE TABLE Teacher (
    Teacher_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Subject VARCHAR(50)
);

-- Student Table
CREATE TABLE Student (
    Student_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Class VARCHAR(20)
);

-- Classroom Table
CREATE TABLE Classroom (
    Class_ID INT PRIMARY KEY,
    Class_Name VARCHAR(20),
    Teacher_ID INT,
    FOREIGN KEY (Teacher_ID) REFERENCES Teacher(Teacher_ID)
);

-- Marks Table
CREATE TABLE Marks (
    Mark_ID INT PRIMARY KEY,
    Student_ID INT,
    Class_ID INT,
    Marks_Obtained INT,
    FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID),
    FOREIGN KEY (Class_ID) REFERENCES Classroom(Class_ID)
);

INSERT INTO Teacher VALUES (1, 'Jebitha', 'Math');
INSERT INTO Teacher VALUES (2, 'Kavitha', 'Science');

INSERT INTO Student VALUES (101, 'Amala Binisha', '10-A');
INSERT INTO Student VALUES (102, 'Sowmiya', '10-A');

INSERT INTO Classroom VALUES (201, '10-A', 1);
INSERT INTO Classroom VALUES (202, '10-B', 2);

INSERT INTO Marks VALUES (301, 101, 201, 95);
INSERT INTO Marks VALUES (302, 102, 201, 99);