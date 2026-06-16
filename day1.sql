-- Day 1 SQL Practice - SQLZoo SELECT Basics

-- Q2: Countries with population >= 200 million
SELECT name FROM world
WHERE population >= 200000000;

-- Q3: Per capita GDP for large countries
SELECT name, gdp/population
FROM world
WHERE population >= 200000000;

-- Q4: South America population in millions
SELECT name, population/1000000
FROM world
WHERE continent = 'South America';

-- Q5: France, Germany, Italy
SELECT name, population
FROM world
WHERE name IN ('France','Germany','Italy');
