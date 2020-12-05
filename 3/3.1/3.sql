SELECT name_student, result
FROM attempt INNER JOIN student USING (student_id)
WHERE result = (SELECT result
                FROM attempt INNER JOIN student USING (student_id)
                ORDER BY result DESC
                LIMIT 1)
ORDER BY name_student