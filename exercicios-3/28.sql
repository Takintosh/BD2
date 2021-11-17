USE SAKILA;

SELECT
actor.actor_id,
actor.first_name,
actor.last_name,
COUNT(film.film_id) AS Filmes

FROM actor
LEFT OUTER JOIN film_actor
ON actor.actor_id = film_actor.actor_id
LEFT OUTER JOIN film
ON film_actor.film_id = film.film_id

WHERE actor.actor_id = 100

GROUP BY actor.actor_id;