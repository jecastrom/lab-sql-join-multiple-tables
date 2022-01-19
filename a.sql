SELECT
    c.`name` AS film_category,
    CONCAT(
        FLOOR(ROUND((AVG(length))) / 60),
        'h ',
        MOD(ROUND((AVG(length))), 60),
        'm'
    ) AS average_movie_duration
FROM
    film f
    INNER JOIN film_category fc ON f.film_id = fc.film_id
    INNER JOIN category c ON fc.category_id = c.category_id
GROUP BY
    1
ORDER BY
    2 DESC
LIMIT
    4;