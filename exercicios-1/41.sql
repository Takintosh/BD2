USE WORLD;
SELECT * from country
INNER JOIN countrylanguage ON country.Code = countrylanguage.CountryCode
WHERE countrylanguage.Language LIKE "Spanish" AND IsOfficial Like "T";