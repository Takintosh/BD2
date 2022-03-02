USE sakila;

SELECT
    address.*,
    customer.*
FROM
    address
    LEFT OUTER JOIN customer ON address.address_id = customer.address_id;