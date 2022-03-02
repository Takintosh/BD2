USE sakila;

-- FULL OUTER JOIN en SQL
SELECT
    address.*,
    customer.*
FROM
    address FULL
    OUTER JOIN customer ON address.address_id = customer.address_id;

-- LEFT JOIN + RIGHT JOIN en ausencia de FULL JOIN en MySQL
SELECT
    address.*,
    customer.*
FROM
    address
    LEFT JOIN customer ON address.address_id = customer.address_id
UNION
SELECT
    address.*,
    customer.*
FROM
    address
    RIGHT JOIN customer ON address.address_id = customer.address_id;