create database test5;
use test5;

CREATE TABLE Article (
	ID INT PRIMARY KEY NOT NULL,
    Title VARCHAR(50) NOT NULL,
    Text VARCHAR(255) NOT NULL,
    PublishStatus VARCHAR(20) NOT NULL CHECK (PublishStatus IN ('Published', 'Not Published')),
    Topic VARCHAR(50) NOT NULL,
    Author VARCHAR(20) NOT NULL,
    PublicationDate DATE NOT NULL
);

CREATE TABLE Topic (
	Name VARCHAR(50) PRIMARY KEY NOT NULL,
    Description VARCHAR(255)
);

CREATE TABLE Author (
	Username VARCHAR(20) PRIMARY KEY NOT NULL,
    DisplayName VARCHAR(50) NOT NULL
);

CREATE TABLE Course (
	ShortName VARCHAR(20) PRIMARY KEY NOT NULL,
    FullName VARCHAR(255) NOT NULL
);

CREATE TABLE Relevant_For (
	ArticleID INT NOT NULL,
    Course VARCHAR(20) NOT NULL,
    FOREIGN KEY (ArticleID) REFERENCES Article(ID),
    FOREIGN KEY (Course) REFERENCES Course(ShortName),
    PRIMARY KEY (ArticleID, Course)
);

ALTER TABLE Article ADD FOREIGN KEY (Topic) REFERENCES Topic(Name);
ALTER TABLE Article ADD FOREIGN KEY (Author) REFERENCES Author(Username);