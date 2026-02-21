SELECT COUNT(*) AS total_users
FROM dataset;

SELECT COUNT(*) AS churned_users
FROM dataset
WHERE churned = 'yes';

SELECT AVG(session_time) AS avg_session_time
FROM dataset;

SELECT COUNT(*) AS key_action_users
FROM dataset
WHERE key_action_completed = 'yes';

SELECT 
    number_of_sessions,
    COUNT(*) AS users,
    SUM(CASE WHEN churned = 'yes' THEN 1 ELSE 0 END) AS churned_count
FROM dataset
GROUP BY number_of_sessions
ORDER BY number_of_sessions;
