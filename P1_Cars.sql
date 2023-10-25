/*
My SQL Project: Second Hand Car Dealer
*/

# 1) Read Cars Data

SELECT * FROM car_dekho;

# 2) Total Cars: To get a count of total records

SELECT 
    COUNT(*) AS total_cars
FROM
    car_dekho;

# 3)The Manager asked the employee How many cars will be available in 2023?

SELECT COUNT(*) AS available_2023 FROM 
car_dekho
WHERE year = 2023;

# 4) The manager asked the employee How many cars is available in 2020,2021,,2022?
# Method 1;
SELECT COUNT(*) AS available_2020 FROM 
car_dekho
WHERE year = 2020; # 74

SELECT COUNT(*) AS available_2021 FROM 
car_dekho
WHERE year = 2021; # 7

SELECT COUNT(*) AS available_2022 FROM 
car_dekho
WHERE year = 2022; # 7


# Method 2

SELECT COUNT(*) 
FROM 
car_dekho
WHERE year BETWEEN 2020 AND 2022;

# Method 3 GROUP BY

SELECT COUNT(*) from car_dekho where year in(2020,2021,2022) group by year;

# 5) Clint asked me to print the total of all cars by year. I don't want to see all the details

SELECT year,
		COUNT(*)
FROM car_dekho
GROUP BY year;

# 6) Clint asked car dealer agent How many diesel cars will there be in 2020?

SELECT COUNT(*) AS diesel_cars_2020
FROM car_dekho
WHERE fuel = 'diesel' AND year = 2020; # 20

# 7) Clint asked car dealer agent How many petrol cars will there be in 2020?

SELECT COUNT(*) AS petrol_cars_2020
FROM car_dekho
WHERE fuel = 'petrol' AND year = 2020; # 51

# 8) The manager told the employee to give a print All the fuel cars (petrol, diesel, and CNG) come by the year.

-- ALL petrol cars by the year
SELECT year,COUNT(*) 
FROM car_dekho
WHERE fuel = 'petrol'
GROUP BY year;

-- ALL diesel cars by the year
SELECT year,COUNT(*) 
FROM car_dekho
WHERE fuel = 'diesel'
GROUP BY year;

-- ALL CNG cars by the year
SELECT year,COUNT(*) 
FROM car_dekho
WHERE fuel = 'CNG'
GROUP BY year;

# 9) Manager said there were more than 100 cars in a given year, which year has more than 100 cars?

SELECT year,COUNT(*) FROM car_dekho
GROUP by year
HAVING COUNT(*) > 100;

# 10) The manager said to employee ALL cars count details between 2015 and 2023 we need complete list

SELECT COUNT(*) FROM 
car_dekho WHERE year BETWEEN 2015 and 2023; # 4124

# 11) The manager said to employee ALL cars details between 2015 and 2023 we need complete list

SELECT * FROM 
car_dekho WHERE year BETWEEN 2015 and 2023;

-- END --















