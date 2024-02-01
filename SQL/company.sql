use company;

-- select specific columns from the employee table
SELECT 
	fname,
    lname,
    salary,
    ssn
from 
	employee;

-- select all columns from employee table
select * from employee;
select * from company.employee;

select * from employee where fname-'jennifer';
select fname, lname, salary from employee where salary>30000;

-- limit
-- limit the number of recored to be displayed
select * from employee limit 3;
-- offset
select * from employee limit 3 offset 4;

-- display all male employees who receive more then 35000 salary
select * from employee where sex='m' and salary>35000;

/*
-- By default the data will be sorted by primary key column.
ASC -> Ascending Order (A-Z) or (lowest value to highest value)
DESC -> Descending Order (Z-A) or (highest value to lowest value)
ORTDER By --- used to sort data
*/

SELECT * FROM employee ORDER BY fname ASC, lname ASC;
select * from employee order by fname asc, lname desc;

select * from employee order by salary desc;

-- select an employee who is receiving highest salary
select * from employee where salary>0 and salary is not null order by salary desc limit 1;
-- select an employee who is receiving lowest salary
select * from employee where salary>0  order by salary asc limit 1;
-- select top five employess who are receiving highest salary
select * from employee where salary>0 order by salary desc limit 5;
-- select employee who is receiving second lowest salary;
select * from employee where salary=(select distinct salary from employee where salary>0 and salary is not null order by salary asc limit 1 offset 1);
-- select female employee who is receiving highest salary
select * from employee where salary>0 and salary is not null and sex='f' order by salary desc limit 1;
-- select male employee who is receiving lowest salary   
select * from employee where salary>0 and salary is not null and sex='m' order by salary asc limit 1;

-- MySQL Alias
select fname as 'First Name', lname as 'Last Name' from employee;
select concat(fname, ' ' , lname) as 'Full Name',salary, salary*1.1 as 'Salary 110%' from employee where salary>0 and salary is not null;

-- Aggregate functions
-- AVG(), MAX(), MIN(), SUM(), COUNT()
select sum(salary) from employee;
select count(*) as 'Total Employees' from employee;
select count(salary) as 'Total Employees' from employee;

    -- display the lowest and highest salary in female employees
select * from employee where sex='f' and salary=(select min(salary) from employee where sex='f') or salary=(select max(salary) from employee where sex='f') order by salary desc;
    -- display total, average, highest and lowest salary for all employees
select sum(salary) as 'Total Salary', avg(salary) as 'Average Salary', max(salary) as 'Max Salary', min(salary) as 'Min Salary' from employee;

select * from employee where sex='f' and((select min(salary) as 'F min salary' from employee) OR (select max(salary) as 'F max salary' from employee));

select * from employee where company.salary=(select min(salary) from company.employee) or salary=(select max(salary) from company.employee) order by salary desc;

-- Display all employeess who are not borned on/between 1960-01-01 and 1980-01-01;
select * from employee where bdate<='1960-01-01' or bdate>='1980-01-01';
select * from employee where bdate not between '1960-01-01' and '1980-01-01';
-- Display all employeess who are borned on/between 1960-01-01 and 1980-01-01;
select * from employee where bdate>='1960-01-01' and bdate<='1980-01-01';
select * from employee where bdate between '1960-01-01' and '1980-01-01';

select <column list separated by comma> from <database> <conditions like where and group by> ending with <order by>

select max(salary), sex from employee group by sex;

-- like keyword
-- % represents zero, one, or multiple characters
-- _ represents one, single character

where customerName like 'a%' 				finds any values that start with 'a'
where customerName like '%a'					finds any values that end with 'a'
where customerName lilke '%or%'			finds any values that have 'or' in any position
where customerName like '_r%'				finds any values that have 'r' in the second position
where customerName like 'a_%'				finds any values that start with 'a' and are at lest 2 characters in length
where customerName like 'a%0'				finds any values that starts with 'a' and ends with 'o'

