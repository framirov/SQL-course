SELECT book.title as Название, author.name_author as Автор, book.amount + supply.amount as Количество
FROM supply, (book LEFT JOIN author
                    USING (author_id))
WHERE (book.title = supply.title) & (book.price = supply.price)