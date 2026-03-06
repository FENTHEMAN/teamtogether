CREATE TABLE team_members (          
    user_id INT NOT NULL REFERENCES users(id),
    team_id INT NOT NULL REFERENCES teams(id) 
);
