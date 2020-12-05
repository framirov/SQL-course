UPDATE book 
     INNER JOIN author
     on author.author_id = book.author_id
               INNER JOIN supply 
               on book.title = supply.title 
                  and supply.author = author.name_author
SET book.price = ((book.amount * book.price) + (supply.amount * supply.price))/ (book.amount + supply.amount),
    book.amount = book.amount + supply.amount,
    supply.amount = 0
WHERE (book.title = supply.title) & (book.price <> supply.price);

SELECT * FROM book;
SELECT * FROM supply