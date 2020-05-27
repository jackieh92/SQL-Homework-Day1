--Query to find the last name "Wahlberg"
SELECT last_name, first_name
FROM actor
WHERE last_name = 'Wahlberg';

--Query to find the amount of payments that are between 3.99 and 5.99 
SELECT customer_id, amount
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99
ORDER BY amount ASC;


--Query to see what the database for inventory looks like
SELECT *
FROM inventory;


--Query to find the film with the most quantity at store 
SELECT film_id
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC
LIMIT 1;

--SELECT film_id, COUNT (film_id) AS Frequency
--FROM inventory
--GROUP BY film_id
--ORDER BY COUNT(film_id) DESC;

--Query to figure out how many customers have the last name "William"
SELECT last_name
FROM customer
WHERE last_name = 'William';

--Query to find the employee with the most sold rentals
SELECT staff_id
FROM rental
GROUP BY staff_id
ORDER BY COUNT(staff_id)DESC
LIMIT 1;

--Query to give the number of district names there are
SELECT DISTINCT district
FROM address
ORDER BY district DESC;

--Query that tells us what film has the most actors in it
--SELECT COUNT (film_id)
--FROM film_actor
--GROUP BY film_id
--ORDER BY COUNT(film_id) DESC;
SELECT film_id
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(film_id) DESC
LIMIT 1;

--Query to find how many customers have last name ending in 'es'
--from store 1
SELECT store_id, last_name
FROM customer
WHERE last_name LIKE '%es'
ORDER BY store_id ASC;

--Query to find how many payment amounts had a number of
--rentals above 250 for customers with ids between
--380 and 430 (use group by and having > 250)
SELECT COUNT(amount)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(amount) > 250;

--Query to find how many rating categories there are and 
-- what rating has the most movies total?
SELECT DISTINCT rating
FROM film;

--Query to find how many rating categories there are and 
-- what rating has the most movies total?
SELECT COUNT (rating), rating
FROM film
GROUP BY rating
ORDER BY COUNT (rating) DESC;
