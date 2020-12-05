SELECT name, city, date_first, date_last
FROM trip
WHERE datediff(date_last, date_first) = (SELECT min(datediff(date_last, date_first)) FROM trip)