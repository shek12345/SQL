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
  select e.first_name,m.first_name from employees e inner join employees m on e.manager_id=m.employee_id;