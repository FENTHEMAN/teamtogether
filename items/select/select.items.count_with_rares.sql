SELECT
    COUNT(*) AS total_items_count,
    COUNT(*) FILTER (WHERE rare = 'common') AS common_items_count,
    COUNT(*) FILTER (WHERE rare = 'uncommon') AS uncommon_items_count,
    COUNT(*) FILTER (WHERE rare = 'rare') AS rare_items_count,
    COUNT(*) FILTER (WHERE rare = 'epic') AS epic_items_count,
    COUNT(*) FILTER (WHERE rare = 'mythic') AS mythic_items_count,
    COUNT(*) FILTER (WHERE rare = 'legendary') AS legendary_items_count
FROM items;