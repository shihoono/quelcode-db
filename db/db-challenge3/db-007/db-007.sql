SELECT id, name, description, CASE is_file_sendable WHEN '0' THEN '許可' WHEN '1' THEN '禁止' END, is_deleted, created_at, create_user_id, updated_at, update_user_id 
FROM rooms WHERE description LIKE '%ダイレクトチャット' AND is_deleted='0' ORDER BY id;
