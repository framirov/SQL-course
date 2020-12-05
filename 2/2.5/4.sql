UPDATE book INNER JOIN buy_book USING(book_id)
SET book.amount = book.amount - buy_book.amount
WHERE (book.book_id = buy_book.book_id) & (buy_id = 5);

SELECT * FROM book