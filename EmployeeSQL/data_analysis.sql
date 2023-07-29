--question1
select e.emp_no,e.first_name,e.last_name,s.salary
from employees as e
join salaries as s on e.emp_no = s.emp_no
order by e.emp_no asc;
--question2
select first_name,last_name,hire_date
from employees
where hire_date like '%1986';
--question3
select dm.emp_no,dm.dep_no,d.dept_name,e.first_name,e.last_name
from dept_manager as dm join departments as d on dm.dep_no=d.dept_no
join employees as e on e.emp_no = dm.emp_no;
--question4
select de.emp_no,de.dep_no,d.dept_name,e.first_name,e.last_name
from dept_emp as de join departments as d on de.dep_no=d.dept_no
join employees as e on e.emp_no = de.emp_no;
--question5
select first_name,last_name,sex
from employees
where first_name='Hercules' and last_name like 'B%';
--question6
select de.emp_no,e.first_name,e.last_name
from dept_emp as de 
join employees as e on e.emp_no = de.emp_no
where de.dep_no = 'd007'
order by de.emp_no asc;
--question7
select de.emp_no,d.dept_name,e.first_name,e.last_name
from dept_emp as de join departments as d on de.dep_no=d.dept_no
join employees as e on e.emp_no = de.emp_no
where de.dep_no = 'd007' or de.dep_no = 'd005'
order by de.emp_no asc;
--question8
select last_name, count(emp_no) as "count_of_last_name"
from employees
group by last_name
order by count_of_last_name asc;
