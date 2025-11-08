CREATE TABLE user_Data(
    u_id NUMBER,
    u_name VARCHAR2(50),
    email_id VARCHAR2(100),
    user_since DATE
);
INSERT INTO USER_DATA(u_id,u_name) VALUES (1,'Alice');
INSERT INTO USER_DATA(u_id,u_name) VALUES (2,'Bob');
SELECT * FROM user_data;
UPDATE user_data SET email_id = 'alie@gmail.com' WHERE u_id=1;
UPDATE user_data SET email_id = 'bob@gmail.com' WHERE u_id=2;
UPDATE user_data SET USER_SINCE='17-03-1998' WHERE u_id=1;
UPDATE user_data SET USER_SINCE='26-12-2007' WHERE u_id=2;
ALTER TABLE user_Data ADD gender VARCHAR2(10);
UPDATE user_data SET GENDER='Female' WHERE u_id=1;
UPDATE user_data SET GENDER='Male' WHERE u_id=2;
ALTER TABLE user_data RENAME COLUMN u_name TO u_first_name;
ALTER TABLE user_Data ADD u_last_name VARCHAR2(50);
UPDATE USER_DATA SET U_LAST_NAME='wells' WHERE u_id=1;
UPDATE USER_DATA SET U_LAST_NAME='marley' WHERE u_id=2;
SELECT u_first_name,u_last_name FROM user_Data;
 