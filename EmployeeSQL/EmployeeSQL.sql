SELECT  e.emp_no,
		e.last_name,
		e.first_name,
		e.sex,
		s.salary
from employees e
inner join salaries s on e.emp_no = s.emp_no;

SELECT first_name,
		last_name,
		hire_date
from employees
where hire_date BETWEEN '1986-01-01' AND '1986-12-31';

SELECT 
	dm.dept_no, 
    d.dept_name,
    e.emp_no, 
    e.first_name, 
    e.last_name
FROM employees e
JOIN dept_manager dm ON e.emp_no = dm.emp_no
JOIN departments d ON dm.dept_no = d.dept_no;

SELECT de.dept_no, 
    e.emp_no,
	e.last_name, 
    e.first_name, 
    d.dept_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE e.emp_no NOT IN (SELECT emp_no FROM dept_manager);

SELECT first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%';

SELECT e.emp_no, e.last_name, e.first_name
from employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
join dept_emp de on e.emp_no = de.emp_no
join departments d on de.dept_no = d.dept_no
where d.dept_name in ('Sales' , 'Development');


SELECT last_name, 
    COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC, last_name ASC;