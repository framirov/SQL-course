SELECT author.name_author, book.title, count(buy_book.book_id) as Количество
FROM client INNER JOIN buy
     USING (client_id)
            LEFT JOIN buy_book
            USING (buy_id)
                       RIGHT JOIN book
                       USING (book_id)
                               INNER JOIN author
                               USING (author_id)
GROUP BY book_id
ORDER BY author.name_author, book.title