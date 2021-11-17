USE WORLD;

SELECT
country.Name,
AVG(city.Population) AS Promedio

FROM country
INNER JOIN city
ON country.Code = city.CountryCode

GROUP BY country.Name
HAVING Promedio > 70000
ORDER BY Promedio ASC;