USE WORLD;

SELECT country.SurfaceArea
FROM country 
GROUP BY country.SurfaceArea DESC LIMIT 1;