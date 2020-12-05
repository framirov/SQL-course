UPDATE book SET buy = amount
WHERE amount < buy;
UPDATE book SET price = price * 0.9
WHERE buy=0;

SELECT * FROM book;