DELETE FROM team_members m
USING users u, teams t
WHERE
    m.user_id = u.id
    AND m.team_id = t.id
    AND u.name = 'Zomboyt'
RETURNING t.name as zomboyt_deleted_from;