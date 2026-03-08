UPDATE messages m
SET value = value || ' <- marked by Fen'
FROM users u
WHERE
    m.sender_id = u.id AND u.name = 'Fen'