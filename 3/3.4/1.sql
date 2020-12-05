CREATE TABLE applicant(progam_id INT, enrollee_id INT, itog INT);
INSERT INTO applicant(progam_id, enrollee_id, itog)
SELECT program_id, enrollee.enrollee_id, sum(result) as itog
FROM enrollee INNER JOIN program_enrollee
              USING (enrollee_id)
              INNER JOIN program
              USING (program_id)
              INNER JOIN program_subject
              USING (program_id)
              INNER JOIN subject
              USING(subject_id)
              INNER JOIN enrollee_subject
              ON subject.subject_id = enrollee_subject.subject_id and enrollee_subject.enrollee_id = enrollee.enrollee_id
GROUP BY program_id, enrollee_id
ORDER BY program_id, itog DESC;
SELECT * FROM applicant