UPDATE attempt
SET result = (SELECT round(sum(is_correct) /3 * 100)
                FROM testing INNER JOIN answer USING(answer_id)
                GROUP BY attempt_id
                HAVING attempt_id = 8)
WHERE attempt_id = 8