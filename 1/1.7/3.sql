UPDATE fine, traffic_violation SET fine.sum_fine = traffic_violation.sum_fine
WHERE (fine.violation = traffic_violation.violation) AND (fine.sum_fine IS Null);

SELECT * FROM fine