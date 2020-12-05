SELECT author AS Автор, COUNT(author) AS Различных_книг, SUM(amount) as Количество_экземпляров
FROM book
GROUP BY author;