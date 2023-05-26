SELECT users.name as name_user, COUNT(*) AS total
FROM map_user_hobby
INNER JOIN users ON map_user_hobby.id_user = users.id
INNER JOIN hobbies ON map_user_hobby.id_hobby = hobbies.id
WHERE users.status = 'aktif'
GROUP BY users.name 