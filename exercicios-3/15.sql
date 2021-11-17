USE WORLD;

SELECT
country.Name,
COUNT(city.ID) AS "Ciudades"

FROM country
INNER JOIN city
ON country.Code = city.CountryCode

GROUP BY country.Name;