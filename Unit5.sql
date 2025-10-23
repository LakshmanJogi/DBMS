5 i) Create primary and secondary indexes on a column?
 ii) Retrieve data using an indexes?
 iii) Insert data and update indexes?
 iv) Delete data and impact on indexes?

1. To create Primary Index StudentID:
CREATE TABLE StudentsF (
 StudentID INT PRIMARY KEY,
 FirstName VARCHAR2(50),
 LastName VARCHAR2(50),
 EnrollmentDate DATE
);

CREATE INDEX idx_LastName ON StudentsF(LastName);
Index created.

2. Insert Data using an index
INSERT INTO StudentsF VALUES(101, 'John', 'Doe', TO_DATE('15-Aug-2025', 'DDMon-YYYY'));
INSERT INTO StudentsF VALUES(102, 'Jane', 'Smith', TO_DATE('16-Aug-2025', 'DDMon-YYYY'));
INSERT INTO StudentsF VALUES(103, 'Ravi', 'Kumar', TO_DATE('25-Oct-2025', 'DDMon-YYYY'));

3. Retrieve Data Using an Index:
Using the primary index on StudentID.
SELECT * FROM StudentsF WHERE StudentID = 102;

SELECT * FROM StudentsF WHERE LastName = 'Doe';

4. Delete Data using primary index
DELETE FROM StudentsF WHERE StudentID = 103;

Delete Data using secondary index
DELETE FROM StudentsF WHERE LastName = 'Smith';

View Index Details
desc idx_LastName
Object Type INDEX ObjectIDX_LASTNAME
Drop Index
DROP INDEX idx_LastName;