SELECT 
    chat_id
FROM 
    chat_participants
WHERE 
    user_id IN (:user1, :user2)
GROUP BY 
    chat_id
HAVING 
    COUNT(DISTINCT user_id) = 2;
