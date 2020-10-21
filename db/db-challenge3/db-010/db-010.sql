SELECT u.name, m.created_at, r.name 
FROM users u LEFT JOIN messages m ON u.id=m.user_id LEFT JOIN rooms r ON m.room_id=r.id 
WHERE (m.created_at=(SELECT max(message.created_at) FROM messages AS message WHERE r.id=message.room_id)) 
AND u.is_deleted='0' AND m.is_deleted='0' ORDER BY r.id;