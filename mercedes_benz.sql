create database mercedes_benz;
use mercedes_benz;
create table CUSTOMER (
`CUSTOMER ID` INT NOT NULL,
`NAME` TEXT NULL,
`AGE` INT NULL,
`ADDRESS` VARCHAR(255) NULL,
`CONTRACT` VARCHAR(50) NULL,
PRIMARY KEY(`CUSTOMER ID`)
);
select * from CUSTOMER;

 CREATE TABLE `ORDER` (
    `ORDER ID` INT NOT NULL,
    `CUSTOMER ID` INT NULL,
    `PURCHASE DATE` TIMESTAMP NULL,
    `QUANTITY` INT NULL,
    `PRICE` INT NULL,
    PRIMARY KEY (`ORDER ID`)
);
select * from `ORDER`;

 create table VEHICLE (
`VEHICLE ID` INT NOT NULL,
`ORDER ID` INT NULL,
`FUEL TYPE` VARCHAR(50) NULL,
`MODEL/VARIANT` VARCHAR(255) NULL,
`COLOUR` VARCHAR(45) NULL,
PRIMARY KEY(`VEHICLE ID`)
);
select * from VEHICLE;

-- INNER JOIN

select mercedes_benz.order.`PURCHASE DATE` , mercedes_benz.order.QUANTITY, mercedes_benz.order.PRICE, customer.address
 from  mercedes_benz.order 
 inner join mercedes_benz.CUSTOMER on mercedes_benz.order.`CUSTOMER ID` = mercedes_benz.customer.`CUSTOMER ID`;
 
 select mercedes_benz.o.`PURCHASE DATE` , mercedes_benz.o.QUANTITY, mercedes_benz.o.PRICE, c.address
 from  mercedes_benz.order o
 inner join mercedes_benz.CUSTOMER c on mercedes_benz.o.`CUSTOMER ID` = mercedes_benz.c.`CUSTOMER ID`;


SELECT customer.name, customer.age, customer.contract, VEHICLE.colour
FROM mercedes_benz.customer 
INNER JOIN mercedes_benz.order ON customer.`CUSTOMER ID` = mercedes_benz.order.`CUSTOMER ID`
INNER JOIN mercedes_benz.vehicle ON mercedes_benz.order.`ORDER ID` = VEHICLE.`ORDER ID`;

SELECT c.name, c.age, c.contract, V.colour
FROM mercedes_benz.customer c
INNER JOIN mercedes_benz.order ON c.`CUSTOMER ID` = mercedes_benz.order.`CUSTOMER ID`
INNER JOIN mercedes_benz.vehicle v ON mercedes_benz.order.`ORDER ID` = V.`ORDER ID`;

-- 


