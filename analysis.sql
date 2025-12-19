-- 1. Total number of users
SELECT COUNT(*) AS total_users
FROM dataset;

-- 2. Number of churned users
SELECT COUNT(*) AS churned_users
FROM dataset
WHERE churned = 'yes';

-- 3. Average session time
SELECT AVG(session_time) AS avg_session_time
FROM dataset;

-- 4. Number of users who completed the key action
SELECT COUNT(*) AS key_action_users
FROM dataset
WHERE key_action_completed = 'yes';

-- 5. Churn by number of sessions
SELECT number_of_sessions,
       COUNT(*) AS users,
       SUM(CASE WHEN churned = 'yes' THEN 1 ELSE 0 END) AS churned_count
FROM dataset
GROUP BY number_of_sessions
ORDER BY number_of_sessions;
