
select * from  employees where department_id=9 and salary>=17000;                    /*and oprator*/
select * from  employees where department_id=3 or salary>=15000;                    /*or oprator*/

select * from employees where department_id =1 or department_id=3 or department_id=5;  /*or oprator*/
select * from employees where department_id  in(1,3,5);                                 /*or oprator*/
select * from employees where department_id not in(1,3,5);
select * from employees where salary >=5000 and salary<=10000;          /*between value show*/
select * from employees where salary between 5000 and 10000;          /*between value show*/
select * from employees where phone_number is null;                   /*null value show*/
select * from employees where phone_number is  not null;               /* not null value show*/  

select * from employees where first_name='Steven';
select * from employees where first_name like'__e___';
select * from employees where first_name like '%a';
select * from employees where first_name like'%ev%';
select distinct department_id from employees;                       /*duplicate are not given when using distinct keyword*/
select distinct department_id ,salary from employees;              /*combination of two table*/
select * from employees order by salary;                          /*by default sorted ascending order*/
select * from employees order by salary desc;                    /* descending order*/
select * from employees order by salary desc, first_name;

select top(1) * from employees order by salary desc;                  /*max salary*/

/*aggrigate function*/

select max (salary) from employees;
select max (salary) from employees where department_id=3;
select max (salary) as max from employees where department_id=3;     /* coloumn name change or diffrn*/

select min (salary) from employees;
select avg(salary) from employees;
select sum (salary) from employees;
select count (phone_number)as count from employees;
select  department_id,count (department_id) from employees group by department_id;
select  department_id,count (department_id) from employees group by department_id having count(department_id)>5;
select  department_id,count (department_id) from employees group by department_id having max(salary)>5;/* having clause*/
select  department_id,count (department_id) ,max(salary)from employees group by department_id having max(salary)>5;/* having clause*/

/* sub query*/

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++






















