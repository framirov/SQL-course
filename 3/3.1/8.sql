SELECT name_student, name_subject, date_attempt, round(sum(is_correct) / 3 * 100,2) as Результат
FROM student INNER JOIN attempt
             ON student.student_id = attempt.student_id
             INNER JOIN testing
             ON attempt.attempt_id = testing.attempt_id
             INNER JOIN answer
             ON testing.answer_id = answer.answer_id
             INNER JOIN question
             ON question.question_id = answer.question_id
             INNER JOIN subject
             ON subject.subject_id = question.subject_id
GROUP BY name_student, name_subject, date_attempt
ORDER BY name_student, date_attempt DESCs