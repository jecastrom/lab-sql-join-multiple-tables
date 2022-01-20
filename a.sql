SELECT
    f.title AS film_title,
    count(r.inventory_id) AS rental_frequency
FROM
    film f
    INNER JOIN inventory i ON f.film_id = i.film_id
    INNER JOIN rental r ON i.inventory_id = r.inventory_id
GROUP BY
    1
ORDER BY
    2 DESC
LIMIT
    10;