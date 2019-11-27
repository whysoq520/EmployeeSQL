--1.List the following details of each employee: employee number, last name, first name, gender, and salary.

select employees.emp_no, employees.last_name,employees.first_name,employees.gender, salaries.salary
from employees
full outer join salaries
on employees.emp_no = salaries.emp_no;

--2.List employees who were hired in 1986.
select * from employees 
where hire_date >= '1986/01/01' and hire_date <= '1986/12/31';


--3.List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
select dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.first_name, employees.last_name, dept_manager.from_date, dept_manager.to_date
from dept_manager
join employees on dept_manager.emp_no = employees.emp_no
join departments on dept_manager.dept_no = departments.dept_no;

--4.List the department of each employee with the following information: employee number, last name, first name, and department name.
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
join dept_emp on employees.emp_no = dept_emp.emp_no
join departments on dept_emp.dept_no = departments.dept_no;

--5.List all employees whose first name is "Hercules" and last names begin with "B."
select * from employees
where first_name = 'Hercules' and last_name like 'B%';

--6.List all employees in the Sales department, including their employee number, last name, first name, and department name.
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
join dept_emp on employees.emp_no = dept_emp.emp_no
join departments on dept_emp.dept_no = departments.dept_no
where dept_name ='Sales';

--7.List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
join dept_emp on employees.emp_no = dept_emp.emp_no
join departments on dept_emp.dept_no = departments.dept_no
where dept_name ='Sales' or dept_name = 'Development';


--8.In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(last_name) as "Last Name count" from employees
group by last_name
order by "Last Name count"  desc;

--bonus (please see bonus.py file)

--Epilogue
select first_name, last_name, emp_no from employees
where emp_no = 499942;