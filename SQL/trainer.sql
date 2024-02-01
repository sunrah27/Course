-- Is it possible to insert multiple rows in a single INSERT statement? Taseem
		-- Yes, INSERT INTO tableName VALUES(value,..),(),()
-- Write a query which will change trainerName to 'Cristain' where trainerName is 'Tim' and trainerAge is 34. Sunny
	UPDATE tableName SET trainerName = 'Cristain', trainerAge = 30 WHERE trainerName = 'Tim';
-- Write a query which will change trainerName to 'Cristain' and trainerAge to 30 where trainerName 
	-- is 'Tim' and trainerAge is not 34. Samreen
	UPDATE trainer Set trainername = 'Cristain',trainerAge = 30 WHERE name = 'Tim' AND trainerAge != 34;
-- What happens if the WHERE clause is omitted in an UPDATE statement? Eren
	UPDATE Trainer SET trainerName='Cristain';
UPDATE Trainer SET trainerName='Cristain'; -- Does this query will work? Thomas
-- What is CHECK constraint? Robert
 
-- if we use NOT NULL constraint for a column, can we leave it null? Thushra
-- The NOT NULL constraint makes sure a column does not accept NULL values.
-- What is difference between primary key and unique key? Calum
 
-- What is AUTO_INCREMENT? Tony
	-- auto_increment can not be used on a normal column.
-- What is difference between DELETE and TRUNCATE? Antony
 
-- -------------------------------------------------------------------------------
-- ALTER TABLE = Command
	-- It is used to manipulate the schema of a database
    -- delete, add, modify a column, add/remove primary key and foreign key
USE Test2;
DESCRIBE Trainer;
 
ALTER TABLE Trainer ADD trainerAge INT; -- will add trainerAge column to the trainer Table
ALTER TABLE Trainer ADD preferedName VARCHAR(15) AFTER trainerName; -- will add preferedName column after trainerName column
ALTER TABLE Trainer ADD trainerSSN INT FIRST; -- Will add trainerSSN column as a first column
 
ALTER TABLE Trainer DROP COLUMN trainerSSN; -- Will delete the trainerSSN column from trainer table
 
ALTER TABLE Trainer MODIFY COLUMN trainerName VARCHAR(20); -- Will change the data type of trainerName column to varchar(20)
ALTER TABLE Trainer RENAME COLUMN TrainerSalary TO annualSalary; -- will change the trainerSalary column name to annualSalary
 
ALTER TABLE Trainer DROP PRIMARY KEY; -- Will remove primary key from the trainer Table
ALTER TABLE Trainer ADD PRIMARY KEY(trainerId); -- will make the trainerId of trainer Table as primary key
DESCRIBE Trainer;
SELECT * FROM Student;
 
ALTER TABLE Trainer RENAME TO Instructor; -- will renmae the trainer Table to Instructor
 
CREATE DATABASE DayThree;
USE DayThree;
CREATE TABLE Department(
	departmentId INT PRIMARY KEY,
    departmentName VARCHAR(10) NOT NULL
    );
CREATE TABLE Employee(
	employeeId INT PRIMARY KEY,
    employeeName VARCHAR(20) NOT NULL,
    department INT
    );
ALTER TABLE Employee ADD FOREIGN KEY (departmentId) REFERENCES department(departmentId);
 
select COLUMN_NAME, CONSTRAINT_NAME, REFERENCED_COLUMN_NAME, REFERENCED_TABLE_NAME
from information_schema. KEY_COLUMN_USAGE where TABLE_NAME = 'Employee';
 
-- will remove foreign key from the departmentId column of employee table.
ALTER TABLE Employee DROP FOREIGN KEY employee_ibfk_1, DROP KEY departmentId;
 
 
DESCRIBE Employee;