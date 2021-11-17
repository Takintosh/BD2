USE SAKILA;

SELECT
category.name,
COUNT(film.film_id) AS Filmes

FROM category
LEFT OUTER JOIN film_category
ON category.category_id = film_category.category_id
LEFT OUTER JOIN film
ON film_category.film_id = film.film_id

GROUP BY category.category_id;