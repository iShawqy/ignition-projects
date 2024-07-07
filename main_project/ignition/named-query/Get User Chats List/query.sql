SELECT 
    u.id, u.username, u.first_name, u.last_name,u.gender, cp.chat_id, c.pinned
FROM 
    users u
JOIN 
    chat_participants cp ON u.id = cp.user_id
JOIN 
    chats c ON cp.chat_id = c.id
WHERE 
	
    cp.chat_id IN (
        SELECT chat_id
        FROM chat_participants
        WHERE user_id = :user_id
    )
   AND (
        (:archived = 0 AND (c.archived_by != :user_id or c.archived_by IS NULL) ) OR 
        (:archived = 1 AND c.archived_by = :user_id)
    )
    ORDER BY 
    c.pinned DESC, 
    CASE WHEN c.pinned = 1 THEN c.pinned_on ELSE c.last_updated_on END DESC;