SELECT name_genre, title, name_author
FROM
    book INNER JOIN author
    USING (author_id)
        INNER JOIN genre
        USING (genre_id)
WHERE name_genre = 'Роман'
ORDER BY title