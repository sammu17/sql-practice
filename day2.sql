-- ================================
-- Day 2 SQL Practice - SQLZoo
-- SELECT from WORLD Tutorial
-- ================================

-- Q6: Countries containing 'United'
SELECT name
FROM world
WHERE name LIKE '%United%';

-- Q7: Big by area OR big by population
SELECT name, population, area
FROM world
WHERE area > 3000000
OR population > 250000000;

-- Q9: South America population in millions, GDP in billions
SELECT name,
ROUND(population/1000000, 2),
ROUND(gdp/1000000000, 2)
FROM world
WHERE continent = 'South America';

-- Q10: Trillion dollar economies, per capita GDP to nearest 1000
SELECT name, ROUND(gdp/population, -3)
FROM world
WHERE gdp >= 1000000000000;

-- Q11: Name and capital same number of letters
SELECT name, capital
FROM world
WHERE LENGTH(name) = LENGTH(capital);

-- Q12: Name and capital start with same letter
SELECT name, capital
FROM world
WHERE LEFT(name,1) = LEFT(capital,1)
AND name <> capital;

-- Q13: Country with all vowels and no spaces
SELECT name
FROM world
WHERE name LIKE '%a%'
AND name LIKE '%e%'
AND name LIKE '%i%'
AND name LIKE '%o%'
AND name LIKE '%u%'
AND name NOT LIKE '% %';
