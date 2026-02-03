-- Enable readable output format
.mode columns
.headers on

-- Instructions for students:
-- 1. Open SQLite in terminal: sqlite3 countries.db
-- 2. Load this script: .read tasks.sql
-- 3. Exit SQLite: .exit

-- Country, Continent, Population, AreaSqMi, PopDensityPerSqMi, CoastlineRatio
-- NetMigration, InfantMortalityPer1000, GDPPerCapita, LiteracyPercent, 
-- PhonesPer1000, ArablePercent, CropsPercent, OtherPercent, Climate, 
-- Birthrate, Deathrate, Agriculture, Industry, Service

-- SELECT Continent, MAX(Population) FROM countries GROUP BY Continent 

-- SELECT Continent, AVG(GDPPerCapita) FROM countries GROUP BY Continent ORDER BY AVG(GDPPerCapita) DESC

-- SELECT Continent, SUM(Population) FROM countries WHERE Population>10000000 GROUP BY Continent 

SELECT Continent, SUM(Population) FROM countries WHERE Birthrate<20 GROUP BY Continent HAVING SUM(Population)>500000000 ORDER BY SUM(Population) DESC LIMIT 3