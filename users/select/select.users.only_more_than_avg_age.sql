SELECT *
FROM users
WHERE age > (SELECT AVG(age) FROM users);