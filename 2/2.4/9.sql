SELECT name_genre, sum(buy_book.amount) as Количество
FROM genre INNER JOIN book
    USING (genre_id)
    INNER JOIN buy_book
        USING (book_id)
GROUP BY name_genre
HAVING Количество = 


(SELECT sum(buy_book.amount) as Количество
FROM genre INNER JOIN book
    USING (genre_id)
    INNER JOIN buy_book
        USING (book_id)
GROUP BY name_genre
ORDER BY Количество DESC
LIMIT 1)