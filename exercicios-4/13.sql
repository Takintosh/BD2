USE sakila;

-- INTERSECT en SQL
SELECT
    customer.first_name
FROM
    customer
WHERE
    active = 1
INTERSECT
SELECT
    staff.first_name
FROM
    staff
WHERE
    active = 1 
    
-- Alternativa en ausencia de INTERSECT en MySQL
SELECT
    customer.first_name
FROM
    customer
WHERE
    active = 1
    AND customer.first_name IN (
        SELECT
            staff.first_name
        FROM
            staff
        WHERE
            active = 1
    );