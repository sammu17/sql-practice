-- ================================
-- Day 3 SQL Practice - SQLZoo
-- SELECT from Nobel Tutorial
-- ================================

-- Q1: Winners from 1950
SELECT yr, subject, winner
FROM nobel
WHERE yr = 1950;

-- Q2: 1962 Literature winner
SELECT winner
FROM nobel
WHERE yr = 1962
AND subject = 'literature';

-- Q3: Albert Einstein - year and subject
SELECT yr, subject
FROM nobel
WHERE winner = 'Albert Einstein';

-- Q4: Peace winners since 2000
SELECT winner
FROM nobel
WHERE yr >= 2000
AND subject = 'Peace';

-- Q5: Literature winners 1980-1989
SELECT yr, subject, winner
FROM nobel
WHERE subject = 'literature'
AND yr >= 1980
AND yr <= 1989;

-- Q6: Presidential Nobel winners
SELECT *
FROM nobel
WHERE winner IN (
  'Theodore Roosevelt',
  'Thomas Woodrow Wilson',
  'Jimmy Carter',
  'Barack Obama');

-- Q7: Winners with first name John
SELECT winner
FROM nobel
WHERE winner LIKE 'John%';

-- Q8: Physics 1980 and Chemistry 1984
SELECT *
FROM nobel
WHERE subject = 'physics' AND yr = 1980
OR subject = 'chemistry' AND yr = 1984;

-- Q9: 1980 winners excluding Chemistry and Medicine
SELECT *
FROM nobel
WHERE yr = 1980
AND subject NOT IN ('chemistry','medicine');

-- Q10: Early Medicine and Late Literature
SELECT *
FROM nobel
WHERE subject = 'Medicine' AND yr < 1910
OR subject = 'Literature' AND yr >= 2004;
