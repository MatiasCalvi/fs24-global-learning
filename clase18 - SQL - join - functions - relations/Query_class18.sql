/* 1 */ SELECT COUNT(*) AS "total_movies" 
		FROM film 
		WHERE title LIKE 'S%'

/* 2 */ SELECT SUM(public.film.length) AS total_duration_minutes FROM film 
		WHERE rating = 'PG-13'
 
/* 3 */	SELECT c.email, COUNT(*) AS total_rents
		FROM customer c
		JOIN rental r ON c.customer_id = r.customer_id
		GROUP BY c.email;

/* 4 */ SELECT phone
		FROM address
		WHERE postal_code = (SELECT MAX(postal_code) FROM address);

/* 5 */ SELECT a.address, a.district, ct.city
		FROM customer c
		JOIN address a ON c.address_id = a.address_id
		JOIN city ct ON ct.city_id = a.city_id
		WHERE c.active = 0
		ORDER BY c.customer_id
		LIMIT 1;

