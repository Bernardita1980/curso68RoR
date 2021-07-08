use world;

select * from cities;
select * from countries;
select * from languages;

-- ¿Qué consulta harías para obtener todos los países que hablan esloveno? 
-- Tu consulta debe devolver el nombre del país, el idioma y el porcentaje de idioma. 
-- Tu consulta debe organizar el resultado por porcentaje de idioma en orden descendente

select language, percentage from languages where language LIKE '%sloven%' order by percentage desc;

select name from countries where id in (200,107,96,16);

select  cn.name, lgg.language, lgg.percentage from languages lgg
INNER JOIN countries cn ON lgg.country_id = cn.id
where lgg.language LIKE '%sloven%' 
order by lgg.percentage desc
;

select  name,language, percentage from languages
INNER JOIN countries ON languages.country_id = countries.id
where countries.id in (200,107,96,16)
order by percentage desc
;select * from cities;
select * from countries;
select * from languages; 

-- ¿Qué consulta harías para obtener todos los países que hablan esloveno? 
-- Tu consulta debe devolver el nombre del país, el idioma y el porcentaje de idioma. 
-- Tu consulta debe organizar el resultado por porcentaje de idioma en orden descendente.

select lg.language, lg.percentage from languages lg
where lg.language LIKE '%lovene%'
ORDER BY lg.percentage desc;

SELECT cou.name from countries cou
where cou.id in (16,96, 107,200);


-- ¿Qué consulta ejecutarías para mostrar el número total de ciudades para cada país? 
-- Su consulta debe devolver el nombre del país y el número total de ciudades. 
-- Tu consulta debe organizar el resultado por el número de ciudades en orden descendente.

select * from cities;
select name from countries;

select * from cities , countries
where cities.country_id = countries.id
;

select countries.name from cities
INNER JOIN countries ON cities.country_id = countries.id
;

select countries.name, count(countries.name) total
from cities
INNER JOIN countries ON cities.country_id = countries.id
group by countries.name
order by total desc;

-- ¿Qué consulta ejecutarías para obtener todos los idiomas en cada país con un porcentaje superior al 89%? 
-- Tu consulta debe organizar el resultado por porcentaje en orden descendente.

select * from countries;
select * from languages;

select * from languages
where percentage >89
;

select countries.name, languages.language, languages.percentage from languages
INNER JOIN countries ON countries.id = languages.country_id
where languages.percentage >89
order by languages.percentage desc;

-- alias
select ct.name nombre, lg.language lenguaje, lg.percentage porcentaje from languages lg
INNER JOIN countries ct ON ct.id = lg.country_id
where lg.percentage >89
order by lg.percentage desc
;

-- ¿Qué consulta haría para obtener todos los países con un área de superficie inferior a 501 y una población superior a 100,000?

select * from countries; -- surface_area, population

select * from countries
where surface_area < 501
and population > 100000
;

-- ¿Qué consulta harías para obtener países con solo Monarquía Constitucional con un capital superior a 200 y una esperanza de vida superior a 75 años?

select * from countries; -- government_form = 'Constitutional Monarchy'; capital; life_expectancy

select * from countries
where government_form = 'Constitutional Monarchy'
and capital > 200
and life_expectancy > 75
;

-- ¿Qué consulta harías para obtener todas las ciudades de Argentina dentro del distrito de Buenos Aires y tener una población superior a 500,000? 


select * from cities;
select * from countries;

select * from countries
where name like 'Ar%' -- 9
;

select * from cities
where country_id = 9
and district = 'Buenos Aires'
and population > 500000
;
-- La consulta debe devolver el nombre del país, el nombre de la ciudad, el distrito y la población.

select  countries.name as pais, cities.name as ciudad, cities.district as distrito, cities.population as poblacion
from cities
INNER JOIN countries ON countries.id = cities.country_id
where cities.country_id = 9
and cities.district = 'Buenos Aires'
and cities.population > 500000;

--  ¿Qué consulta harías para resumir el número de países en cada región? 
-- La consulta debe mostrar el nombre de la región y el número de países. 
-- Además, la consulta debe organizar el resultado por el número de países en orden descendente.

select * from countries;
select region from countries;
select region from countries order by region asc;
select region from countries group by region order by region asc;
select region, count(region) from countries group by region order by region asc;
-- final
select region, count(region) from countries
group by region
order by count(region) desc;
