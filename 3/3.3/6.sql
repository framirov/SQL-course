SELECT name_enrollee, if(sum(bonus)>0, sum(bonus), 0) as Бонус
FROM enrollee LEFT JOIN enrollee_achievement
              USING (enrollee_id)
              LEFT JOIN achievement
              USING(achievement_id)
GROUP BY name_enrollee
ORDER BY name_enrollee