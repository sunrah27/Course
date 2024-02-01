create database if not exists sqlday6;

use sqlday6;

create table if not exists Instructor (
	instructorId int not null primary key,
    instructorName varchar(10)
);

create table if not exists Trainer (
	trainerId int primary key auto_increment,
    trainerName varchar(20) not null,
    trainerAge int not null
);

INSERT INTO Instructor (instructorID, instructorName) Values 
(2, 'Mark'),
(1, 'Abdul'),
(3, 'Zak'),
(4, 'Sandra');

insert into Trainer (trainerId, trainerName, trainerAge) values
(1, 'Abdul', 32),
(2, 'Zak', 26),
(3, 'Waqas', 36);

select trainerId, trainername from Trainer;

select * from Instructor inner join Trainer on InstructorName=trainerName;
select * from Instructor left join Trainer on InstructorName=trainerName;
select * from Instructor right join Trainer on InstructorName=trainerName;