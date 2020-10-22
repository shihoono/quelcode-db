START TRANSACTION;
UPDATE rooms r 
LEFT JOIN rooms_users ru ON r.id=ru.room_id 
SET r.is_file_sendable=0, update_user_id=1 
WHERE r.is_deleted=0 
AND ru.room_id NOT IN (SELECT room_id FROM rooms_users WHERE user_id=1);
COMMIT;
