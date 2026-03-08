INSERT INTO MESSAGES (value, sender_id)
SELECT 
    'Greet! Mimoza is here!',
    m.user_id
FROM team_members m
JOIN teams t ON m.team_id = t.id
WHERE t.name = 'Mimoza';