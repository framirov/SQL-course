SELECT author, round(SUM(price * amount),2) AS Стоимость, round((SUM(price * amount) * 0.18)/1.18, 2) AS НДС, round(SUM(price * amount)/ 1.18, 2) AS Стоимость_без_НДС
FROM book
GROUP BY author