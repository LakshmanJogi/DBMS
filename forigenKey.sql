CREATE TABLE courses(
    C_id NUMBER PRIMARY KEY,
    C_name VARCHAR2(50) NOT NULL,
    Price NUMBER NOT NULL,
    Duration NUMBER NOT NULL
);
INSERT INTO COURSES VALUES
    (101,'C_Programing',6000,180),
    (102,'Java',7000,220),
    (103,'Python',800,200);

-- CREATE TABLE FOR FORIGEN KEY 

CREATE TABLE student(
    S_id NUMBER PRIMARY KEY,
    S_name VARCHAR2(50) NOT NULL,
    email VARCHAR2(100) NOT NULL,
    age NUMBER check (age >= 10),
    course_id NUMBER REFERENCES courses(c_id)  


);
INSERT INTO student VALUES 
    (1,'Alice', 'alice@gmail.com',19,101),
    (2,'bob','bob@gmail.com',21,102);
SELECT constraint_name , constraint_type FROM User_constraints WHERE table_name= 'STUDENT';
SELECT * FROM STUDENT;
