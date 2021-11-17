USE WORLD;

SELECT
country.Continent,
AVG(country.SurfaceArea) AS "Promedio"

FROM country
GROUP BY country.Continent;