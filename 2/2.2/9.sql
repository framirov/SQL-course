SELECT name_genre AS Жанр, count(author_id) AS Предствителей_жанра
FROM book INNER JOIN genre
    USING (genre_id)
GROUP BY name_genre