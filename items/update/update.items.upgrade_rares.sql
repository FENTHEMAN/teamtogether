UPDATE items
SET rare = CASE
    WHEN rare = 'common' THEN 'uncommon'
    WHEN rare = 'uncommon' THEN 'rare'
    WHEN rare = 'rare' THEN 'epic'
    WHEN rare = 'epic' THEN 'mythic'
    WHEN rare = 'mythic' THEN 'legendary' 
    ELSE 'legendary'
END
WHERE rare != 'legendary'
RETURNING id, name, rare;