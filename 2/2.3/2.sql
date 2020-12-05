INSERT INTO author (name_author)  (SELECT supply.author
                                           FROM supply
                                           WHERE supply.author NOT IN (SELECT name_author FROM author));

SELECT * FROM author