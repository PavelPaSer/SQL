 -- Получение списка имен пользователей без повторений в алфавитном порядке
SELECT DISTINCT firstname
FROM users
ORDER BY firstname;

-- Подсчет количества мужчин старше 35 лет
SELECT COUNT(*) AS count
FROM profiles
WHERE gender = 'm' AND birthday > 1988-05-27;

-- Подсчет количества заявок в друзья в каждом статусе
SELECT status, COUNT(*) AS count
FROM friend_requests
GROUP BY status;
 
 