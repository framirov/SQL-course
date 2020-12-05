SELECT buy_id, name_step
FROM buy_step INNER JOIN step USING (step_id)
WHERE (date_step_end IS Null) & (date_step_beg IS NOT Null)