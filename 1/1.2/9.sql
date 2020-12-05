SELECT title, author
FROM book
WHERE (price BETWEEN 540.50 AND 800) & ((amount = 2)|(amount = 3)|(amount = 5)|(amount = 7))