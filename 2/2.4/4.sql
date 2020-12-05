SELECT buy_id, date_step_end
FROM step INNER JOIN buy_step
    USING (step_id)
WHERE step_id = 1 and date_step_end IS NOT Null