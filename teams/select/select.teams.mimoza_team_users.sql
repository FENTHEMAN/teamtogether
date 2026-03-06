SELECT users.name
FROM team_members
JOIN teams ON team_members.team_id = teams.id
JOIN users ON team_members.user_id = users.id
WHERE 
    teams.name = 'Mimoza'
    AND EXISTS (
        SELECT 1
        FROM users
        WHERE id = team_members.user_id
    );
GROUP BY users.name;