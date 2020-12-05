CREATE TABLE back_payment (SELECT name, number_plate, violation, sum_fine, date_violation FROM fine
WHERE date_payment IS Null);
SELECT * FROM back_payment