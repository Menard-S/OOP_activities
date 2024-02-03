--Relations
-- Actor Table
CREATE TABLE actor (
    actor_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

-- Category Table
CREATE TABLE category (
    category_id SERIAL PRIMARY KEY,
    name VARCHAR(50)
);

-- Film Table
CREATE TABLE film (
    film_id SERIAL PRIMARY KEY,
    film_title VARCHAR(255),
    description TEXT
);

-- Film-Actor Relationship Table
CREATE TABLE film_actor (
    actor_id INT,
    film_id INT,
    PRIMARY KEY (actor_id, film_id),
    FOREIGN KEY (actor_id) REFERENCES actor (actor_id) ON DELETE CASCADE,
    FOREIGN KEY (film_id) REFERENCES film (film_id) ON DELETE CASCADE
);

-- Film-Category Relationship Table
CREATE TABLE film_category (
    film_id INT,
    category_id INT,
    PRIMARY KEY (film_id, category_id),
    FOREIGN KEY (film_id) REFERENCES film (film_id) ON DELETE CASCADE,
    FOREIGN KEY (category_id) REFERENCES category (category_id) ON DELETE CASCADE
);

-- Store Table
CREATE TABLE store (
    store_id SERIAL PRIMARY KEY,
    manager_staff_id INT,
    address_id INT
    -- Assume address_id would be a FK to an 'address' table
);

-- Staff Table
CREATE TABLE staff (
    staff_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    store_id INT,
    country_id INT,
    -- Assume country_id would be a FK to a 'country' table
    FOREIGN KEY (store_id) REFERENCES store (store_id) ON DELETE SET NULL
);

-- Inventory Table
CREATE TABLE inventory (
    inventory_id SERIAL PRIMARY KEY,
    film_id INT,
    store_id INT,
    FOREIGN KEY (film_id) REFERENCES film (film_id) ON DELETE CASCADE,
    FOREIGN KEY (store_id) REFERENCES store (store_id) ON DELETE CASCADE
);

-- Rental Table
CREATE TABLE rental (
    rental_id SERIAL PRIMARY KEY,
    rental_date TIMESTAMP,
    inventory_id INT,
    customer_id INT,
    -- Assume customer_id would be a FK to a 'customer' table
    FOREIGN KEY (inventory_id) REFERENCES inventory (inventory_id) ON DELETE SET NULL
);

-- Customer Table
CREATE TABLE customer (
    customer_id SERIAL PRIMARY KEY,
    store_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    address_id INT,
    -- Assume address_id would be a FK to an 'address' table
    FOREIGN KEY (store_id) REFERENCES store (store_id) ON DELETE SET NULL
);


--Queries

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
