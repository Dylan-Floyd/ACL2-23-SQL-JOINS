-- find all film titles rented out by customers who live in the country of Peru
-- Similar to exercise 7 with an additional join to get country name
-- Similar to exercise 6 but you need a few more joins to get the city name
SELECT title
FROM rental
LEFT JOIN inventory
ON inventory.inventory_id = rental.inventory_id
LEFT JOIN film
ON inventory.film_id = film.film_id
LEFT JOIN customer
ON rental.customer_id = customer.customer_id
LEFT JOIN address
ON customer.address_id = address.address_id
LEFT JOIN city
ON address.city_id = city.city_id
LEFT JOIN country
ON city.country_id = country.country_id
WHERE country.country = 'Peru'