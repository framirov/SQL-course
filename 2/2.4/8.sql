SELECT DISTINCT name_client
FROM client INNER JOIN buy
    USING (client_id)
    INNER JOIN buy_book
        USING (buy_id)
        INNER JOIN book
            USING (book_id)
            INNER JOIN author
                USING (author_id)
WHERE name_author = 'Достоевский Ф.М.'