SELECT u.*
    FROM users AS u
    JOIN sessions AS s ON u.user_id = s.user_id
    WHERE s.session_start > '2023-01-04' 
    GROUP BY u.user_id
    HAVING COUNT(u.user_id) > 7;