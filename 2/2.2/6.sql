SELECT name_author
FROM author INNER JOIN book
     USING (author_id)
GROUP BY name_author
HAVING count(DISTINCT genre_id) = 1