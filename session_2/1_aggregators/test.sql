
.mode table
.headers on

-- SELECT Continent, SUM(Birthrate) FROM countries GROUP BY Continent;
-- SELECT COUNT(*) FROM countries;
-- SELECT Country FROM countries WHERE Continent='Europe/Asia';

SELECT Continent, SUM(Population) AS TotalPopulation FROM countries GROUP BY Continent ORDER BY TotalPopulation ASC;
SELECT Continent, SUM(Population) AS TotalPopulation FROM countries GROUP BY Continent HAVING SUM(Population)>41676293 ORDER BY TotalPopulation ASC;