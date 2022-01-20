SELECT
    `name` AS film_category,
    sum(amount) AS total_revenue
FROM
    category c
    INNER JOIN film_category fc ON c.category_id = fc.category_id
    INNER JOIN film f ON f.film_id = fc.film_id
    INNER JOIN inventory i ON f.film_id = i.film_id
    INNER JOIN rental r ON i.inventory_id = r.inventory_id
    INNER JOIN payment p ON r.rental_id = p.rental_id
GROUP BY
    1
ORDER BY
    2 DESC
LIMIT
    5;