USE WORLD;

SELECT country.SurfaceArea
FROM country 
GROUP BY country.SurfaceArea ASC LIMIT 1;