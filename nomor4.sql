SELECT users.name as name, AVG(hobbies.level) AS level_avg
FROM map_user_hobby
INNER JOIN users ON map_user_hobby.id_user = users.id
INNER JOIN hobbies ON map_user_hobby.id_hobby = hobbies.id
GROUP BY users.id, users.name 
HAVING COUNT(DISTINCT hobbies.id) > 1; 