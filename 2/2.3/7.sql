DELETE FROM author
WHERE author_id in (SELECT author_id
                    FROM book
                    WHERE genre_id in (SELECT genre_id
                                        FROM genre
                                        WHERE name_genre = 'Поэзия'));
                                        
SELECT * FROM author;

SELECT * FROM book;