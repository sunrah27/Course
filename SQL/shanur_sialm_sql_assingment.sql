-- MySQL Assignment 1
-- The purpose of this database is to model data for a breakdown company.  
-- Members must be registered with the company and each member can have multiple vehicles.  
-- When a vehicle breaks down and Engineer will attend the callout in the van that have been assigned.
-- They are assigned a new van once the current one reaches 80000 miles.

-- TASK 1 Create the following tables:
-- Member
	-- MemberID(PK), varchar(10)
	-- MFName, varchar(20)
	-- MLName, varchar(20)
	-- MLoc, varchar(20)
    
-- Vehicle:
	-- VehReg(PK), varchar(10)
	-- VehMake varchar(10)
	-- VehModel, varchar(10)
	-- MemberID(FK), varchar(10)
    
-- Engineer:
	-- EngID(PK), int
	-- EFName, varchar(20)
	-- ELName, varchar(20)
    
-- EngVan:
	-- VanReg(PK), varchar(10)
	-- VanMake varchar(10)
	-- VanModel, varchar(10)
	-- EngID(FK), int
	-- VMileage, int

-- Breakdown:
	-- BDID(PK), int 10
	-- VehReg(FK), varchar(10)
	-- VanReg(FK), varchar(10)
	-- BDDATE, date
	-- BDTIME, time
	-- BDLoc
    
-- Using the Alter command set the foreign keys

CREATE DATABASE IF NOT EXISTS assingment;

USE assingment;

