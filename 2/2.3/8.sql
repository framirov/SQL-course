DELETE FROM author
WHERE author_id in (SELECT author_id
                    FROM book
                    GROUP BY author_id
                    HAVING author_id = (SELECT author_id
                                        FROM book
                                        GROUP BY author_id
                                        ORDER BY sum(amount)
                                        LIMIT 1));

SELECT * FROM author;
SELECT * FROM book;