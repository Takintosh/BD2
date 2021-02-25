USE WORLD;
SELECT country.Name AS "País", country.Continent AS "Continente", country.Region AS "Región", country.Population AS "Población del País", 
city.name AS "Ciudad", city.District AS "Distrito", city.Population AS "Población de la Ciudad",
countrylanguage.Language AS "Idioma"
FROM city
INNER JOIN country ON city.CountryCode = country.Code
INNER JOIN countrylanguage ON city.CountryCode = countrylanguage.CountryCode
WHERE country.Continent LIKE "Europe";