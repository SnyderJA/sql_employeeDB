
-- Average Salary
select AVG (salary)
	from salaries;
    
-- Max Salary
select max(salary)
	from salaries;
    
-- Min Salary
SELECT MIN(salary)
	from salaries;
    
-- Most Common Title by counting each title
    
SELECT DISTINCT
    title, COUNT(*)
FROM
    titles
GROUP BY TITLE
ORDER BY COUNT(*) DESC
LIMIT 1;
    
-- Dept with the most employees

Select distinct dept_name, 
	count(*)
	from departments D
    inner join dept_emp DE
    on D.dept_no = DE.dept_no
    group by dept_name
    order by Count(*) Desc;
    
-- Most Tenured Employee
SELECT * FROM employees 
order by hire_date asc;

-- HIghest average salary by dept
SELECT AVG (salary),dept_name
from salaries S
join employees E
on E.emp_no = S.emp_no
join dept_emp D
on D.emp_no = E.emp_no
join departments DE
on DE.dept_no = D.dept_no
group by DE.dept_name
order by AVG (salary) desc;


    
    

