SELECT name, sum(per_diem * (datediff(date_last,date_first)+1)) as Сумма
FROM trip
WHERE name in 
(SELECT name
FROM trip
group by name
HAVING count(name) > 3)
GROUP BY name
ORDER BY Сумма DESC