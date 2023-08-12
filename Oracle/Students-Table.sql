create table StudentsData(
	stu_rollno number primary key,
	stu_fname varchar2(255),
	stu_lname varchar2(255),
	stu_email varchar2(255),
	stu_percentage number
);

desc StudentsData;

insert into StudentsData values (1,'M','Gopi','m@gmail.com',90.5);
insert into StudentsData values (2,'A','Charan','a@gmail.com',78.9);
insert into StudentsData values (3,'B','Ganesh','b@gmail.com',67.40);

select * from StudentsData;

select * from User_Constraints where Table_name = 'StudentsData';