SELECT name_department, name_program, plan, count(enrollee_id) as Количество, round(count(enrollee_id)/plan, 2) as Конкурс
FROM department INNER JOIN program
                USING (department_id)
                INNER JOIN program_enrollee
                USING (program_id)
GROUP BY name_department, name_program, plan
ORDER BY Конкурс DESC