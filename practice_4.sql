CREATE TABLE Players (
    ID VARCHAR(255) NOT NULL,
    NUMBER VARCHAR(255) NULL,
    NAME text NULL,
    AGE int NULL,
    CLUB VARCHAR(50) NULL,
    COUNTRY VARCHAR(50) NULL,
    SALARY VARCHAR(45) NULL,
    PRIMARY KEY (`ID`)
);

INSERT INTO Players VALUES (`ID`, `NUMBER`, `NAME`, `AGE`, `CLUB`, `COUNTRY`, `SALARY`),
    ('001', '10', 'Messi', 36, 'Barcelona', 'Argentina', '950000'),
    ('002', '7', 'Ronaldo', 38, 'Real_Madrid', 'Portugal', '600000'),
    ('003', '10', 'Rooney', 37, 'Manchester_United', 'England', '300000'),
    ('004', '10', 'Hazard', 30, 'Chelsea', 'Belgium', '450000'),
    ('005', '10', 'Neymar', 30, 'Santos', 'Brazil', '1000000'),
    ('006', '10', 'Messi', 36, 'Barcelona', 'Argentina', '950000'),
    ('007', '9', 'Halaand', 22, 'Manchester_City', 'Norway', '550000'),
    ('008', '7', 'Mbappe', 24, 'PSG', 'France', '900000'),
    ('009', '8', 'Iniesta', 40, 'Barcelona', 'Spain', '250000'),
    ('010', '10', 'Modric', 36, 'Real_Madrid', 'Croatia', '450000'),
    ('011', '10', 'Ozil', 34, 'Arsenal', 'Germany', '300000'),
    ('012', '9', 'Lewandowski', 35, 'Bayern_Munich', 'Poland', '400000'); 

 SELECT * FROM Players;

-- Addition

select id, number, name, SALARY, SALARY + 30000 as player_new_salary from Players;

-- Subtraction
-- select id, number, name, SALARY, SALARY - 20000 as player_new_salary from Players;

-- Multiplication
-- select id, number, name, SALARY, SALARY * 3 as player_new_salary from Players;

-- Division
-- select id, number, name, SALARY, SALARY /2 as player_new_salary from Players;