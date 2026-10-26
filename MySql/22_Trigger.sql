USE startersql;

DROP TABLE IF EXISTS user_log;
CREATE TABLE user_log(
id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT UNIQUE NOT NULL,
name VARCHAR(100),
created_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Creating Trigger:
DROP TRIGGER IF EXISTS after_user_insert;
DELIMITER $$
CREATE TRIGGER after_user_insert
AFTER INSERT ON users
FOR EACH ROW
BEGIN
	INSERT INTO user_log(user_id, name)
    VALUES(NEW.id, NEW.name);
END $$
DELIMITER ;
DELETE FROM users WHERE id = 28;
INSERT INTO users(name, email, gender, date_of_birth, salary)
VALUES ('Sarah', 'sarah3@example.com', 'Female', '2005-05-18', 75000);

SELECT * FROM user_log;

SELECT * FROM users;
