SELECT 
	u.id,
    u.username,
    u.first_name,
    u.last_name,
    u.active,
    u.gender
FROM 
    contacts c
JOIN 
    users u ON c.contact_user_id = u.id
WHERE 
    c.user_id = :user_id;
