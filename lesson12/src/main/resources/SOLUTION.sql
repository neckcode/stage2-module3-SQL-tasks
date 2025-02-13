DELETE FROM student WHERE id IN (SELECT DISTINCT student_id from mark WHERE subject_id IN (SELECT id FROM subject where grade >=4));
DELETE FROM Mark WHERE student_id NOT IN (SELECT student_id FROM Student);
DELETE FROM Payment WHERE student_id NOT IN (SELECT student_id FROM Student);
DELETE FROM student WHERE id IN (SELECT DISTINCT student_id FROM mark where mark<4);
DELETE  FROM paymenttype WHERE name = 'DAILY';
DELETE FROM payment WHERE type_id NOT IN (SELECT id FROM paymenttype);
DELETE FROM mark WHERE mark < 7;