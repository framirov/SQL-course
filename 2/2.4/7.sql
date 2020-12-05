SELECT buy_id, DATEDIFF(date_step_end, date_step_beg) as Количество_дней,
IF (DATEDIFF(date_step_end, date_step_beg) > days_delivery, DATEDIFF(date_step_end, date_step_beg) - days_delivery, 0) as Опоздание
FROM buy_step INNER JOIN buy
    USING (buy_id)
    INNER JOIN client
        USING (client_id)
        INNER JOIN city
            USING (city_id)
WHERE (step_id = 3) & (date_step_end IS NOT Null)