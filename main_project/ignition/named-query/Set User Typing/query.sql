UPDATE chat_participants
SET typing = :typing
WHERE user_id = :user_id AND chat_id = :chat_id;
