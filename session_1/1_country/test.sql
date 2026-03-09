-- SELECT Country FROM countries WHERE Continent='Europe';

SELECT Country, AreaSqMi FROM countries WHERE Country LIKE '%United%' ORDER BY AreaSqMi DESC ;
