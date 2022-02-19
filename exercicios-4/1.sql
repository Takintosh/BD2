USE world;

SELECT
    CountryCode,
    lang_quantity
FROM
    (
        SELECT
            CountryCode,
            COUNT(Language) AS lang_quantity
        FROM
            world.countrylanguage
        GROUP BY
            CountryCode
    ) AS a
WHERE
    lang_quantity > (
        SELECT
            (
                SELECT
                    COUNT(Language)
                FROM
                    world.countrylanguage
            ) / (
                SELECT
                    COUNT(DISTINCT CountryCode)
                FROM
                    world.countrylanguage
            )
    );