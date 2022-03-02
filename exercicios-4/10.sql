USE sakila;

SELECT
    address.*,
    customer.*
FROM
    address
    RIGHT OUTER JOIN customer ON address.address_id = customer.address_id;