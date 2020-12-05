UPDATE fine, payment
SET fine.date_payment = payment.date_payment,
fine.sum_fine =  IF(DATEDIFF(payment.date_payment, fine.date_violation)-1 <= 20, fine.sum_fine/2, fine.sum_fine)
WHERE (fine.name = payment.name) & (fine.number_plate = payment.number_plate) & (fine.violation = payment.violation) & (fine.date_violation = payment.date_violation);

SELECT * FROM fine