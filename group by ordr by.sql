--- group by 

select *
from employee_demographics;


select gender 
from employee_demographics
group by gender
;


select gender ,avg(age)
from employee_demographics
group by gender
;

select occupation
from employee_salary
group by occupation
;

select occupation,salary
from employee_salary
group by occupation , salary
;

select gender ,avg(age) , max(age),min(age), count(age)
from employee_demographics
group by gender
;

-- order by
 
select *
from employee_demographics
order by first_name desc;

select *
from employee_demographics
order by first_name asc;

  ;

select *
from employee_demographics
order by  gender asc ;

select *
from employee_demographics
order by  gender desc ;

select *
from employee_demographics
order by  gender,age asc;  

select *
from  employee_demographics
order by birth_date;

#--starting having clause practice using copilot--

SELECT salary, AVG(salary) AS avg_salary
FROM Employee_salary
GROUP BY salary
HAVING AVG(salary) > 50000;

SELECT first_name, salary
FROM Employee_salary
ORDER BY salary DESC
LIMIT 5; -- limit is using for find salary in order -- 

SELECT salary, AVG(salary) AS avg_salary
FROM employee_salary
WHERE salary > 40000    
GROUP BY salary
HAVING AVG(salary) > 55000 -- Group-level filter
ORDER BY avg_salary DESC;

















