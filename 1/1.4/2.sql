SELECT author, title, price
FROM book
WHERE price - 150 <= (SELECT MIN(price) FROM book)
ORDER BY price