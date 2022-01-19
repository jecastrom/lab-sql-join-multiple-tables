SELECT
    s.store_id,
    c.city,
    co.country,
    sum(p.amount) AS total_sales
FROM
    store s
    INNER JOIN address a ON s.address_id = a.address_id
    INNER JOIN city c ON a.city_id = c.city_id
    INNER JOIN country co ON c.country_id = co.country_id
    INNER JOIN customer cu ON s.store_id = cu.store_id
    INNER JOIN payment p ON cu.customer_id = p.customer_id
GROUP BY
    1
ORDER BY
    1;