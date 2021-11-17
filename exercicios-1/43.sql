USE WORLD;
SELECT * from city
INNER JOIN country
ON country.Code = city.CountryCode
WHERE city.CountryCode Like "BRA"
AND city.Population > 1000000;