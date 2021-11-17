USE WORLD;
SELECT country.* FROM country 
INNER JOIN countrylanguage ON
country.Code = countrylanguage.CountryCode
WHERE countrylanguage.Language LIKE "Dutch";