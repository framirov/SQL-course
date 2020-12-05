CREATE TABLE buy_pay
SELECT buy_id, sum(buy_book.amount) as Количество, sum(buy_book.amount * price) as Итого 
FROM author INNER JOIN book USING(author_id)
            INNER JOIN buy_book USING(book_id)
WHERE buy_id = 5;

SELECT * FROM buy_pay