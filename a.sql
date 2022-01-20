SELECT
    f.title AS film_title,
    i.store_id AS availability_in_store,
    count(f.title) AS number_of_films_available
FROM
    inventory i
    INNER JOIN film f ON i.film_id = f.film_id
WHERE
    title = 'Academy Dinosaur'
    AND i.store_id = 1
GROUP BY
    1
ORDER BY
    1;