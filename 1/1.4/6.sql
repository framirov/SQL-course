SELECT author, title, price, amount, round((price * amount)/
(SELECT SUM(price * amount) FROM book) * 100,2)
AS income_percent
FROM book
ORDER BY income_percent DESC