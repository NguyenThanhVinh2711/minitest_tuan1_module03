create table address(
id int primary key auto_increment,
address varchar(45)
);
create table classes (
id int primary key auto_increment,
name varchar(45),
language varchar(45),
description varchar(45)
);
create table student(
id int primary key auto_increment,
fullname varchar (45),
address_id int ,
age int ,
phone int unique,
classes_id int,
foreign key (address_id) references address(id),
foreign key (classes_id) references classes(id)
);
create table course(
id int primary key auto_increment,
name varchar(50),
description varchar(50)
);
create table points(
id int primary key auto_increment,
course_id int,
student_id int,
point int,
foreign key (student_id) references student(id),
foreign key (course_id) references course(id)
);

insert into address(address)
value ('hn'),('qn'),('hcm'),('bn'),('db');

insert into classes (name,language, description)
value ('c0622i1','java',null),
('c0622i2','java',null),
('c0622i3','js',null),
('c0622i4','c++',null),
('c0622i5','pytho',null);

insert into student(fullname,address_id,age,phone,classes_id)
value ('nguyen vinh',1,18,123451,1),
('nguyen trinh',1,15,123452,2),
('nguyen hoang',2,20,123453,3),
('nguyen anh',3,16,123454,4),
('le tuan',4,28,123455,5),
('den vau',5,38,123456,1),
('bi boom',1,48,123457,2),
('kieu anh',2,28,123458,3),
('trung quan',3,22,123459,4),
('hieu nguyen',4,25,123450,5);

insert into course(name,description)
value ('fulltime',null),('parttime',null);

insert into points(course_id,student_id,point)
value (1,1,90),
(2,2,80),
(1,3,70),
(2,4,60),
(1,5,50),
(2,6,40),
(1,7,30),
(2,8,20),
(1,9,10),
(2,10,100),
(1,1,55),
(2,2,88),
(1,3,99),
(2,4,77),
(1,5,66);

select * from student where fullname like 'nguyen%';
select * from student where fullname like '%anh';
select * from student where age >= 18 and age < 30;
select * from student where id = 1 or id = 3;

