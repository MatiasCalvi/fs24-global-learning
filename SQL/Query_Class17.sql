/* 1 */ SELECT COUNT(*) AS "total_stores" 
		FROM store;

/* 2 */ SELECT COUNT(*) AS "2_hour_movies" 
		FROM film 
		WHERE public.film.length > 120; 

/* 3 */ SELECT c.*, COUNT(p.payment_id) AS "total_payments"
		FROM payment p
		JOIN customer c ON p.customer_id = c.customer_id
		WHERE c.customer_id = 472
		GROUP BY c.customer_id, 
			c.store_id, 
			c.first_name, 
			c.last_name, 
			c.email, 
			c.address_id, 
			c.activebool, 
			c.create_date, 
			c.last_update, 
			c.active;

/* 4 */	SELECT i.inventory_id, f.* FROM inventory i
	   	JOIN film f ON i.film_id = f.film_id 
		WHERE i.inventory_id = 303
		GROUP BY i.inventory_id, 
			f.film_id, 
			f.title, 
			f.release_year, 
			f.language_id, 
			f.rental_duration, 
			f.rental_rate,
			f.length,
			f.replacement_cost, 
			f.rating, 
			f.last_update, 
			f.special_features, 
			f.fulltext;

/* 5 */ SELECT address,district 
		FROM address
		WHERE phone LIKE '634445428822' 
		


 



