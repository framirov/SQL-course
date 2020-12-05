SELECT city, count(city) AS Количество
FROM trip
GROUP BY city
ORDER BY count(city) DESC
LIMIT 2