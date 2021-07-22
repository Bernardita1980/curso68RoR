use sakila;
Select * from actor;

-- 1. ¿Qué consulta ejecutarías para obtener todos los clientes dentro de city_id = 312? Su consulta debe devolver el nombre, apellido, correo electrónico y dirección del cliente.

select * from customer;
select * from address;

select address from address
where city_id = 312;

select first_name, last_name, email from customer
where address_id in (256,517);

select customer.first_name as nombre, customer.last_name as apellido, customer.email, address.address as direccion from customer
INNER JOIN address ON address.address_id = customer.address_id 
where address.address_id in (256,517)
and address.city_id = 312;

-- 2. ¿Qué consulta harías para obtener todas las películas de comedia? Su consulta debe devolver el título de la película, la descripción, el año de estreno, la calificación, las características especiales y el género (categoría).

Select * from film;
Select * from film_category;
Select * from category where name="Comedy";

Select film.title, film.description, film.release_year, 
film.rating, film.special_features, cat.name
from film
inner join film_category fcat on fcat.film_id=film.film_id
inner join category cat on fcat.category_id=cat.category_id
where cat.name="Comedy";

-- 3. ¿Qué consulta harías para obtener todas las películas unidas por actor_id = 5? Su consulta debe devolver la identificación del actor, el nombre del actor, el título de la película, la descripción y el año de lanzamiento.

Select act.actor_id, act.first_name, film.title as titulo_pelicula, film.description, film.release_year
from film
inner join film_actor fact on fact.film_id=film.film_id
inner join actor act on act.actor_id=fact.actor_id
where act.actor_id=5;


-- 4. ¿Qué consulta ejecutaría para obtener todos los clientes en store_id = 1 y dentro de estas ciudades (1, 42, 312 y 459)? Su consulta debe devolver el nombre, apellido, correo electrónico y dirección del cliente.

Select store.store_id, address.city_id, customer.first_name as nombre, customer.last_name as apellido, customer.email,address.address as direccion
from customer
inner join store on store.store_id = customer.store_id
inner join address on address.address_id = customer.address_id
inner join city on city.city_id = address.city_id
where store.store_id = 1 
and city.city_id in (1,42,312,459);

-- 5. ¿Qué consulta realizarías para obtener todas las películas con una "calificación = G" y "característica especial = detrás de escena", unidas por actor_id = 15? Su consulta debe devolver el título de la película, la descripción, el año de lanzamiento, la calificación y la función especial. Sugerencia: puede usar la función LIKE para obtener la parte 'detrás de escena'.

select * from film where rating="G" and film.special_features like "Behind%";
 
 select film.title, film.description,film.release_year, film.rating, film.special_features
 from film_actor
 inner join film on film.film_id = film_actor.film_id
 inner join actor on actor.actor_id=film_actor.actor_id
 where rating="G" and film.special_features like "%Behind%" and actor.actor_id=15;
 
-- 6. ¿Qué consulta harías para obtener todos los actores que se unieron en el film_id = 369? Su consulta debe devolver film_id, title, actor_id y actor_name.
 
 select film.film_id, film.title, actor.actor_id, concat(actor.first_name, actor.last_name)
 from actor
 inner join film_actor on film_actor.actor_id=actor.actor_id
 inner join film on film.film_id=film_actor.film_id
 where film.film_id=369;
 
-- 7. ¿Qué consulta harías para obtener todas las películas dramáticas con una tarifa de alquiler de 2.99? Su consulta debe devolver el título de la película, la descripción, el año de estreno, la calificación, las características especiales y el género (categoría).

select * from category;

select film.film_id, film.title, film.description, 
film.release_year, film.rating, film.special_features, film.rental_rate, category.name
from film
inner join film_category on film_category.film_id=film.film_id
inner join category on category.category_id=film_category.category_id
where film.rental_rate=2.99 and category.category_id=7;


-- 8. ¿Qué consulta harías para obtener todas las películas de acción a las que se 
-- une SANDRA KILMER? Su consulta debe devolver el título de la película, la descripción,
-- el año de estreno, la calificación, las características especiales, el género (categoría)
-- y el nombre y apellido del actor.

select * from actor where actor.first_name like "%sandra%";
select * from category;

select count(*) from film_actor where film_actor.actor_id=23;

select film.film_id, film.title, film.description, 
film.release_year, film.rating, film.special_features, category.name,
concat(actor.first_name, actor.last_name)
from film
inner join film_category on film_category.film_id=film.film_id
inner join category on category.category_id=film_category.category_id
inner join film_actor on film_actor.film_id=film.film_id
inner join actor on actor.actor_id=film_actor.actor_id
where film_actor.actor_id=23 and film_category.category_id=1;