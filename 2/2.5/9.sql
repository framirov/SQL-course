UPDATE buy_step INNER JOIN step USING(step_id)
SET date_step_end = '2020-04-13'
WHERE (buy_id = 5) & (name_step = 'Оплата');

UPDATE buy_step INNER JOIN step USING(step_id)
SET date_step_beg = '2020-04-13'
WHERE (buy_id = 5) & (step_id = (SELECT step_id + 1 FROM step WHERE name_step = 'Оплата'));

SELECT * FROM buy_step