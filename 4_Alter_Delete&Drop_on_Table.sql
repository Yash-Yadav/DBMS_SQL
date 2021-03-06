DROP TABLE STUDENT;
CREATE TABLE
STUDENT(
S_ID INT NOT NULL PRIMARY KEY,
fNAME VARCHAR(10),
lNAME VARCHAR(10),
[Age(Atleast 18)] INT NOT NULL CHECK([Age(Atleast 18)] >=18),
Laptop_Owned VARCHAR(3) NOT NULL CHECK(Laptop_Owned = 'YES' OR Laptop_Owned = 'NO')
);
SELECT * FROM STUDENT;
ALTER TABLE STUDENT
ADD Laptop_MAC_id VARCHAR(17);
ALTER TABLE STUDENT
ADD DEMO_COL VARCHAR(10);
INSERT STUDENT
(S_ID, [Age(Atleast 18)], Laptop_Owned, Laptop_MAC_id)
VALUES
(1, 18, 'YES', '31-E6-49-8D-71-DD'),
(2, 19, 'YES', 'B3-E1-C4-9F-DE-26'),
(3, 18, 'NO', NULL);
SELECT * FROM STUDENT;
ALTER TABLE STUDENT
DROP COLUMN DEMO_COL;
SELECT * FROM STUDENT;