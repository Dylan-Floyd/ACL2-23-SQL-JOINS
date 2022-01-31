-- find all film titles that an actor with the last_name Davis appears in
-- Similar to exercise 3 but with actor, film_actor, film
SELECT title
FROM film_actor
LEFT JOIN film
ON film_actor.film_id = film.film_id
LEFT JOIN actor
ON film_actor.actor_id = actor.actor_id
WHERE actor.last_name = 'Davis'