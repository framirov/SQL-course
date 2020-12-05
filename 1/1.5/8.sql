DELETE FROM supply
WHERE author in
(SELECT author
FROM book
GROUP BY author
HAVING SUM(amount) > 10);

SELECT * FROM supply;