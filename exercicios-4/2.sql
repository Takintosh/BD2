USE sakila;

SELECT
    customer.first_name,
    customer.last_name
FROM
    customer
WHERE
    address_id = (
        SELECT
            address.address_id
        FROM
            address
        WHERE
            address.address LIKE "1913 Hanoi Way"
    );