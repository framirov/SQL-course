SELECT author, title,
       round(IF(author="Есенин С.А.", price*1.05, IF(author="Булгаков М.А.", price*1.1, price)),2) AS new_price
FROM book;