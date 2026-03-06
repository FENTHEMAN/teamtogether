CREATE TABLE messages (
    id SERIAL PRIMARY KEY,
    value TEXT NOT NULL,
    sender_id INT REFERENCES users(id)
);