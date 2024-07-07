SELECT 
    u.
FROM 
    users u
JOIN 
    chat_participants cp ON u.id = cp.user_id
WHERE 
    cp.chat_id IN (
        SELECT chat_id
        FROM chat_participants
        WHERE user_id = :user_id
    );
