-- Question 1
select last_name, count(last_name)
from actor
where last_name like 'Wahlberg'
group by last_name
order by last_name
-- Answer is 2

-- Question 2
select count(amount) 
from payment 
where amount < 5.99 and amount > 3.99;
-- Answer is 2 

-- Question 3
select film_id, count(film_id)
from inventory
group by film_id 
order by count(film_id) desc;
-- Answer is fild_id 193 Crossroads Casualties

-- Question 4
select last_name, count(last_name)
from customer
where last_name like 'Williams'
group by last_name
-- Answer is 1

-- Question 5
select staff_id, count(staff_id) 
from payment
group by staff_id
-- Answer is staff_id 2 


-- Question 6
select distinct district 
from address
-- Answer is 378 districts

-- Question 7
select film_id, count(film_id)
from film_actor
group by film_id
order by count(film_id) desc
-- Answer is film_id 508

--Question 8
select last_name, store_id
from customer
where last_name like '%es' and store_id = '1'
group by last_name, store_id
-- Answer is 13

-- Question 9
select amount, count(amount) as amount_count
from payment
where customer_id between 380 and 430
group by amount
having count(amount) > 250
-- answer is 3

-- Question 10
select rating, count(rating)
from film
group by rating
-- Answer is 5 categories and PG-13 has the most movies