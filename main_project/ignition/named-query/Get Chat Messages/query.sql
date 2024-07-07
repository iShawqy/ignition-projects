SELECT m.id,m.user_id as chatterId, mr.user_id as chatteeId, m.text, m.timestamp, m.status
FROM messages m
JOIN message_recipients mr ON m.id = mr.message_id
WHERE (m.user_id = :user_id or m.user_id = :recipient_user_id)
  AND (mr.user_id = :recipient_user_id or mr.user_id =:user_id)
ORDER BY m.timestamp desc
