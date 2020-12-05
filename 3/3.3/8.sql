SELECT name_program
FROM program
WHERE (program_id in (SELECT program_id
FROM program INNER JOIN program_subject USING (program_id)
             INNER JOIN subject USING (subject_id)
WHERE name_subject = 'Математика')) &
(program_id in (SELECT program_id
FROM program INNER JOIN program_subject USING (program_id)
             INNER JOIN subject USING (subject_id)
WHERE name_subject = 'Информатика'))
ORDER BY name_program