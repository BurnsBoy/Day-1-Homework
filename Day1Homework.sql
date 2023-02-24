select COUNT(last_name)
from actor
where last_name like 'Wahlberg';
-- 2 

select COUNT(amount)
from payment
where amount > 3.99 and amount < 5.99;
-- 3230

select film_id
from inventory
group by film_id 
order by COUNT(film_id) desc 
limit 1;
-- Garden Island

select COUNT(last_name)
from customer
where last_name = 'William';
-- 0

select staff_id
from rental
group by staff_id
order by COUNT(staff_id) desc 
limit 1;
-- 1

select COUNT(distinct district) 
from address;
-- 378

select film_id
from film_actor
group by film_id
order by COUNT(film_actor) desc 
limit 1;
-- Lambs Cincinatti

select COUNT(last_name)
from customer
where store_id = 1 and last_name like '%es';
-- 13

select COUNT(amount)
from payment
group by customer_id > 380 and customer_id < 430
having COUNT(rental_id) > 250
limit 1;
-- 13,394

select COUNT(distinct rating)
from film
-- 5

select rating
from film
group by rating
order by COUNT(film) desc 
limit 1;
-- PG-13