CREATE TABLE IF NOT EXISTS Member (
	MemberID VARCHAR(10) PRIMARY KEY,
    MFname VARCHAR(20),
    MLname VARCHAR(20),
    MLoc VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS Vehicle (
	VehReg VARCHAR(10) PRIMARY KEY,
    VehMake VARCHAR(10),
    VehModal VARCHAR(10),
    MemberID VARCHAR(10)
);

CREATE TABLE IF NOT EXISTS Engineer (
	EngID INT PRIMARY KEY,
    EFname VARCHAR(20),
    ELname VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS EngVan (
	VanReg VARCHAR(10) PRIMARY KEY,
    VanMake VARCHAR(10),
    VanModel VARCHAR(10),
    EngID INT,
    VMileage INT
);

CREATE TABLE IF NOT EXISTS Breakdown (
	BDID INT PRIMARY KEY,
    VehReg VARCHAR(10),
    VanReg VARCHAR(10),
    BDDATE DATE,
    BDTIME Time,
    BDLoc VARCHAR(20)
);

ALTER TABLE Vehicle ADD FOREIGN KEY (MemberID) REFERENCES Member(MemberID);
ALTER TABLE Breakdown ADD FOREIGN KEY (VehReg) REFERENCES Vehicle(VehReg);
ALTER TABLE Breakdown ADD FOREIGN KEY (VanReg) REFERENCES EngVan(VanReg);
ALTER TABLE EngVan ADD FOREIGN KEY (EngID) REFERENCES Engineer(EngID);

-- Task 2: Insert Data
-- Member table – 5 records
INSERT INTO Member (MemberID, MFname, MLname, MLoc) VALUES
('M1', 'John', 'Doe', 'London'),
('M2', 'Jane', 'Smith', 'Manchester'),
('M3', 'David', 'Williams', 'Birmingham'),
('M4', 'Sarah', 'Taylor', 'Glasgow'),
('M5', 'Michael', 'Johnson', 'London');

-- Vehicle table – 8 records
INSERT INTO Vehicle (VehReg, VehMake, VehModal, MemberID) VALUES
('ABC123', 'Ford', 'Focus', 'M1'),
('XYZ789', 'Toyota', 'Corolla', 'M2'),
('DEF456', 'Honda', 'Civic', 'M3'),
('GHI789', 'Volkswagen', 'Golf', 'M4'),
('JKL012', 'Nissan', 'Altima', 'M5'),
('MNO345', 'Chevrolet', 'Malibu', 'M1'),
('PQR678', 'Mazda', 'CX-5', 'M2'),
('STU901', 'Hyundai', 'Elantra', 'M3');

-- Engineer table – 3 records
INSERT INTO Engineer (EngID, EFname, ELname) VALUES
(1, 'Robert', 'Johnson'),
(2, 'Emily', 'Davis'),
(3, 'Thomas', 'Miller');

-- EngVan table – 5 records
INSERT INTO EngVan (VanReg, VanMake, VanModel, EngID, VMileage) VALUES
('VAN001', 'Volkswagen', 'Caddy ', 1, 80012),
('VAN002', 'Volkswagen', 'Caddy ', 2, 80153),
('VAN003', 'Volkswagen', 'Cargo', 3, 69846),
('VAN004', 'Volkswagen', 'Cargo', 1, 16345),
('VAN005', 'Volkswagen', 'Cargo', 2, 12005);

-- Breakdown table – 12 records
	-- Have 2 breakdowns on the same day
	-- Have 3 breakdowns in the same month
	-- Have at least 3 vehicles that have broken down more than once
INSERT INTO Breakdown (BDID, VehReg, VanReg, BDDATE, BDTIME, BDLoc) VALUES
(1, 'ABC123', 'VAN001', '2024-01-15', '08:30:00', 'London'),
(2, 'XYZ789', 'VAN002', '2024-03-20', '12:45:00', 'Manchester'),
(3, 'DEF456', 'VAN003', '2024-02-10', '16:15:00', 'Birmingham'),
(4, 'GHI789', 'VAN004', '2024-08-05', '09:00:00', 'Glasgow'),
(5, 'JKL012', 'VAN005', '2024-04-12', '14:30:00', 'Cardiff'),
(6, 'MNO345', 'VAN001', '2024-06-22', '10:20:00', 'London'),
(7, 'PQR678', 'VAN002', '2024-08-15', '11:45:00', 'Manchester'),
(8, 'STU901', 'VAN003', '2024-08-08', '13:00:00', 'Birmingham'),
(9, 'ABC123', 'VAN004', '2024-09-18', '09:30:00', 'Glasgow'),
(10, 'XYZ789', 'VAN005', '2024-10-25', '15:45:00', 'Cardiff'),
(11, 'DEF456', 'VAN001', '2024-11-05', '17:20:00', 'London'),
(12, 'GHI789', 'VAN002', '2024-11-05', '18:30:00', 'Manchester');

-- Task 3
-- Perform the following queries

-- The names of members who live in a location e.g. London.
SELECT * FROM Member WHERE Mloc='London';

-- All cars registered with the company e.g. all Nissan cars.
SELECT * FROM EngVan;

-- The number of engineers that work for the company.
SELECT COUNT(*) AS NumEngineers FROM Engineer;

-- The number of members registered.
SELECT COUNT(*) AS NumMembers FROM Member;

-- All the breakdown after a particular date
SELECT * FROM Breakdown WHERE BDDATE > '2024-05-01';

-- All the breakdown between 2 dates
SELECT * FROM Breakdown WHERE BDDATE BETWEEN '2024-06-01' AND '2024-08-31';

-- The number of time a particular vehicle has broken down
SELECT COUNT(*) AS NumBreakdowns FROM Breakdown WHERE VehReg = 'ABC123';

-- The number of vehicles broken down more than once
SELECT VehReg, COUNT(*) AS NumBreakdowns FROM Breakdown GROUP BY VehReg HAVING COUNT(*) > 1;

-- Task 4
-- Create the following table:
-- MshipType:
	-- MTID(PK), int
	-- MType, varchar(6)
	-- MPrice, decimal(4, 2)
	-- Enter the following data
		-- 1, Gold, 99.99
		-- 2, Silver, 59.99
		-- 3, Bronze, 39.99

CREATE TABLE IF NOT EXISTS MshipType (
	MTID INT PRIMARY KEY,
    MType VARCHAR(6),
    MPrice  DECIMAL(4, 2)
);

INSERT INTO MshipType (MTID, MType, MPrice) VALUES
(1, 'Gold', 99.99),
(2, 'Silver', 59.99),
(3, 'Bronze', 39.99);

-- Task 5 
-- Using the alter command add in the field “MTID” to the Vehicle table, set it to FK and allow null. Then using the update command assign a MTID to each vehicle.
ALTER TABLE Vehicle ADD COLUMN MTID INT NULL;
ALTER TABLE Vehicle ADD FOREIGN KEY (MTID) REFERENCES MshipType(MTID);

UPDATE Vehicle SET MTID = 1 WHERE VehReg IN ('ABC123', 'GHI789', 'MNO345');
UPDATE Vehicle SET MTID = 2 WHERE VehReg IN ('XYZ789', 'PQR678', 'STU901');
UPDATE Vehicle SET MTID = 3 WHERE VehReg IN ('DEF456', 'JKL012');

-- Task 6
-- Perform the following queries:
-- All the vehicles a member owns.
SELECT CONCAT(Member.MFname,' ',Member.MLname) AS MembersName, Vehicle.* FROM Member JOIN Vehicle ON Member.MemberID = Vehicle.MemberID;

	-- The number of vehicles for each member in descending order.
	SELECT Member.MemberID, CONCAT(Member.MFname,' ',Member.MLname) AS MembersName, COUNT(Vehicle.VehReg) AS NumVehicles
	FROM Member
	LEFT JOIN Vehicle ON Member.MemberID = Vehicle.MemberID
	GROUP BY Member.MemberID, MembersName
	ORDER BY NumVehicles DESC;
    
	-- The number of vans driven by a particular engineer.
    SELECT Engineer.EngID, CONCAT(Engineer.EFname,' ',Engineer.ELname) AS EngineerName, COUNT(EngVan.VanReg) AS NumVans
	FROM Engineer
	LEFT JOIN EngVan ON Engineer.EngID = EngVan.EngID
	GROUP BY Engineer.EngID, EngineerName;
    
	-- All vehicles that have broken down in a particular location along with member details.
    SELECT CONCAT(Member.MFname,' ',Member.MLname) AS MembersName, Breakdown.BDLoc AS Location, Vehicle.*
	FROM Member
	JOIN Vehicle ON Member.MemberID = Vehicle.MemberID
	JOIN Breakdown ON Vehicle.VehReg = Breakdown.VehReg
	WHERE Breakdown.BDLoc = 'London';
    
	-- A list of all vehicles that broke down along with the member details and the engineer who attended
    SELECT CONCAT(Member.MFname,' ',Member.MLname) AS MembersName, Vehicle.*, CONCAT(Engineer.EFname,' ',Engineer.ELname) AS EngineerName
	FROM Member
	JOIN Vehicle ON Member.MemberID = Vehicle.MemberID
	JOIN Breakdown ON Vehicle.VehReg = Breakdown.VehReg
	JOIN EngVan ON Breakdown.VanReg = EngVan.VanReg
	JOIN Engineer ON EngVan.EngID = Engineer.EngID;
    
	-- A list of all breakdown along with member and engineer details between two dates.
	SELECT CONCAT(Member.MFname,' ',Member.MLname) AS MembersName, Breakdown.*, CONCAT(Engineer.EFname,' ',Engineer.ELname) AS EngineerName
	FROM Member
	JOIN Vehicle ON Member.MemberID = Vehicle.MemberID
	JOIN Breakdown ON Vehicle.VehReg = Breakdown.VehReg
	JOIN EngVan ON Breakdown.VanReg = EngVan.VanReg
	JOIN Engineer ON EngVan.EngID = Engineer.EngID
	WHERE Breakdown.BDDATE BETWEEN '2024-06-01' AND '2024-08-31'; 
	-- A further 3 relational queries of your choice that are meaningful to the company.
    -- 1. Find the total number of breakdowns per location.
	SELECT BDLoc, COUNT(*) AS NumBreakdowns 	FROM Breakdown GROUP BY BDLoc;
    
    -- 2. List members who have Gold membership and their vehicles.
	SELECT CONCAT(Member.MFname,' ',Member.MLname) AS MembersName, 
				  Vehicle.VehReg, Vehicle.VehMake, Vehicle.VehModal, Vehicle.MemberID, MshipType.MTYPE
	FROM Member
	JOIN Vehicle ON Member.MemberID = Vehicle.MemberID
	JOIN MshipType ON MshipType.MTID = Vehicle.MTID
	WHERE MshipType.MType = 'Gold';
	
    -- 1. The average mileage of vans driven by each engineer.
	SELECT Engineer.EngID, CONCAT(Engineer.EFname,' ',Engineer.ELname) AS EngineerName, ROUND(AVG(EngVan.VMileage), 2) AS AvgMileage
	FROM Engineer
	JOIN EngVan ON Engineer.EngID = EngVan.EngID
	GROUP BY Engineer.EngID, EngineerName;

-- Task 7
-- Using W3Schools or any other resource research the following functions – Avg, Max, Min, Sum.  Explain with examples how each one is used. 

-- Avg short for Average is the sum of selected values from a table devided the number of values.
SELECT Engineer.EngID, CONCAT(Engineer.EFname,' ',Engineer.ELname) AS EngineerName, ROUND(AVG(EngVan.VMileage), 2) AS AvgMileage
FROM Engineer
JOIN EngVan ON Engineer.EngID = EngVan.EngID
GROUP BY Engineer.EngID, EngineerName;
-- the Average milage for each engineer is calculated from the total milage across all vans the engineers driven divided by the number of van driven.

-- Max short for Maximum returns the Maximum value in a column or the opposite of Min
SELECT MAX(VMileage) AS MaxMileage FROM EngVan;
-- the Max mileage is obtained from the EngVan table by looking up the colum VMileage in every row and only the highest value is returned.

-- Min short for Minimum returns the Minimu value is a column or the opposite of Max
SELECT MIN(VMileage) AS MinMileage FROM EngVan;
-- the Min mileage is obtained from the EngVan table by looking up the colum VMileage in every row and only the lowest value is returned.

-- Sum is the total added together from a column on selected rows
SELECT SUM(VMileage) AS TotalMileage FROM EngVan;
-- Here the total of all Vans mileage is added together to give a single value

-- Create a separate database with sample data to illustrate your examples. However please do not copy from the websites.
-- Example the database
CREATE DATABASE IF NOT EXISTS ExampleDB;

-- Use the database
USE ExampleDB;

-- Create the Sales table
CREATE TABLE IF NOT EXISTS Sales (
	SaleID INT PRIMARY KEY,
	ProductName VARCHAR(50),
	Quantity INT,
	Price DECIMAL(10, 2)
);

-- Insert dummy data into the Sales table
INSERT INTO Sales (SaleID, ProductName, Quantity, Price) VALUES
(1, 'ProductA', 100, 10.50),
(2, 'ProductB', 150, 15.75),
(3, 'ProductA', 80, 12.25),
(4, 'ProductC', 120, 8.99),
(5, 'ProductB', 90, 18.50);

-- Create the Expenses table
CREATE TABLE IF NOT EXISTS Expenses (
	ExpenseID INT PRIMARY KEY,
	Category VARCHAR(50),
	Amount DECIMAL(10, 2)
);

-- Insert dummy data into the Expenses table
INSERT INTO Expenses (ExpenseID, Category, Amount) VALUES
(1, 'Office Supplies', 200.00),
(2, 'Utilities', 350.50),
(3, 'Travel', 120.75),
(4, 'Marketing', 180.25),
(5, 'Rent', 750.00);

-- Avg
SELECT AVG(Price) AS AveragePrice FROM Sales;

-- Max
SELECT MAX(Quantity) AS MaxQuantity FROM Sales;

-- Min
SELECT MIN(Amount) AS MinAmount FROM Expenses WHERE Category = 'Marketing';

-- Sum
SELECT SUM(Amount) AS TotalExpenses FROM Expenses;

-- Task 8
-- For task 2 update member table with a new column called Policy: if member owns 1 viechicle add 'one car' if more then 1 vehicle add 'multi car'

USE assingment;
-- Add a new column to the Member table called Policy
ALTER TABLE Member ADD COLUMN Policy VARCHAR(10);
-- Update the 'Policy' column based on the number of vehicles each member owns
SET SQL_SAFE_UPDATES=0;

UPDATE Member
SET Policy = CASE
    WHEN (SELECT COUNT(*) FROM Vehicle WHERE Member.MemberID = Vehicle.MemberID) = 1 THEN 'one car'
    ELSE 'multi car'
END;

select * from member;

-- The number of times each car broken down
	-- If more than twice then next premium to be increased by 10%
	-- If twice then increase by 5%
	-- If once then no increase
	-- If not broken down then 10% discount
    
-- Add a column to the Vehicle table to store the updated membership cost
ALTER TABLE Vehicle ADD COLUMN UpdatedCost DECIMAL(5, 2);
-- Update the MembershipCost column based on the breakdown conditions
UPDATE Vehicle
JOIN Member ON Vehicle.MemberID = Member.MemberID
JOIN MshipType ON Vehicle.MTID = MshipType.MTID
SET Vehicle.UpdatedCost = CASE
    WHEN (SELECT COUNT(*) FROM Breakdown WHERE Breakdown.VehReg = Vehicle.VehReg) > 2 THEN MshipType.MPrice * 1.1
    WHEN (SELECT COUNT(*) FROM Breakdown WHERE Breakdown.VehReg = Vehicle.VehReg) = 2 THEN MshipType.MPrice * 1.05
    WHEN (SELECT COUNT(*) FROM Breakdown WHERE Breakdown.VehReg = Vehicle.VehReg) = 1 THEN MshipType.MPrice
    ELSE MshipType.MPrice * 0.9 -- 10% discount for no breakdowns
END;

-- Display the results
SELECT
	Vehicle.MemberID,
    CONCAT(Member.MFname,' ',Member.MLname) AS MembersName,
    Vehicle.VehReg,
    Vehicle.VehModal,
    MshipType.MType,
    MshipType.MPrice,
    COUNT(Breakdown.VehReg) AS Breakdowns,
    Vehicle.UpdatedCost
FROM Vehicle
LEFT JOIN Breakdown ON Vehicle.VehReg = Breakdown.VehReg
LEFT JOIN MshipType ON Vehicle.MTID = MshipType.MTID
LEFT JOIN Member ON Member.MemberID = Vehicle.MemberID
GROUP BY
    Vehicle.VehReg,
    Vehicle.VehModal,
    MshipType.MType,
    MshipType.MPrice,
    Vehicle.UpdatedCost;