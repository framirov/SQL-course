DELETE FROM testing
WHERE attempt_id in (SELECT attempt_id from attempt WHERE date_attempt < '2020-05-01');

DELETE FROM attempt
WHERE date_attempt < '2020-05-01';