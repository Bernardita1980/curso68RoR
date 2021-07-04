select * from faves; -- El * sirve para especificar todas las columnas
select user_id, tweet_id from faves; -- La , es para separar 
select user_id, tweet_id from faves where user_id=1;-- seleccionar por valor del registro
select * from faves where user_id=1 and tweet_id>=10;-- muestra todas las columnas con usuario1 y tweet = o > que 10