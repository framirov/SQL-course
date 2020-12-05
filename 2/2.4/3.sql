SELECT name_city, count(client_id) as Количество
FROM city INNER JOIN client
    USING (city_id)
    INNER JOIN buy
        USING (client_id)
GROUP BY name_city
ORDER BY Количество DESC, name_city