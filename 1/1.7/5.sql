UPDATE fine, (SELECT name, number_plate, violation
FROM fine
GROUP BY name, number_plate, violation
HAVING count(name) = 2
ORDER BY name) query_in
SET fine.sum_fine = 2 * fine.sum_fine
WHERE (fine.date_payment IS Null) & (fine.name = query_in.name) & (fine.number_plate = query_in.number_plate) & (fine.violation = query_in.violation);

SELECT * FROM fine