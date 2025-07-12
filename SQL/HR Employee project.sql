Select* from employee_demographics;   select* from employee_salary;

-- =====================================                          
-- QUESTION 1:  STAFF BY OCCUPATION                                          
-- =====================================  
		Select occupation from employee_salary; -- ✔ 
-- =====================================
-- QUESTION 2: EMPLOYEE GENDER BREAKDOWN     	
-- ===================================== 	
		select gender, count(*) AS Total
		From employee_demographics
       group by gender;										
-- =====================================
-- QUESTION 3: -- Having, Group by   	
-- ===================================== 	               
	select first_name, last_name, Count(*) AS name_count
	from employee_demographics
	group by first_name, last_name
	having first_name = 'Tom' and last_name = 'Haverford';
-- =====================================
-- QUESTION 4: -- Where, Having
-- ===================================== 	               
	select* from employee_salary
	where occupation = 'Manager';
    
    select* from employee_salary
	where occupation >= 'Manager'
	having salary >= '70000';
    
    Select* from employee_salary
	where occupation = 'office Manager';
-- =====================================
-- QUESTION 5: Highest Paid Employees --
-- ===================================== 	       
	select first_name, last_name, occupation, salary from employee_salary
	where salary >='70000'
	order by salary desc;
-- =====================================
-- QUESTION 6: Employees above the age of 60 -- --
-- ===================================== 
	select first_name, last_name, age from employee_demographics
	where age >= '60'
	order by age desc;
-- ====================================================
-- QUESTION 6: Female Employees above the age of 40 --
-- ===================================== ==============			
	select first_name, last_name, gender, age from employee_demographics
	where gender = 'Female' and age >= 40
	order by age desc;
-- ====================================================
-- QUESTION 7: DISTINCT --
-- ===================================== ==============	
	select distinct gender from employee_demographics;
	Select distinct first_name, last_name from employee_salary;



-- Crafted with data clarity by Felicia Mabena™
