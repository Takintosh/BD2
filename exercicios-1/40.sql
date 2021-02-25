USE WORLD;
SELECT * FROM city 
INNER JOIN country ON city.CountryCode = country.Code
INNER JOIN countrylanguage ON country.Code = countrylanguage.CountryCode
WHERE countrylanguage.Language LIKE "Dutch";