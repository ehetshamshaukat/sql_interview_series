--Difficulty level: easy 
--Question: finding employees earning more than their managers 
--Solution:	  
SELECT 
  		emp.employee_id AS employee_id,
  		emp.name AS employee_name
FROM employee AS mgr
INNER JOIN employee AS emp
  	    ON mgr.employee_id  =  emp.manager_id
WHERE emp.salary  >  mgr.salary;

--Topic cover:
	--self-join with inner join technique 
	--filtering

--Links:	
  --datalemur: https://datalemur.com/questions/sql-well-paid-employees
  --Leetcode: https://leetcode.com/problems/employees-earning-more-than-their-managers

