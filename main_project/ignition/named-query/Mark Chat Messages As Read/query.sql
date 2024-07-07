UPDATE messages m
JOIN message_recipients mr ON m.id = mr.message_id
SET m.status = :status
WHERE (m.user_id = :user_id OR m.user_id = :recipient_user_id)
  AND (mr.user_id = :recipient_user_id OR mr.user_id = :user_id);
