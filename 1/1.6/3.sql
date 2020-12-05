SELECT city, count(city) AS Количество
FROM trip
GROUP BY city
ORDER BY city