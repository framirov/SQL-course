SELECT name_author, sum(amount) AS Количество
FROM author LEFT JOIN book
     on author.author_id = book.author_id
GROUP BY name_author
HAVING (Количество < 10) OR (count(title) = 0)
ORDER BY Количество