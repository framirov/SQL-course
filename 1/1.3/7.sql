SELECT author, sum(price * amount) AS Стоимость
FROM book
WHERE (title not in ('Идиот','Белая гвардия'))
GROUP BY author
HAVING sum(price * amount) > 5000
ORDER BY sum(price * amount) DESC