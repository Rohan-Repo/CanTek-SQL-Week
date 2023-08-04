/*
	Get List of Categories and Movies played by Actors grouped by ActorID
*/

SELECT
	actor.first_name,
	actor.last_name,
	Name,
	Title
FROM
	film
INNER JOIN 
	film_category ON film_category.film_id = film.film_id
INNER JOIN 
	category ON category.category_id = film_category.category_id
INNER JOIN 
	film_actor ON film_actor.film_id = film.film_id
INNER JOIN 
	actor ON actor.actor_id = film_actor.actor_id
GROUP BY 
	actor.actor_id, Name, Title
ORDER BY 
	actor.actor_id;