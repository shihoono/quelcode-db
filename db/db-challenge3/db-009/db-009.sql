SELECT COUNT(m.room_id) AS 投稿数, r.name 
FROM messages m  LEFT JOIN rooms r ON m.room_id=r.id LEFT JOIN users u ON m.user_id=u.id 
WHERE u.is_deleted='0' AND m.is_deleted='0' GROUP BY m.room_id ORDER BY 投稿数 DESC;
