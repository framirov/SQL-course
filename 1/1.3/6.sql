SELECT round(AVG(price),2) AS Средняя_цена,
       round(SUM(price * amount),2) AS Стоимость
FROM book
WHERE amount BETWEEN 5 AND 14