USE SAKILA;

SELECT
staff.staff_id,
staff.first_name,
staff.last_name,
SUM(amount) AS Pagos

FROM staff
INNER JOIN payment
ON staff.staff_id = payment.staff_id

GROUP BY staff_id;