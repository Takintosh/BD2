USE sakila;

SELECT
    film.title
FROM
    film
WHERE
    film.length > ALL(
        SELECT
            film.length
        FROM
            film
        WHERE
            film.rating LIKE "NC-17"
    );