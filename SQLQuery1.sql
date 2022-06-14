create table bikemodel
(modelid int primary key,
modelname varchar(30) not null,
cost int );
insert into bikemodel values(3,' bullet',111333);


select * from bikemodel;


create table bikecustomer1
(customerid int primary key,
firstname varchar(30),
lastname varchar(30),
mobileno bigint not null,
gender varchar(10) not null,
customeremail varchar(50));
insert into bikecustomer1 values (125,'akash','patil',9304261564,'male','akashp123@gmail.com')
select * from bikecustomer1;


create table bikepurchase2
(purchaseid int primary key,
customerid int,
modelid int,
paymentid int not null,
purchasedate date,
bookingamount  int ,
ratingid int not null ,
constraint fkl foreign key (customerid) references bikecustomer1(customerid),
constraint fkp foreign key(modelid) references bikemodel(modelid));
insert into bikepurchase2 values(5,123,1,44,'2022-05-16',5454544,2);
select * from bikepurchase2;

 
 create table Paymentmode1
 (Paymentid int ,
 paymenttype varchar(20));
 
 insert into Paymentmode1 values(14,'online');
 select * from paymentmode1;

 create table feedbackrating
 (Ratingid int primary key,
 ratingname varchar(20));
  insert into feedbackrating values(6,'poor'),(7,'avarage'),(8,'good')
   select * from feedbackrating;

   /* primary key and foreign key problem merge two table with the help of constraint keyword*/