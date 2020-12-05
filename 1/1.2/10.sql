SELECT title, author
FROM book
WHERE (title LIKE '_% _%') & (author LIKE '%С.%');