CREATE TABLE items ( 
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE,
    rare VARCHAR(20) NOT NULL CHECK (rare IN ('common', 'uncommon', 'rare', 'epic', 'mythic', 'legendary')),
    owner_id INT NOT NULL REFERENCES users(id),
    price INT NOT NULL CHECK (price > 0),
    is_selling BOOLEAN NOT NULL
);