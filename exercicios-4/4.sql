USE sakila;

SELECT
    older_customers.*
FROM
    (
        SELECT
            customer.first_name,
            customer.last_name,
            customer.email
        FROM
            customer
        ORDER BY
            customer.create_date ASC
        LIMIT
            20
    ) AS older_customers
WHERE
    older_customers.last_name LIKE "M%";