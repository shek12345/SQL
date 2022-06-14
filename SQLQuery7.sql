/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [sid]
      ,[sname]
      ,[mobile]
  FROM [stud].[dbo].[stud1]
  create table studentattendance
(sid int,
attandancedate date,
status char(1),
primary key (sid,attandancedate)
constraint ffhfg 
