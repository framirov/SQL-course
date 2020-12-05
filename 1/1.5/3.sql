INSERT INTO book (title, author, price, amount) 
       SELECT title, author, price, amount 
       FROM supply
       WHERE author not in ('Булгаков М.А.','Достоевский Ф.М.');
SELECT * FROM book;