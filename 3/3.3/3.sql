SELECT name_subject, count(result) as Количество, max(result) as Максимум, min(result) as Минимум, round(sum(result)/count(result),1) as Среднее
FROM subject INNER JOIN enrollee_subject USING (subject_id)
GROUP BY name_subject
ORDER BY name_subject