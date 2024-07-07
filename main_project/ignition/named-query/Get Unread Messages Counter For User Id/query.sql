SELECT COUNT(DISTINCT(m.id))
FROM messages m
JOIN message_recipients mr ON m.id = mr.message_id
WHERE m.user_id = :user_id AND (mr.user_id = :recipient_user_id) AND m.status != "read"

