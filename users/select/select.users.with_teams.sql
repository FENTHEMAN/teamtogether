SELECT
    users.name,
    ARRAY_AGG(teams.name)
FROM team_members
JOIN users ON team_members.user_id = users.id
JOIN teams ON team_members.team_id = teams.id
GROUP BY users.name;