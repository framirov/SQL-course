CREATE TABLE applicant_order(progam_id INT, enrollee_id INT, itog INT);
INSERT INTO applicant_order(progam_id, enrollee_id, itog)
SELECT * FROM applicant
ORDER BY program_id, itog DESC;

DROP TABLE applicant;