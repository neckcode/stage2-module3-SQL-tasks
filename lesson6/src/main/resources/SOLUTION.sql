SELECT * FROM payment WHERE type_id = (SELECT ID FROM paymenttype WHERE name = 'MONTHLY');
SELECT * FROM mark WHERE subject_id = (SELECT ID FROM subject WHERE name = 'Art');
SELECT * FROM student WHERE id IN (SELECT student_id FROM payment WHERE type_id = (SELECT ID FROM paymenttype WHERE name = 'WEEKLY'));
SELECT * FROM student WHERE id IN (SELECT student_id FROM mark WHERE subject_id = (SELECT ID FROM subject WHERE name = 'Math'));

