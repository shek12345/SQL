create table doctor
(Did int  primary key,
dname varchar(30),
daddress varchar(30),
qualification varchar(20),
noofpatient_handled int);

insert into doctor values(1,'shekhar','latur','md',100),(2,'akash','mumbai','bms',25),(3,'sumit','pune','mbbs',454);
select * from doctor;
select * from doctor where qualification in('md','mbbs');
select * from doctor where qualification in ('mbbs');
select * from doctor where  noofpatient_handled>50;
select * from doctor where daddress ='latur' and noofpatient_handled>50;


create table patientmaster
(pcode int primary key,
pname varchar(20),
paddress varchar(20),
age int ,
gender varchar(30),
bloodgroup varchar(30));

insert into patientmaster values(11,'amol','latur',34,'male','o positive'),(12,'amit','latur',32,'male','a positive'),(16,'amay','latur',36,'male','a positive');
select * from patientmaster;
select * from patientmaster where age between 30 and 34 having bloodgroup ='a positive';
select bloodgroup, count (bloodgroup) as bloodgroup from patientmaster group by bloodgroup ;
select  paddress , count ( paddress)  from patientmaster group by paddress;
select * from patientmaster where age<34 and bloodgroup='a positive';


create table admittedpatient
(pcode int ,
entry_date date,
discharge_date date,
wardno int  primary key,
diesease varchar(30),
did int ,
constraint fklll foreign key (pcode) references patientmaster(pcode),
constraint fkluu foreign key (did) references doctor(did));
insert into admittedpatient values(11,'2019-05-13','2019-05-17',111,'cancer',1),(12,'2019-05-13','2019-06-21',121,'cancer',2),(16,'2019-05-13','2019-09-23',131,'cancer',3);

select diesease from admittedpatient  join bill on admittedpatient.pcode=bill.pcode where bill_amount>40000;
`   
   create table  bill1
   (pcode  int,
   bill_amount int,
   constraint dfdfr foreign key(pcode) references patientmaster(pcode));
   insert into bill1 values (11,344444),(16,44444),(12,46446);
   select * from bill1;

   alter table patientmaster drop pcode;
   select max (bill_amount)as bill from bill1;
   select min (bill_amount)as bill from bill1;






