USE WORLD;

SELECT
country.Name AS "País",
country.Continent AS "Continente",
country.Region AS "Región",
country.Population AS "Población del País", 
city.name AS "Ciudad",
city.District AS "Distrito",
city.Population AS "Población de la Ciudad",
countrylanguage.Language AS "Idioma"

FROM country
INNER JOIN city 
ON city.CountryCode = country.Code
WHERE country.Continent LIKE "Europe";