-- 1. Select employees who's first Name can be anything but should have 'oh' after first character.
select * from employee where fname like '_oh%';
-- 2. Select record of Employee who is born in 1965.
select * from employee where year(bdate)='1965' limit 1;
-- 3. Display all employees who's first Name starts with A and ends with d.
select * from employee where fname like 'a%d';
-- 4. Display all employees who's first Name start with J and does not ends with n.
select * from employee where fname like 'j%' and fname not like '%n';
-- 5. Display all employees who's first Name start with J and should be at least 5 characters in length.
select * from employee where fname like 'j____%';
-- 6. Display all employees who's first Name start with j or A.
select * from employee where fname like 'a%' or fname like 'j%';
select * from employee where fname like '[aj]%';

select * from employee where fname in ('john', 'jennifer', 'james', 'ahmed');

-- Display all unique salaries and number of employees receive a specific salary if more than two employees receive that salary.
select salary, count(*) from employee;

SELECT SALARY, COUNT(*) FROM Employee WHERE SALARY IS NOT NULL GROUP BY SALARY HAVING COUNT(*)>2;

SELECT FNAME, LNAME, SALARY,
	CASE
		WHEN SALARY<40000 THEN
			CASE
				WHEN SALARY=30000 THEN SALARY+3000
                WHEN SALARY=25000 THEN SALARY+2500
				ELSE 1000
			END
        WHEN SALARY>=40000 THEN CONCAT('£',SALARY+4000,' per year')
	END AS 'Salary with Bonus'
FROM Employee;

use company;

/* Write a case expression that returns employee's full name salary with bonus as below:
	if salary is 1000 - 19000 increase salary by 1000
	if salary is 20000 - 29000 increase 2000
	if salary is 30000 - 39000 increase 3000
	if salary is 40000 - 49000 increase 4000
	if salary is 50000 - 59000 increase 5000
	if a person receive no salary then should display 'Not eligible for bonus' */
    
select concat(fname,' ', lname) as FullName, Salary, 
	case
		when salary >= 1000 and salary <= 19000 then Salary+1000
        when salary >= 20000 and salary <= 29000 then Salary+2000
        when salary >= 30000 and salary <= 39000 then Salary+3000
        when salary >= 40000 and salary <= 49000 then Salary+4000
        when salary >= 50000 and salary <= 59000 then Salary+5000
        else 'No bonus'
	end as 'salary with bonus'
from employee order by FullName asc;

select  CONCAT(fname, ' ', lname) as FullName, dname as Department, Salary as CurentrSalary,
	case 
		when (select dname from Department where dnumber = Employee.dno) = 'Headquarters' then Salary+5000
		when (select dname from Department where dnumber = Employee.dno) = 'Administration' then Salary+3000
		when (select dname from Department where dnumber = Employee.dno) = 'Research' then Salary+2000 
		else ' No bonus'
	end as UpdatedSalary
from Employee
left join Department on Employee.dno = Department.dnumber order by FullName asc;

delimiter $$
create procedure employeeRecord(in firstName varchar(15), in lastName varchar(15))
	begin
		select * from Employee where firstName=fname and lastName=lname;
	end$$
    
call employeeRecord('Jennifer', 'Wallace');

DELIMITER $$
CREATE PROCEDURE salaryWithBonus()
BEGIN
	SELECT CONCAT(fname, ' ', lname) AS FullName,
		dname AS Department,
		Salary AS CurrentSalary,
			CASE 
					WHEN (SELECT dname FROM Department WHERE dnumber = Employee.dno) = 'Headquarters' THEN Salary + 5000
					WHEN (SELECT dname FROM Department WHERE dnumber = Employee.dno) = 'Administration' THEN Salary + 3000
					WHEN (SELECT dname FROM Department WHERE dnumber = Employee.dno) = 'Research' THEN Salary + 2000 
					ELSE 'No bonus'
			END AS UpdatedSalary
	FROM Employee
	LEFT JOIN Department ON Employee.dno = Department.dnumber
	ORDER BY FullName ASC;
END$$
DELIMITER ;

call salaryWithBonus;