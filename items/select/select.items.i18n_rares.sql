SELECT
    rare AS en_rare,
    CASE
        WHEN rare = 'common' THEN 'обычный'
        WHEN rare = 'uncommon' THEN 'необычный'
        WHEN rare = 'rare' THEN 'редкий'
        WHEN rare = 'epic' THEN 'эпический'
        WHEN rare = 'mythic' THEN 'мифический'
        WHEN rare = 'legendary' THEN 'легендарный'
    END AS ru_rare
FROM items
GROUP BY rare
ORDER BY CASE
    WHEN rare = 'common' THEN 1
    WHEN rare = 'uncommon' THEN 2
    WHEN rare = 'rare' THEN 3
    WHEN rare = 'epic' THEN 4
    WHEN rare = 'mythic' THEN 5
    WHEN rare = 'legendary' THEN 6
END DESC