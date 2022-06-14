/****** Script for SelectTopNRows command from SSMS  ******/
/*composite key problem*/
SELECT TOP (1000) [sid]
      ,[sname]
      ,[mobile]
  FROM [stud].[dbo].[stud1]

  create table studentattendance
(sid int,
attandancedate date,
status char(1),
primary key (sid,attandancedate),

constraint ddgdg foreign key(sid) references stud1 (sid));

select * from studentattendance