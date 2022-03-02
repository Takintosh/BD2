USE sakila;

SELECT
    address.address,
    address.postal_code
FROM
    address
WHERE
    (address.address_id, address.district) IN (
        SELECT
            address.address_id,
            address.district
        FROM
            address
        WHERE
            address.district = "Texas"
    );