USE SAKILA;

SELECT
staff.staff_id,
staff.first_name,
staff.last_name,
SUM(amount) AS Pagos

FROM staff
INNER JOIN payment
ON staff.staff_id = payment.staff_id

WHERE payment.payment_date BETWEEN '2005-05-25' AND '2005-08-23'

GROUP BY staff_id;