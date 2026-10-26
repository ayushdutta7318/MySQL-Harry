USE startersql;
-- This is one way to view table
SELECT * FROM users;

-- Other way is: Stored procedure

-- DELIMITER $$
-- CREATE PROCEDURE select_users()
-- BEGIN
-- 	SELECT * FROM users;
-- END $$
-- DELIMITER ;

-- CALL select_users();

-- Another Procedure:
-- How to delete procedure
DROP PROCEDURE IF EXISTS AddUser;

DELIMITER $$
CREATE PROCEDURE AddUser(
	IN p_name VARCHAR(100),
    IN p_email VARCHAR(100),
    IN p_gender ENUM('Male', 'Female', 'Other'),
    IN p_dob DATE,
    IN p_salary INT
)
BEGIN
	INSERT INTO users (name, email, gender, date_of_birth, salary)
    VALUES (p_name, p_email, p_gender, p_dob, p_salary);
    SELECT * FROM users;
END $$
DELIMITER ;

-- CALL AddUser('Ayush', 'ayush@example.com', 'Male', '1998-07-19', 100000); 

SHOW PROCEDURE STATUS WHERE Db = 'startersql';