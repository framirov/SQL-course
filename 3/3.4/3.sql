UPDATE applicant
AS applicant INNER JOIN (SELECT enrollee_id, sum(bonus) as Bonus
                        FROM enrollee_achievement
                        LEFT JOIN achievement
                        USING (achievement_id)
                        GROUP BY enrollee_id) qwe
             USING (enrollee_id)
SET applicant.itog = itog + qwe.Bonus;

SELECT * FROM applicant