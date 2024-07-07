SELECT m.timestamp, m.text
FROM messages m
JOIN message_recipients mr ON m.id = mr.message_id
WHERE m.user_id = :user_id AND (mr.user_id = :recipient_user_id)
ORDER BY m.timestamp desc
limit 1
