SELECT year(date_payment) as Год, monthname(date_payment) as Месяц, sum(amount * price) as Сумма
FROM buy_archive
GROUP BY Год, Месяц
UNION ALL
SELECT year(date_step_end) as Год, monthname(date_step_end) as Месяц, sum(buy_book.amount * price) as Сумма
FROM book INNER JOIN buy_book USING(book_id)
          INNER JOIN buy USING(buy_id) 
          INNER JOIN buy_step USING(buy_id)
          INNER JOIN step USING(step_id)                  
WHERE date_step_end IS NOT Null and name_step = "Оплата"
GROUP BY Год, Месяц
ORDER BY Месяц, Год