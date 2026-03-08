INSERT INTO y18_users (id, name, email, age, rate)
VALUES 
    (1, 'Under', 'under@mail.und', 18, 5), -- Old
    (99, 'Atheq', 'atheq@mail.ath', 18, 2) -- New
ON CONFLICT (id) DO UPDATE
    SET rate = GREATEST(y18_users.rate, EXCLUDED.rate, 3)
RETURNING *;