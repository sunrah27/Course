CREATE DATABASE myDatabase;
SHOW databases;
use mydatabase;

show databases;
use mydatabase;
CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fullname VARCHAR(50) NOT NULL,
    class VARCHAR(20) NOT NULL,
    mark INT,
    gender VARCHAR(10)
);

show tables;
INSERT INTO students (fullname, class, mark, gender)
values('John Deo','Four',75,'female'),
('Max Ruin','Three',85,'male'),
('Arnold','Three',55,'male'),
('Krish Star','Four',60,'female'),
('John Mike','Four',60,'female'),
('Alex John','Four',55,'male'),
('John Rob','Five',78,'male'),
('Asruid','Five',85,'male'), 
('Tes Qry','Six',78,'male'),
('Big John','Four',55,'female');

select * from students;