SELECT title, name_genre, price
FROM 
    genre INNER JOIN book
    USING (genre_id)
WHERE amount > 8
ORDER BY price DESC