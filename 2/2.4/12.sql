SELECT name_city as Город, sum(buy_book.amount * price) as Суммарная_прибыль
FROM city INNER JOIN client USING (city_id)
          INNER JOIN buy USING (client_id)
          INNER JOIN buy_book USING (buy_id)
          INNER JOIN book USING (book_id)
GROUP BY name_city
ORDER BY Суммарная_прибыль DESC