SELECT birthday FROM student ORDER BY birthday DESC LIMIT 1;
SELECT MIN(payment_date) FROM payment;
SELECT AVG(mark) FROM mark WHERE subject_id = (SELECT P.id FROM subject P WHERE P.name = 'Math');
SELECT MIN(amount) FROM payment WHERE type_id = (SELECT id FROM paymenttype WHERE name = 'WEEKLY')