SELECT name, city, datediff(date_last, date_first)+1 AS Длительность
FROM trip
WHERE city not in ('Москва','Санкт-Петербург')
ORDER BY Длительность DESC, city DESC