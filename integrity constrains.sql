CREATE TABLE U_data(
    id NUMBER PRIMARY KEY,
    name VARCHAR2(40),
    email VARCHAR2(40) UNIQUE,
    age NUMBER CHECK(age > 0)
);
 DROP TABLE u_data;

-- ---------------------------------------------------------------
-- NOT NULL : 
--INSERT INTO u_data VALUES (1,'Alice');-------------> works 
--INSERT INTO U_DATA (id) VALUES(2); ---------> this line won't work
---------------------------------------------------------------------------
-- UNIQUE: 
  --INSERT INTO U_DATA VALUES (1,'Alice','alice@gmail.com');-------> will work 
 -- INSERT INTO U_data VALUES (2,'bob', 'alice@gmail.com'); -------> wont work

---------------------------------------------------------------------------- 
-- CHECK: 
 --INSERT INTO U_DATA VALUES (1,'Alice','alice@gmail.com',18); ----> will work 
 -- INSERT INTO U_DATA VALUES (2,'bob','bob@gmail.com',-19); ----> won't work  
-----------------------------------------------------------------------------
-- PRIMARY KEY :
-- INSERT INTO U_DATA VALUES (1,'Alice','alice@gmail.com',18);----> works 
-- INSERT INTO U_DATA VALUES ('Alice','alice@gmail.com',20); ------> won't work
-------------------------------------------------------------------------------

SELECT constraint_name FROM User_constraints WHERE table_name= 'U_DATA';
SELECT * FROM U_data;


