CREATE TABLE people(
    p_id NUMBER,
    p_name VARCHAR2(30),
    email VARCHAR2(100)
);
INSERT INTO people VALUES(123, 'Alice', 'alice@gmail.com');
INSERT INTO people VALUES(456, 'Bob', 'bob@gmail.com');
ALTER TABLE people ADD(age NUMBER, gender VARCHAR2(6));
ALTER TABLE people RENAME COLUMN p_name TO person_name;
ALTER TABLE people MODIFY(gender varchar2(20));
ALTER TABLE people DROP COLUMN age;
RENAME people to people_data;
TRUNCATE TABLE people_data;
DROP TABLE people_data;










