USE vk;

-- 1. Написать функцию, которая удаляет всю информацию об указанном пользователе из БД vk. Пользователь задается по id. 
-- Удалить нужно все сообщения, лайки, медиа записи, профиль и запись из таблицы users.

DROP FUNCTION IF EXISTS DeleteUserFunc;

DELIMITER //

CREATE FUNCTION DeleteUserFunc(delete_user_id INT)
RETURNS INT
BEGIN
    DECLARE deleted_user_id INT;
    
    DELETE FROM likes WHERE user_id = delete_user_id;

    DELETE FROM users_communities WHERE user_id = delete_user_id;

    DELETE FROM messages WHERE to_user_id = delete_user_id OR from_user_id = delete_user_id;
   
    DELETE FROM friend_requests WHERE initiator_user_id = delete_user_id OR target_user_id = delete_user_id;
    

    DELETE l FROM media m
    JOIN likes l ON l.media_id = m.id
    WHERE m.user_id = delete_user_id;
    
    UPDATE profiles SET photo_id = NULL WHERE photo_id IN (
        SELECT id FROM media WHERE user_id = delete_user_id
    );
  
    DELETE FROM media WHERE user_id = delete_user_id;
    
    DELETE FROM profiles WHERE user_id = delete_user_id;
    
    DELETE FROM users WHERE id = delete_user_id;
    
    SET deleted_user_id = delete_user_id;
    
    RETURN deleted_user_id;
    
END; // 

DELIMITER ;

SELECT DeleteUserFunc(3) AS user_id_deleted;


-- 2.Предыдущую задачу решить с помощью процедуры и обернуть используемые команды в транзакцию внутри процедуры.

DROP PROCEDURE IF EXISTS DeleteUserProc;

DELIMITER //

CREATE PROCEDURE DeleteUserProc(delete_user_id INT)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN ROLLBACK; END;

    START TRANSACTION;
    
    DELETE FROM likes WHERE user_id = delete_user_id;
    
    DELETE FROM users_communities WHERE user_id = delete_user_id;
    
    DELETE FROM messages WHERE to_user_id = delete_user_id OR from_user_id = delete_user_id;
    
    DELETE FROM friend_requests WHERE initiator_user_id = delete_user_id OR target_user_id = delete_user_id;
    
    DELETE l FROM media m
    JOIN likes l ON l.media_id = m.id
    WHERE m.user_id = delete_user_id;
    
    UPDATE profiles SET photo_id = NULL WHERE photo_id IN (
        SELECT id FROM media WHERE user_id = delete_user_id
    );
    
    DELETE FROM media WHERE user_id = delete_user_id;
    
    DELETE FROM profiles WHERE user_id = delete_user_id;
    
    DELETE FROM users WHERE id = delete_user_id;
    
    COMMIT;
    
END; // 

DELIMITER ;

CALL DeleteUserProc(2);