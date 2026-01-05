SHOW DATABASES
CREATE DATABASE IF NOT EXISTS techforallwithpriya
USE techforallwithpriya
SELECT database()

CREATE TABLE employee(
	EID		INT	PRIMARY KEY,
    FirstName	varchar(50)	NOT NULL,
    LastName	varchar(50)	NOT NULL,
    Age		INT NOT NULL,
    Salary	INT NOT NULL,
    Location	varchar(50)	NOT NULL
)

CREATE TABLE employee(
	EID		INT	AUTO_INCREMENT,
    FirstName	varchar(50)	NOT NULL,
    LastName	varchar(50)	NOT NULL,
    Age		INT NOT NULL,
    Salary	INT NOT NULL,
    Location	varchar(50)	NOT NULL,
    PRIMARY KEY(EID)
)

SHOW TABLES

-- no need to tell keys for all if input all values
INSERT INTO employee VALUES(1,"priya", "Bhatia", 27, 20000, "Bengalore")

INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES("priya", "Bhatia", 27, 20000, "Bengalore");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES("Ravi", "Gupta", 23, 30000, "Fatehpur");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES("Sanskar", "Singh", 25, 300000, "Lucknow");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES("Yuvraj", "Singh", 23, 40000, "Europe");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES("Matt", "Murdock", 29, 10000, "Hell's Kitchen");

-- select everything from employee table
SELECT * FROM employee	

-- give me the employee details having salary more than 1,00,000

SELECT * FROM employee WHERE Salary > 100000

SELECT FirstName, LastName FROM employee 
WHERE Salary > 100000

-- give me the employee details having age more than 25
-- data retrieval
SELECT * FROM employee WHERE Age > 25

-- update the last name of priya from bhatia to batt
UPDATE employee SET LastName = "Bhatt"
WHERE EID = 1

UPDATE employee SET FirstName = "Priya"
WHERE EID = 1

-- delete the record of  EID = 4
DELETE FROM employee
WHERE EID = 4

-- used to delete the table
DROP TABLE employee

-- give the discription of employee
DESC employee