SELECT name_student, name_subject, DATEDIFF(max(date_attempt), min(date_attempt)) as Интервал
FROM student INNER JOIN attempt
             USING (student_id)
             INNER JOIN subject
             USING (subject_id)
GROUP BY student_id, subject_id
HAVING Интервал <> 0
ORDER BY Интервал