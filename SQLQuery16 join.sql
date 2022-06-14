/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [employee_id]
      ,[first_name]
      ,[last_name]
      ,[email]
      ,[phone_number]
      ,[hire_date]
      ,[job_id]
      ,[salary]
      ,[manager_id]
      ,[department_id]
  FROM [hr].[dbo].[employees]

  select first_name,department_name from employees inner join departments on employees.department_id=departments.department_id;

  select first_name,job_title from employees inner join jobs on employees.job_id= jobs.job_id;

  select department_name,count(*) from employees inner join departments on employees.department_id= departments.department_id group by department_name;

    select salary,max(salary) from employees inner join departments on employees.department_id= departments.department_id group by salary;

	select product_name,brand_name from products inner join brand on products.brand_id= brand.brand_id;

	select product_name,brand_name,category_name from production.products inner join production.brands on production.products.brand_id=production.brands.brand_id inner join production.categories on production.categories.category_id= production.products.category_id;
