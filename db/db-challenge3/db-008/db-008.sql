SELECT u.name, r.name, DATE_FORMAT(ru.joined_at, '%Y-%m-%d') 
FROM rooms_users ru LEFT JOIN users u ON ru.user_id=u.id LEFT JOIN rooms r ON ru.room_id=r.id 
WHERE u.is_deleted='0' AND r.is_deleted='0' ORDER BY joined_at;