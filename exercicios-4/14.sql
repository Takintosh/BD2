USE sakila;

-- EXCEPT en SQL
SELECT
    customer.first_name
FROM
    customer
WHERE
    active = 1
EXCEPT
SELECT
    staff.first_name
FROM
    staff
WHERE
    active = 1 

-- Alternativa en ausencia de EXCEPT en MySQL
SELECT
    customer.first_name
FROM
    customer
WHERE
    active = 1
    AND customer.first_name NOT IN (
        SELECT
            staff.first_name
        FROM
            staff
        WHERE
            active = 1
    );