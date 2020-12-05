SELECT name_program as Программа, if(max(str_id) <= plan, plan, max(str_id)) as Прошло_студентов, if(max(str_id) > plan, max(str_id)- plan, 0) as Не_прошло_студентов
FROM applicant_order INNER JOIN program
                    USING(program_id)
GROUP BY name_program, plan
ORDER BY name_program