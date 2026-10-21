-- joins 

select *
from employee_demographics;

select *
from employee_salary;

-- inner joins & on 

select *
from employee_demographics
inner join employee_salary
on employee_demographics.employee_id = employee_salary.employee_id
;

select *
from employee_demographics as dem
inner join employee_salary as sal
on dem.employee_id = sal.employee_id
;

select dem. employee_id , age, occupation -- dem isliye likha hai ki db ko pta chle ki hum kis table ka employee id or detail puchh rhe hai .
from employee_demographics as dem
inner join employee_salary as sal
on dem.employee_id = sal.employee_id
;

-- outer joins 

select dem.employee_id, age, occupation 
from employee_demographics as dem
inner join employee_salary as sal
on dem.employee_id = sal.employee_id
;
  
  -- so you'll notice we have everything from the left table or the salary table. Even though there is no match to ron swanson. 
-- Since there is not match on the right table it's just all Nulls

-- if we just switch this to a right join it basically just looks like an inner join
-- that's because we are taking everything from the demographics table and only matches from the left or salary table. Since they have all the matches
-- it looks kind of like an inner join
SELECT *
FROM employee_salary sal
RIGHT JOIN employee_demographics dem
	ON dem.employee_id = sal.employee_id;



-- Self Join

-- a self join is where you tie a table to itself

SELECT *
FROM employee_salary;

-- what we could do is a secret santa so the person with the higher ID is the person's secret santa


SELECT *
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id = emp2.employee_id
    ;

-- now let's change it to give them their secret santa
SELECT *
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id + 1  = emp2.employee_id
    ;



SELECT emp1.employee_id as emp_santa, emp1.first_name as santa_first_name, emp1.last_name as santa_last_name, emp2.employee_id, emp2.first_name, emp2.last_name
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id + 1  = emp2.employee_id
    ;

-- So leslie is Ron's secret santa and so on -- Mark Brandanowitz didn't get a secret santa, but he doesn't deserve one because he broke Ann's heart so it's all good






-- Joining multiple tables

-- now we have on other table we can join - let's take a look at it
SELECT * 
FROM parks_and_recreation.parks_departments;


SELECT *
FROM employee_demographics dem
INNER JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
JOIN parks_departments dept
	ON dept.department_id = sal.dept_id;

-- now notice when we did that, since it's an inner join it got rid of andy because he wasn't a part of any department

-- if we do a left join we would still include him because we are taking everything from the left table which is the salary table in this instance
SELECT *
FROM employee_demographics dem
INNER JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
LEFT JOIN parks_departments dept
	ON dept.department_id = sal.dept_id;





