SELECT name_subject, round(count(attempt_id),2) as Количество, round(sum(result)/count(attempt_id),2) as Среднее
FROM subject LEFT JOIN attempt USING (subject_id)
GROUP BY subject_id