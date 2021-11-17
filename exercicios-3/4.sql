USE WORLD;

SELECT country.Continent, COUNT(country.Name) AS "Cantidad de Países" 
FROM country 
GROUP BY country.Continent
HAVING COUNT(*) > 50;