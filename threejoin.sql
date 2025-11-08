Drop table client;
drop table projects CASCADE CONSTRAINTS;
drop table intern CASCADE CONSTRAINTS;

-- Create CLIENT table
CREATE TABLE client (
    client_id NUMBER PRIMARY KEY,
    client_name VARCHAR2(100),
    contact_no VARCHAR2(20)
);

INSERT INTO client VALUES (888, 'Microsoft', '1234565789');
INSERT INTO client VALUES (999, 'Meta', '987654321');
INSERT INTO client VALUES (111, 'Google', '4444444444');



CREATE TABLE projects (
    project_id NUMBER PRIMARY KEY,
    project_name VARCHAR2(100),
    dead_line DATE,
    manager VARCHAR2(50),
    c_id NUMBER REFERENCES client(client_id)
);-- Insert into PROJECTS
INSERT INTO projects VALUES (101, 'Excel Clone', TO_DATE('27-11-2025', 'DD-MM-YYYY'), 'XYZ', 888);
INSERT INTO projects VALUES (102, 'Facebook Clone', TO_DATE('01-01-2027', 'DD-MM-YYYY'), 'PQR', 999);
INSERT INTO projects VALUES (103, 'Chrome Clone', TO_DATE('17-03-2026', 'DD-MM-YYYY'), 'ABC', 111);
INSERT INTO projects VALUES (104, 'Word Clone', TO_DATE('19-06-2028', 'DD-MM-YYYY'), 'MNO', 888);



CREATE TABLE intern (
    intern_id NUMBER PRIMARY KEY,
    name VARCHAR2(50),
    age NUMBER,
    email VARCHAR2(100),
    p_id NUMBER REFERENCES projects(project_id)
);

-- Insert into INTERN
INSERT INTO intern VALUES (1, 'Alice', 17, 'alice@gmail.com', 101);
INSERT INTO intern VALUES (2, 'Bob', 18, 'bob@gmail.com', 102);
INSERT INTO intern VALUES (3, 'Charlie', 19, 'charlie@gmail.com', 101);
INSERT INTO intern VALUES (4, 'David', 21, 'david@gmail.com', 102);
INSERT INTO intern VALUES (5, 'Emmy', 20, 'emmy@gmail.com', 103);

select i.name,c.client_name from 
intern i  
join projects p 
on i.P_ID=p.PROJECT_ID
join 
client c  
on p.C_ID = c.CLIENT_ID;

select c.CLIENT_NAME, count(*) from 
intern i  
join projects p 
on i.P_ID=p.PROJECT_ID
join 
client c  
on p.C_ID = c.CLIENT_ID
group by c.CLIENT_ID;


