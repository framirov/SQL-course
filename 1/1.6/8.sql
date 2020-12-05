SELECT monthname(date_first) as Месяц, count(date_first) as Количество
FROM trip
GROUP BY monthname(date_first)
ORDER BY Количество DESC, monthname(date_first);