-- Explaination on DDL commands 

CREATE TABLE users(
    user_id NUMBER,
    user_name VARCHAR2(50)

);
INSERT INTO users VALUES
    (1,'Alice'),
    (2 ,'Bob');

ALTER TABLE users ADD email VARCHAR2(100);
ALTER TABLE users ADD(age NUMBER, gender VARCHAR2(7));
ALTER TABLE users MODIFY(user_name varchar2(100));
ALTER TABLE users RENAME COLUMN email TO mail;
ALTER TABLE users DROP COLUMN mail;
ALTER TABLE users DROP(age,gender);
DESC users;
SELECT * FROM users;


