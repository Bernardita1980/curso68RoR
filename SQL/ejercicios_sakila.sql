use sakila;
#1. ¿Qué consulta ejecutarías para obtener todos los clientes dentro de city_id = 312?
# Su consulta debe devolver el nombre, apellido, correo electrónico y dirección del cliente.
select * from customer;
select * from address;

select * from address
where city_id=312;

select first_name as nombre,customer.last_name,email, address from customer
inner join address on address.address_id = customer.address_id
where address.address_id in(256,517)#debe buscar por address y no por custumer
and address.city_id=312;
#2. ¿Qué consulta harías para obtener todas las películas de comedia? Su consulta 
#debe devolver el título de la película, la descripción, el año de estreno, la calificación, las características especiales y el género (categoría).

Select * from film;
Select * from film_category;
Select * from category where name="Comedy";

Select film.title, film.description, film.release_year, 
film.rating, film.special_features, cat.name
from film
inner join film_category fcat on fcat.film_id=film.film_id
inner join category cat on fcat.category_id=cat.category_id
where cat.name="Comedy";
-- 3. ¿Qué consulta harías para obtener todas las películas unidas por actor_id = 5? Su consulta debe devolver la 
-- identificación del actor, el nombre del actor, el título de la película, la descripción y el año de lanzamiento.
Select act.actor_id, act.first_name, film.title as titulo_pelicula, film.description, film.release_year
from film
inner join film_actor fact on fact.film_id=film.film_id
inner join actor act on act.actor_id=fact.actor_id
where act.actor_id=5;
#4. ¿Qué consulta ejecutaría para obtener todos los clientes en store_id = 1 y dentro de estas ciudades (1, 42, 312 y 459)? 
#Su consulta debe devolver el nombre, apellido, correo electrónico y dirección del cliente.
Select customer.first_name as nombre, customer.last_name as apellido, customer.email, address.address as direccion
from customer
inner join store on store.store_id = customer.store_id
inner join address on address.address_id = customer.address_id
inner join city on city.city_id = address.city_id
where store.store_id = 1 
and city.city_id in (1,42,312,459)
;
#5. ¿Qué consulta realizarías para obtener todas las películas con una "calificación = G" y "característica
# especial = detrás de escena", unidas por actor_id = 15? Su consulta debe devolver el título de la película, 
#la descripción, el año de lanzamiento, la calificación y la función especial. Sugerencia: puede usar la función 
#LIKE para obtener la parte 'detrás de escena'.
select * from film.category=g;












