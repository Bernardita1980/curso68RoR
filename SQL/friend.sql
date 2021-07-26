use amigos;

SELECT users.first_name AS usuario_nom, users.last_name AS Usuario_ape, user2.first_name AS amigo_nom, user2.last_name AS amigo_ape
FROM users
JOIN friendships
ON users.id = friendships.user_id
JOIN users AS user2
ON friendships.friend_id = user2.id;

#1.Devuelva a todos los usuarios que son amigos de Kermit, asegúrese de que sus 
#nombres se muestren en los resultados.

SELECT users.first_name AS usuario_nom, users.last_name AS Usuario_ape, user2.first_name AS amigo_nom, user2.last_name AS amigo_ape
FROM users
JOIN friendships
ON users.id = friendships.user_id
JOIN users AS user2
ON friendships.friend_id = user2.id
WHERE friendships.friend_id = 4

#2.Devuelve el recuento de todas las amistades.

SELECT friendships.user_id, users.first_name, users.last_name, COUNT(friendships.friend_id) AS total_amigos
FROM users
JOIN friendships
ON users.id = friendships.user_id
GROUP BY friendships.user_id
ORDER BY users.first_name

#3.Descubre quién tiene más amigos y devuelve el recuento de sus amigos.
SELECT users.first_name AS usuario_nom, users.last_name AS Usuario_ape, user2.first_name AS amigo_nom, user2.last_name AS amigo_ape
FROM users
JOIN friendships
ON users.id = friendships.user_id
JOIN users AS user2
ON friendships.friend_id = user2.id
WHERE friendships.friend_id = 4;

#4.Crea un nuevo usuario y hazlos amigos de Eli Byers, Kermit The Frog y Marky Mark.

#5.Devuelve a los amigos de Eli en orden alfabético.

SELECT user2.first_name, user2.last_name FROM users
JOIN friendships
ON users.id = friendships.user_id
JOIN users AS user2
ON friendships.friend_id = user2.id
WHERE users.id = 2
Order by user2.first_name

#6.Eliminar a Marky Mark de los amigos de Eli.
DELETE FROM friendships 
WHERE user_id = 2 AND friend_id = 5;

#.7Devuelve todas las amistades, mostrando solo el nombre y apellido de ambos amigos
SELECT iden, nom, ape, MAX(contador) AS amigos
FROM (SELECT friendships.user_id AS iden, first_name AS nom, last_name AS ape, COUNT(friendships.friend_id) AS contador 
FROM users
JOIN friendships
ON users.id = friendships.user_id
GROUP BY friendships.user_id
ORDER BY nom) AS tabla
JOIN friendships
ON iden = friendships.user_id
GROUP BY tabla.iden;