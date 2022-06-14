create  table  batch1 
(batchid int primary key,
batchname varchar(20));
insert into batch1 values(1,'Apple'),(2,'Microsoft')
select * from batch1;
create table student1
(sid int primary key,
sname varchar(32),
percentage int,
batchid int,
constraint dkddt foreign key(batchid) references batch1(batchid)

on delete set null on update cascade);
insert into student1 values(21,'shekhar',90,1),(31,'akash',92,2);
select * from student1;
delete from batch1 where batchid=1;
update batch1 set batchid=231 where batchid=2;


/* delete and update data method*/
update booking detail set  discount=(discount*0.1)where app id =(app id from booking app

delete from booking_details where hotel_id in (select hotel_id from hotel where hotel_name='Taj' and city='Mumbai';