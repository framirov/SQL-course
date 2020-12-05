SELECT name, number_plate, violation
FROM fine
GROUP BY name, number_plate, violation
HAVING count(name) = 2
ORDER BY name