USE WORLD;
SELECT * from city
WHERE city.CountryCode Like "BRA" AND city.Population > 1000000;