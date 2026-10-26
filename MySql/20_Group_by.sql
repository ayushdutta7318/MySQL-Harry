USE startersql;

SELECT * FROM users;
SELECT gender, AVG(salary) AS avg_salary
FROM users
GROUP BY gender;

-- ALiter

SELECT gender AS gender, AVG(salary) as avg_salary, COUNT(*) as gender_count 
FROM users GROUP BY gender;

-- HAVING clause:

SELECT gender AS gender, AVG(salary) as avg_salary, COUNT(*) as gender_count 
FROM users GROUP BY gender
HAVING AVG(salary) < 61000;

-- WHERE caluse cannot be used after GROUP BY clause, that is if we need filtering after GROUP BY we will use HAVING clause

-- ANother Eg:
SELECT refered_by_id, COUNT(*) AS total_refered
FROM users
WHERE refered_by_id IS NOT NULL
GROUP BY refered_by_id
HAVING COUNT(*) > 1;