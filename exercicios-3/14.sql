USE WORLD;

SELECT
country.Name,
COUNT(countrylanguage.Language) AS Idiomas

FROM country
INNER JOIN countrylanguage
WHERE countrylanguage.CountryCode = country.Code
GROUP BY country.Name
HAVING Idiomas > 10;