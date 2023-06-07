 -- Подсчитать количество групп (сообществ), в которые вступил каждый пользователь.
SELECT user_id, COUNT(*) AS group_count
FROM users_communities
GROUP BY user_id;

-- Подсчитать количество пользователей в каждом сообществе
SELECT community_id, COUNT(*) AS user_count
FROM users_communities
GROUP BY community_id;

-- Пусть задан некоторый пользователь. Из всех пользователей соц. сети найдите человека, 
-- который больше всех общался с выбранным пользователем (написал ему сообщений).
SELECT from_user_id, COUNT(*) AS message_count
FROM messages m
WHERE to_user_id = 1
GROUP BY from_user_id
ORDER BY count(*) DESC
LIMIT 1;
