SELECT name_program, plan
FROM program
WHERE plan = (SELECT max(plan) FROM program)