select title, name_author, name_genre, price, amount
FROM book INNER JOIN author
    USING (author_id)
    INNER JOIN genre
        USING (genre_id)
WHERE genre_id  IN     (SELECT genre_id 
                        FROM book
                        GROUP BY genre_id
                        HAVING sum(amount) =   (SELECT sum(amount)
                                                FROM book
                                                GROUP BY genre_id
                                                ORDER BY sum(amount) DESC
                                                LIMIT 1))
ORDER BY title