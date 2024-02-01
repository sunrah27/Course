CREATE DATABASE Test1;
USE Test1;

CREATE TABLE Trainer (
    id INT PRIMARY KEY AUTO_INCREMENT,
    subjectName VARCHAR(10) CHECK (subjectName IN ('HTML', 'CSS', 'DATABASE'))
);

DESCRIBE Trainer;

create table Department (
	id int primary key auto_increment,
    department varchar(10) enum('software','it','hr')
);
create table employee (
	id int primary key auto_increment,
    employesName varchar(20) NOT NULL,
    
)

SELECT * FROM Trainer;
DELETE from Trainer;
DROP TABLE Trainer;
SHOW DATABASES;