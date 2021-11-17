USE WORLD;

SELECT AVG(country.SurfaceArea) AS "Promedio"
FROM country
WHERE country.Continent LIKE "Europe";