USE WORLD;

SELECT
country.Continent,
MAX(country.SurfaceArea) AS Mayor

FROM country
GROUP BY country.Continent
ORDER BY Mayor DESC;