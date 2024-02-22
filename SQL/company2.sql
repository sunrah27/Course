create database if not exists company;
use company;

CREATE TABLE IF NOT EXISTS EMPLOYEE (
    Fname VARCHAR(20) NOT NULL,
    Minit VARCHAR(1) NOT NULL,
    Lname VARCHAR(20) NOT NULL,
    SSN INT PRIMARY KEY UNIQUE,
    Bdate DATE NOT NULL,
    Address VARCHAR(255) NOT NULL,
    Sex VARCHAR(1) NOT NULL CHECK (Sex IN ('M', 'F')),
    Salary INT NOT NULL,
    SuperSSN INT,
    Dno INT,
    FOREIGN KEY (SuperSSN) REFERENCES EMPLOYEE(SSN)
);

CREATE TABLE IF NOT EXISTS DEPARTMENT (
    Dname VARCHAR(20) NOT NULL UNIQUE,
    Dnumber INT PRIMARY KEY NOT NULL,
    Mgr_ssn INT(9),
    Mgr_start_date DATE,
    FOREIGN KEY (Mgr_ssn) REFERENCES EMPLOYEE(SSN)
);

ALTER TABLE EMPLOYEE ADD FOREIGN KEY (Dno) REFERENCES DEPARTMENT(Dnumber);

CREATE TABLE IF NOT EXISTS DEPT_LOCATIONS (
    Dnumber INT NOT NULL,
    DLocation VARCHAR(255) NOT NULL,
    FOREIGN KEY (Dnumber) REFERENCES DEPARTMENT(Dnumber),
    PRIMARY KEY (Dnumber, DLocation)
);

CREATE TABLE IF NOT EXISTS PROJECT (
    Pname VARCHAR(20) NOT NULL,
    Pnumber INT PRIMARY KEY NOT NULL,
    Plocation VARCHAR(20) NOT NULL,
    Dnum INT NOT NULL,
    FOREIGN KEY (Dnum) REFERENCES DEPARTMENT(Dnumber)
);

CREATE TABLE WORKS_ON (
    Essn INT NOT NULL,
    Pno INT NOT NULL,
    Hours INT NOT NULL,
    FOREIGN KEY (Essn) REFERENCES EMPLOYEE(SSN),
    FOREIGN KEY (Pno) REFERENCES PROJECT(Pnumber),
    PRIMARY KEY (Essn, Pno)
);

CREATE TABLE DEPENDENT (
    Essn INT NOT NULL,
    Dependent_name VARCHAR(20) NOT NULL,
    Sex VARCHAR(1) NOT NULL CHECK (Sex IN ('M', 'F')),
    Bdate DATE NOT NULL,
    Relationship VARCHAR(20) NOT NULL,
    FOREIGN KEY (Essn) REFERENCES EMPLOYEE(SSN),
    PRIMARY KEY (Essn, Dependent_name)
);
