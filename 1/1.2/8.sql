SELECT title,author, price, amount
FROM book
WHERE ((price < 500)|(price > 600)) & (price * amount >= 5000)