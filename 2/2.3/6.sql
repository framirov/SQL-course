DELETE FROM genre
WHERE genre_id in (SELECT genre_id
                    FROM book
                    GROUP BY genre_id
                    HAVING count(DISTINCT title) < 3);

SELECT * FROM genre;

SELECT * FROM book;