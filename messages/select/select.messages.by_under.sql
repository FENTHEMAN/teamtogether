SELECT 
    id,
    unders_message
FROM (
    SELECT
        messages.id,
        value AS unders_message
    FROM messages
    JOIN users ON messages.sender_id = users.id
    WHERE users.name = 'Under'
)