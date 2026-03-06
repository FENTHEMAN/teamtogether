WITH
unders_messages AS (
    SELECT
        messages.id,
        value AS unders_message
    FROM messages
    JOIN users ON messages.sender_id = users.id
    WHERE users.name = 'Under'
)
SELECT 
    unders_messages.id,
    unders_messages.unders_message
FROM unders_messages;


-- Or this format 

-- SELECT 
--     unders_messages.id,
--     unders_messages.unders_message
-- FROM (
--     SELECT
--         messages.id,
--         value AS unders_message
--     FROM messages
--     JOIN users ON messages.sender_id = users.id
--     WHERE users.name = 'Under'
-- ) AS unders_messages;