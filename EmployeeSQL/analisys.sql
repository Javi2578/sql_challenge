SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e
inner join salaries as s on e.emp_no = s.emp_no;

SELECT e.first_name, e.last_name, e.hire_date
FROM employees as e
WHERE e.hire_date between '1986-01-01' and '1986-12-31'

-- describe the relationship between the tables
-- department_no is in both tables 
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
from dept_manager as dm
inner join departments as d on dm.dept_no = d.dept_no
inner join employees as e on dm.emp_no = e.emp_no

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name (2 points)
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp as de
inner join departments as d on de.dept_no = d.dept_no  
inner join employees as e on de.emp_no = e.emp_no

SELECT e.first_name, e.last_name, e.sex
from employees as e
where e.first_name = 'Hercules' and e.last_name like 'B%'

SELECT de.emp_no, e.last_name, e.first_name
from dept_emp as de
inner join departments as d on de.dept_no = d.dept_no  
inner join employees as e on de.emp_no = e.emp_no
WHERE d.dept_name = 'Sales'

SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp as de
inner join departments as d on de.dept_no = d.dept_no  
inner join employees as e on de.emp_no = e.emp_no
WHERE d.dept_name in ('Sales','Development' )

SELECT last_name, count (last_name)
from employees
group by last_name
order by count (last_name) desc