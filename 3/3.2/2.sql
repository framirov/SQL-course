INSERT INTO testing (attempt_id, question_id, answer_id)
SELECT (SELECT max(attempt_id) FROM attempt), question_id, Null
FROM question
WHERE subject_id = (SELECT subject_id
                    FROM attempt
                    ORDER BY attempt_id DESC
                    LIMIT 1)
ORDER BY RAND()
LIMIT 3