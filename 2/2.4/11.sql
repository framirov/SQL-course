SELECT title, sum(Количество) as Количество, sum(Сумма) as Сумма
FROM
(SELECT title, sum(buy_archive.amount) as Количество, sum(buy_archive.price * buy_archive.amount) as Сумма
FROM buy_archive INNER JOIN book USING(book_id)
GROUP BY title
UNION ALL
SELECT title, sum(buy_book.amount) as Количество, sum(price * buy_book.amount) as Сумма
FROM book INNER JOIN buy_book USING(book_id)
          INNER JOIN buy USING(buy_id) 
          INNER JOIN buy_step USING(buy_id)
          INNER JOIN step USING(step_id)                  
WHERE date_step_end IS NOT Null and name_step = "Оплата"
GROUP BY title) query_in
GROUP BY title
ORDER BY Сумма DESC