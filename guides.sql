USE PRACTICE_3;
CREATE TABLE Players (
`ID` VARCHAR(255) NOT NULL,
`NUMBER` VARCHAR(255) NULL,
`NAME` text NULL,
`AGE` int NULL,
`CLUB` VARCHAR(50) NULL,
`COUNTRY` VARCHAR(50) NULL,
`SALARY` VARCHAR(45) NULL,
 PRIMARY KEY (`ID`)
);
-- SELECT * from PLAYERS;

 -- droping of table
-- drop table players;
 
 INSERT INTO Players VALUES (`ID`, `NUMBER`, `NAME`, `AGE`, `CLUB`, `COUNTRY`, `SALARY`),
    ('001', '10', 'Messi', 36, 'Barcelona', 'Argentina', '950000'),
    ('002', '7', 'Ronaldo', 38, 'Real_Madrid', 'Portugal', '600000'),
    ('003', '10', 'Rooney', 37, 'Manchester_United', 'England', '300000');
    
    
SELECT * FROM Players; 
-- deleting from table
delete from players where `ID` = '003';

-- Truncating in table
truncate table players;

-- ALTERING A TABLE
alter table players add (DATE_OF_BIRTH DATE); 
alter table players rename to players_new;
SELECT * FROM Players_new;

-- COPYING IN A TABLE
create table player_details select * from players_new;
select * from player_details;

-- count in a table
select count(*) from players;
select count(*) from players where `COUNTRY` = 'England' ;

-- LIMIT/TOP in a table
select * from players limit 2;
select * from players order by salary desc limit 3;
select * from players order by salary asc limit 3;

-- RANDOM in a table
select * from players order by rand();
select * from players order by rand() limit 3;

select * from players where name in ('ronaldo', 'messi');

select sum(salary) from players;

-- NULL IN A TABLE
select * from players where name is null;

-- UPDATE STATEMENT
update players set `COUNTRY` = 'England' where name = null;

-- AS STATEMENT
select salary as 'total_salary' from players;

-- LIKE STATEMENT
select * from players where name like 'R%';

-- order statement
select * from players order by age;
select * from players order by age asc;
select * from players order by age desc;

-- UPDATE STATEMENT
update players set salary = 1500000 where `NAME` = Ronaldo;
select * from players;
update players set salary = 2500000, number = 10;
update players set salary = 1500000  where `NAME` = 'Ronaldo'  ;
update players set number = 10  where salary = 2500000;

-- DELETE STATEMENT
delete from players where name = null and number = 10;
select count(*) from players;