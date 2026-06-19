-- ================================
-- SELECT within SELECT (Subqueries)
-- ================================

-- Q1: Countries with population bigger than Russia
SELECT name
FROM world
WHERE population >
(SELECT population
FROM world
WHERE name = 'Russia');

-- Q2: European countries richer than UK (per capita GDP)
SELECT name
FROM world
WHERE continent = 'Europe'
AND gdp/population > (SELECT gdp/population
FROM world
WHERE name = 'United Kingdom');

-- Q3: Countries in same continent as Argentina or Australia
SELECT name, continent
FROM world
WHERE continent IN (
  SELECT continent
  FROM world
  WHERE name IN ('Argentina', 'Australia')
)
ORDER BY name;

-- Q4: Population between UK and Germany
SELECT name, population
FROM world
WHERE population > (
  SELECT population
  FROM world
  WHERE name = 'United Kingdom'
)
AND population < (
  SELECT population
  FROM world
  WHERE name = 'Germany'
);

-- Q5: Each European country's population as % of Germany's
SELECT name,
CONCAT(ROUND(100 * population / (
  SELECT population
  FROM world
  WHERE name = 'Germany'
), 0), '%') AS percentage
FROM world
WHERE continent = 'Europe';
