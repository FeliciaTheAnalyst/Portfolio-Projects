
Select* from employee_demographics;   select* from employee_salary;

				-- 1- Staff by Occupation ----
Select occupation from employee_salary;

				-- 2 Employee Gender Breakdown --
select gender, count(*) AS Total 
from employee_demographics
group by gender;
               -- Having --
select first_name, last_name, Count(*) AS name_count
from employee_demographics
group by first_name, last_name
having first_name = 'Tom' and last_name = 'Haverford';

				-- 3 Highest Paid Employees --
select first_name, last_name, occupation, salary from employee_salary
where salary >='70000'
order by salary desc;

				-- 4 Employees above the age of 60 --
select first_name, last_name, age from employee_demographics
where age >= '60'
order by age desc;

				-- 5 Female Employees above the age of 40 --
select first_name, last_name, gender, age from employee_demographics
where gender = 'Female' and age >= 40
order by age desc;

				-- 6 DISTINCT --
select distinct gender from employee_demographics;

Select distinct first_name, last_name from employee_salary;

		---
select* FROM employee_demographics
where first_name = 'Leslie' and last_name = 'Knope';


		-- © 2025 Felicia Analyst. All rights reserved.
-- Trademark: Felicia Analyst™








