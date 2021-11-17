USE WORLD;
SELECT city.* FROM city
INNER JOIN countrylanguage
ON countrylanguage.CountryCode = city.CountryCode
WHERE countrylanguage.Language LIKE "Dutch";