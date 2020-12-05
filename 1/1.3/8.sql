SELECT author AS Автор, max(price) as Самая_дорогая_книга
FROM book
GROUP BY author
ORDER BY Самая_дорогая_книга DESC