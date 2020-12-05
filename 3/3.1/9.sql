SELECT name_subject, CONCAT(LEFT(name_question, 30), '...') as Вопрос, count(is_correct) as Всего_ответов, round(sum(is_correct)/count(is_correct) * 100 , 2) as Успешность
FROM subject INNER JOIN question
            ON subject.subject_id = question.subject_id
            INNER JOIN answer
            ON question.question_id = answer.question_id
            INNER JOIN testing
            ON testing.answer_id = answer.answer_id
            INNER JOIN attempt
            ON attempt.attempt_id = testing.attempt_id
GROUP BY name_question, name_subject
ORDER BY name_subject, Успешность DESC, name_question