UPDATE items
SET rare = CASE
    WHEN rare = 'uncommon' THEN 'common'
    WHEN rare = 'rare' THEN 'uncommon'
    WHEN rare = 'epic' THEN 'rare'
    WHEN rare = 'mythic' THEN 'epic'
    WHEN rare = 'legendary' THEN 'mythic'
    ELSE 'common'
END
WHERE rare != 'common'
RETURNING id, name, rare;