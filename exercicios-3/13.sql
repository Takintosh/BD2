USE WORLD;

SELECT
country.Name,
COUNT(countrylanguage.Language)

FROM country
INNER JOIN countrylanguage
WHERE countrylanguage.CountryCode = country.Code
GROUP BY country.Name;