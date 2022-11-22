select full_name from employees where salary = (select max(salary) from employees);
select full_name from employees order by full_name;
select grade, avg(date_part('year',age(current_date, job_start))) as "стаж лет" from employees group by grade;

select e.full_name, d.name from employees e join departments d on d.id = e.department_id; 

select e.full_name, d.name, e.salary from employees e 
join departments d on d.id = e.department_id
where salary = (select max(salary) from employees);
