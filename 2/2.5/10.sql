SELECT name_step, count(buy_id)
FROM step CROSS JOIN buy_step  USING(step_id)
WHERE (date_step_beg IS NOT Null) & (date_step_end IS Null)
GROUP BY step_id