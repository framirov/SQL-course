SET @num_pr = 0;
SET @row_num = 1;

UPDATE applicant_order
AS appliciant_order INNER JOIN (SELECT *, 
                                if(program_id = @num_pr, @row_num := @row_num + 1, @row_num := 1) AS str_num,
                                     @num_pr := program_id AS add_var 
                                FROM applicant_order) qwe
                    USING (program_id, enrollee_id)
SET appliciant_order.str_id = str_num