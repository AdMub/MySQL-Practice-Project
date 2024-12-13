create database practice_2;
use practice_2;
create table Students (
ROLL_NO INT NOT NULL,
NAME varchar(45) null,
AGE int null,
CITY varchar(45) null,
DATE_OF_BIRTH TIMESTAMP null,
-- DATE_OF_BIRTH DATE null,
-- DATE_OF_BIRTH DATETIME null,
STREAM varchar(45) null,
TOTAL_MARKS int null,
primary key (ROLL_NO));

INSERT INTO Students VALUES 
    (1, 'Shakur', 27, 'Osogbo', '1996-06-26', 'Physiotherapy', 950),
    (2, 'Aji', 23, 'Ibadan', '2000-07-16', 'EEE', 965),
    (3, 'Prof', 22, 'Uyo', '2001-04-09', 'EEE', 976),
    (4, 'Adroq', 32, 'Oyo','1991-11-17', 'Statistics',  989),
    (5, 'Admal', 21, 'Oyo', '2002-11-23', 'EEE', 1000),
    (6, 'Adam', 24, 'Ibadan', '1999-07-23', 'Pet.Engr', 900),
    (7, "Bayes'", 22, 'Saki', '2002-02-19', 'Civil.Engr', 550),
    (8, 'Captain', 23, 'Igboora', '2000-05-12', 'AEE', 900),
    (9, 'Comrade', 25, 'Oyo', '1998-07-10', 'Maths', 250),
    (10, 'Racho', 26, 'Akure', '1997-10-02', 'Maths', 450),
    (11, 'Dhiku', 27, 'Osogbo', '1996-01-08', 'AEE', 300),
    (12, 'AdMub', 26, 'Oyo', '1997-12-22', 'Civil.Engr', 400); 

-- select * from students; 

-- Boolean
select * from students where city= 'oyo';
select * from students where TOTAL_MARKS= 450;

-- numeric
select * from students where TOTAL_MARKS / 2 > 300;
select avg (TOTAL_MARKS) from students;
select sum(TOTAL_MARKS) from students;

-- DATE_OF_BIRTH
select * from students where DATE_OF_BIRTH > '1997-10-02';
select CURRENT_TIMESTAMP();

select * from students limit 7;
select * from students;
select * from students limit 5;
select * from students order by AGE desc limit 8;
select * from students order by AGE asc limit 7;
select * from students order by rand();
select * from students order by rand() limit 6;

select * from students where city in ('oyo', 'osogbo', 'ibadan');

select * from students where date_of_birth between '1996-06-26' and '2000-05-12';

update students set TOTAL_MARKS = 989 where ROLL_NO = 12;
select * from students;

-- like statement
select * from students where City like 'O%';
select * from students where City like '%o';

-- order statement
select * from students order by name;
select * from students order by name  asc;
select * from students order by name  desc;
select * from students where TOTAL_MARKS > 500 order by name  asc;
select * from students where total_marks > 450 order by name desc limit 5;

-- ORDER MULTIPLE
select * from students order by city asc, stream desc;

-- UPDATE STATEMENT
update students set total_marks = 800 WHERE 'name' = 'comrade';
select * from students;

select * from students where roll_no % 2 = 0 ;
select * from students where age % 2 != 0;

create table student_new as select roll_no, name, age, city, Date_of_birth, stream, total_marks
from  students
  where age % 2 != 0;
  
  select * from student_new;