SELECT COUNT(DISTINCT inventory_id) AS unique_inventory_rented,
       COUNT(inventory_id) AS total_inventory_rented
FROM rental;

SELECT f.film_title
FROM film f
JOIN film_actor fa ON f.film_id = fa.film_id
JOIN actor a ON fa.actor_id = a.actor_id
WHERE a.first_name = 'Dan' AND (a.last_name = 'Torn' OR a.last_name = 'Streep')
ORDER BY f.film_title;

SELECT a.actor_full_name, f.film_title
FROM film f
JOIN film_actor fa ON f.film_id = fa.film_id
JOIN actor a ON fa.actor_id = a.actor_id
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
WHERE c.name = 'Comedy' AND a.last_name LIKE 'D%'
ORDER BY a.actor_full_name;

SELECT s.store_id, COUNT(DISTINCT c.customer_id) AS potential_customers
FROM customer c
JOIN address a ON c.address_id = a.address_id
JOIN city ci ON a.city_id = ci.city_id
JOIN country co ON ci.country_id = co.country_id
JOIN staff s ON co.country_id = s.country_id
GROUP BY s.store_id;

SELECT s.store_id, c.name AS category_name, COUNT(r.rental_id) AS rental_count
FROM rental r
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
JOIN store s ON i.store_id = s.store_id
GROUP BY s.store_id, c.name
ORDER BY s.store_id, rental_count DESC;

SELECT co.country, a.actor_full_name, COUNT(r.rental_id) AS rental_count
FROM rental r
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film_actor fa ON i.film_id = fa.film_id
JOIN actor a ON fa.actor_id = a.actor_id
JOIN store s ON i.store_id = s.store_id
JOIN address ad ON s.address_id = ad.address_id
JOIN city ci ON ad.city_id = ci.city_id
JOIN country co ON ci.country_id = co.country_id
GROUP BY co.country, a.actor_full_name
ORDER BY co.country, rental_count DESC
LIMIT 5;
