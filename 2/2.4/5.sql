SELECT buy_id, name_client, sum(price * buy_book.amount) as Стоимость
FROM client INNER JOIN buy
    USING (client_id)
    INNER JOIN buy_book
        USING (buy_id)
        INNER JOIN book
            USING (book_id)
GROUP BY buy_id