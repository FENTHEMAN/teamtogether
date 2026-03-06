SELECT
    teams.name,
    ARRAY_AGG(users.name) as members,
    COUNT(users.name) as members_count
FROM team_members
JOIN teams ON team_members.team_id = teams.id
JOIN users ON team_members.user_id = users.id
WHERE users.name != 'Fen'
GROUP BY teams.id, teams.name
HAVING COUNT(users.name) >= 2;