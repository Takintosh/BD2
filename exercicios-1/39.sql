USE WORLD;
SELECT * FROM country JOIN countrylanguage ON country.Code = countrylanguage.CountryCode
WHERE countrylanguage.Language LIKE "Dutch";