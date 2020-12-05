SELECT name, city, date_first, per_diem * (datediff(date_last,date_first)+1) as Сумма
FROM trip
WHERE month(date_first) in (2,3)
ORDER BY name, Сумма DESC