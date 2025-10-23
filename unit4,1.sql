
CREATE TABLE Student1 (
StudentID INTEGER PRIMARY KEY,
StudentName VARCHAR2(30),
Major VARCHAR2(30)
);


CREATE TABLE Courses1 (
CourseID INTEGER PRIMARY KEY,
CourseName VARCHAR2(30),
Credits INTEGER
);

CREATE TABLE Enrollments1 (
StudentID INTEGER, CourseID
INTEGER, EnrollmentDate
DATE,
PRIMARY KEY (StudentID, CourseID),
FOREIGN KEY (StudentID) REFERENCES Student1(StudentID),
FOREIGN KEY (CourseID) REFERENCES Courses1(CourseID)
);

CREATE TABLE Instructors1 (
InstructorID INTEGER PRIMARY KEY,
InstructorName VARCHAR2(30),
Phone INTEGER
);

CREATE TABLE Course_Instructors1 ( CourseID
INTEGER,
InstructorID INTEGER,
PRIMARY KEY (CourseID, InstructorID),
FOREIGN KEY (CourseID) REFERENCES Courses1(CourseID),
FOREIGN KEY (InstructorID) REFERENCES Instructors1(InstructorID)
);


INSERT INTO Student1 VALUES (1, 'Ravi', 'Computer Science');
INSERT INTO Student1 VALUES (2, 'Siva', 'Mathematics');
INSERT INTO Student1 VALUES (3, 'Tarak', 'Physics');

INSERT INTO Courses1 VALUES (101, 'Introduction to Programming', 2);
INSERT INTO Courses1 VALUES (102, 'Calculus I', 5);
INSERT INTO Courses1 VALUES (103, 'Classical Mechanics', 2);

INSERT INTO Enrollments1 VALUES (1, 101, '20-Nov-25');
INSERT INTO Enrollments1 VALUES (1, 102, '20-Nov-25');
INSERT INTO Enrollments1 VALUES (2, 102, '20-Nov-25');
INSERT INTO Enrollments1 VALUES (3, 103, '20-Nov-25');

INSERT INTO Instructors1 VALUES (217, 'Dr. Pradeep', 9182580133);
INSERT INTO Instructors1 VALUES (497, 'Prof. Vishnu', 9822664456);

INSERT INTO Course_Instructors1 VALUES (101, 217);
INSERT INTO Course_Instructors1 VALUES (102, 497);
INSERT INTO Course_Instructors1 VALUES (103, 497);

select StudentName,Major from Student1;

select CourseName, Credits from Courses1;

SELECT s.* FROM student1 s
JOIN enrollments1 e ON s.studentID = e.studentID JOIN courses1 c ON e.courseID = c.courseID
WHERE c.coursename = 'Introduction to Programming';

SELECT i.* FROM Instructors1 i, Course_Instructors1 ci, Courses1 c WHERE i.InstructorID =
ci.InstructorID
AND ci.CourseID = c.CourseID
AND c.CourseName = 'Introduction to Programming';

SELECT c.CourseName, COUNT(e.StudentID) FROM
Courses1 c, Enrollments1 e
WHERE c.CourseID = e.CourseID GROUP BY c.CourseName;

SELECT c.CourseName, i.Instructorname
FROM Courses1 c, Course_Instructors1 ci, Instructors1 i WHERE c.CourseID
= ci.CourseID
AND ci.InstructorID = i.InstructorID;

SELECT i.Instructorname, COUNT(ci.CourseID) AS NumberOfCourses FROM
Instructors1 i, Course_Instructors1 ci
WHERE i.InstructorID = ci.InstructorID GROUP BY
i.Instructorname;

SELECT s.StudentName, e.EnrollmentDate FROM Student1 s, Enrollments1 e
WHERE s.StudentID = e.StudentID
AND e.EnrollmentDate > TO_DATE('2025-01-01','YYYY-MM-DD');

SELECT s.StudentName, SUM(c.credits) AS TotalCredits FROM
Student1 s, Enrollments1 e, Courses1 c
WHERE s.StudentID = e.StudentID AND e.CourseID = c.CourseID
GROUP BY s.StudentName;

SELECT c.CourseName, c.credits FROM Courses1 c
WHERE c.credits > 3;
