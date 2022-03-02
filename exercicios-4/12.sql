USE sakila;

(
    SELECT
        first_name,
        last_name
    FROM
        sakila.staff
    WHERE
        active = 1
)
UNION
(
    SELECT
        first_name,
        last_name
    FROM
        sakila.customer
    WHERE
        active = 1
)