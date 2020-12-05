SELECT name_subject, count(DISTINCT student_id) as Количество
FROM subject LEFT JOIN attempt USING(subject_id)
GROUP BY subject_id
ORDER BY Количество DESC, name_subject