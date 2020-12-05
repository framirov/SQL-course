SELECT name_question, name_answer, if(is_correct, 'Верно', 'Неверно') as Результат
FROM question INNER JOIN testing
              USING(question_id)
              INNER JOIN answer
              USING (answer_id)
              INNER JOIN attempt
              USING (attempt_id)
              INNER JOIN student
              USING (student_id)
WHERE (name_student = 'Семенов Иван') & (attempt_id = 7)