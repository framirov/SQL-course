SELECT name_enrollee as Абитуриент, if(count(DISTINCT name_program), count(DISTINCT name_program), 0) as На_сколько_программ_проходит
FROM enrollee INNER JOIN program_enrollee
              USING (enrollee_id)
              INNER JOIN program
              USING (program_id)
              INNER JOIN program_subject
              USING (program_id)
              INNER JOIN subject
              USING(subject_id)
              INNER JOIN enrollee_subject
              ON subject.subject_id = enrollee_subject.subject_id and enrollee_subject.enrollee_id = enrollee.enrollee_id
WHERE result > min_result
GROUP BY name_enrollee
ORDER BY На_сколько_программ_проходит DESC