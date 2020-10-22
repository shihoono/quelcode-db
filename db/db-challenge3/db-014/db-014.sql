START TRANSACTION;
DELETE ru 
FROM rooms_users ru 
LEFT JOIN users u ON ru.user_id=u.id 
WHERE u.is_deleted=1;
COMMIT;
