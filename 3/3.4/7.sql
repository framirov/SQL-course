CREATE TABLE student (name_program VARCHAR(50), name_enrollee VARCHAR(30), itog INT);
INSERT INTO student(name_program, name_enrollee, itog)
SELECT name_program, name_enrollee, itog
FROM applicant_order INNER JOIN program
                    USING(program_id)
                    INNER JOIN enrollee
                    USING(enrollee_id)
WHERE str_id <= plan
ORDER BY name_program, itog DESC