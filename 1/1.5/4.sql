INSERT INTO book (title, author, price, amount)
SELECT title, author, price, amount
FROM supply
WHERE author not in (SELECT author FROM book);

SELECT * FROM book;