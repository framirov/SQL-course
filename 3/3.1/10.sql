SELECT name_student, count(DISTINCT attempt.attempt_id) as Всего_попыток, count(DISTINCT name_subject) as Всего_предметов
FROM subject INNER JOIN question
            ON subject.subject_id = question.subject_id
            INNER JOIN answer
            ON question.question_id = answer.question_id
            INNER JOIN testing
            ON testing.answer_id = answer.answer_id
            INNER JOIN attempt
            ON attempt.attempt_id = testing.attempt_id
            RIGHT JOIN student
            USING (student_id)
GROUP BY name_student
ORDER BY name_student DESC