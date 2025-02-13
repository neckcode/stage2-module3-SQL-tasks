SELECT * FROM mark WHERE mark > 6 ORDER BY mark DESC;
SELECT * FROM payment WHERE amount<300 ORDER BY amount ASC;
SELECT * FROM paymenttype ORDER BY name ASC;
SELECT * FROM student ORDER BY name DESC;
SELECT * FROM student WHERE id in (SELECT DISTINCT P.student_id FROM payment P where P.amount > 1000) ORDER BY birthday ASC;