USE SAKILA;

SELECT
customer.customer_id,
customer.first_name,
customer.last_name,
SUM(amount) AS Pagos

FROM customer
INNER JOIN payment
ON customer.customer_id = payment.customer_id

GROUP BY customer_id;