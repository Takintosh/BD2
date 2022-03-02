USE sakila;

SELECT
    inventory.inventory_id,
    film.title
FROM
    inventory
    JOIN film ON inventory.film_id = film.film_id;

SELECT
    inventory.inventory_id,
    film.title
FROM
    inventory
    JOIN film USING(film_id);

SELECT
    inventory.inventory_id,
    film.title
FROM
    inventory NATURAL
    JOIN film;