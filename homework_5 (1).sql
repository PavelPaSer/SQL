 -- Подсчитать количество пользователей в каждом сообществе
CREATE OR REPLACE VIEW frend_counts AS
SELECT community_id, COUNT(*) AS user_count
FROM users_communities
GROUP BY community_id;

-- Выведите данные, используя написанное представление [SELECT]
SELECT * FROM frend_counts;

-- Удалите представление [DROP VIEW] 
DROP VIEW frend_counts



