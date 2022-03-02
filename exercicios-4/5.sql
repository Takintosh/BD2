USE sakila;

SELECT
    customer.first_name,
    customer.last_name,
    payment.rental_id,
    payment.amount
FROM
    customer
    INNER JOIN payment ON customer.customer_id = payment.customer_id
WHERE
    payment.amount = SOME(
        SELECT
            amount
        FROM
            payment
        WHERE
            rental_id = 7273
    );