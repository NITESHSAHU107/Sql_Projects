/*project for sql portfolio(car_dataset)*/
show databases;
create database cars;
/*REAL DATA*/

select * from car_dekho;

/*--total cars: to get a count of total records*/
select count(*) from car_dekho;

/*--the manager asked the employee how many cars will be avilable in 2023?--*/
select count(*) from car_dekho where year = 2023;

/*-- The manager ask the employee how many cars available in 2020,2021,2022*/
select count(*) from car_dekho where year = 2020; #74
select count(*) from car_dekho where year = 2021; #7
select count(*) from car_dekho where year = 2022; #7

/*--GROUP BY--*/

select count(*) from car_dekho where year in (2020,2021,2022) group by year;

/*-- Client ask me to print the total of all car by year i dont see the all details--*/
select year,count(*) from car_dekho group by year;

/*--  Client ask to car dealer agent how many cars disel car will there be in 2020--*/
select count(*) from car_dekho where year=2020 and fuel="diesel";

/*--  Client requested a car delar agent how many petrol car will there be in 2020--*/
select count(*) from car_dekho where year=2020 and fuel="petrol";#51

/*-- The manager told the employee to print all the fuel cars(PETROL,DIESEL and CNG ) come by all year--*/
select count(fuel) from car_dekho; #7927
select year, count(*) from car_dekho where fuel="petrol" group by year;
select year, count(*) from car_dekho where fuel="diesel" group by year;
select year, count(*) from car_dekho where fuel="CNG" group by year;

/*--manager said there were more than 100 cars in a given year , which year had more than 100 cars--*/
select year , count(*) from car_dekho group by year having count(*)>100; #greater than 100;
select year , count(*) from car_dekho group by year having count(*)<100; #less than 100;

/*--the manager said the employee all cars count details between 2015 and 2023 ; we need a complete list--*/
select count(*) from car_dekho where year between 2015 and 2023;

/*--Thank you--*/






