CREATE DATABASE Day3;
USE Day3;

CREATE TABLE Country (
	Code VARCHAR(5) PRIMARY KEY,
	Name VARCHAR(20) NOT NULL,
	Continent VARCHAR(20) NOT NULL,
	Population INT NOT NULL CHECK (Population > 0),
    Capital INT NOT NULL
);

CREATE TABLE City (
	ID INT PRIMARY KEY NOT NULL,
    Name VARCHAR(20) NOT NULL,
    CountryCode VARCHAR(5) NOT NULL,
    Population INT NOT NULL CHECK (Population > 0),
    FOREIGN KEY (CountryCode) REFERENCES Country(Code)
);

ALTER TABLE Country ADD FOREIGN KEY (Capital) References City(ID);

CREATE TABLE CountryLanguage (
    CountryCode VARCHAR(5) NOT NULL,
    Language VARCHAR(20) NOT NULL,
    IsOfficial CHAR(3) CHECK (IsOfficial IN ('yes', 'no')),
    Percentage DECIMAL(5,2) NOT NULL CHECK (Percentage > 0),
    FOREIGN KEY (CountryCode) REFERENCES Country(Code),
    PRIMARY KEY (CountryCode, Language)
);