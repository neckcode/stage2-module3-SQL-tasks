DELETE FROM student WHERE id IN (SELECT DISTINCT student_id FROM mark WHERE subject_id IN (SELECT id FROM subject WHERE grade >= 4));
DELETE FROM mark WHERE student_id NOT IN (SELECT student_id FROM Student);
DELETE FROM payment WHERE student_id NOT IN (SELECT student_id FROM Student);
DELETE FROM student WHERE id IN(SELECT DISTINCT student_id FROM mark GROUP BY student_id HAVING MIN(mark)<4);
DELETE FROM paymenttype WHERE name = 'DAILY';
DELETE FROM payment WHERE type_id NOT IN (SELECT id FROM paymenttype);
DELETE FROM mark WHERE mark < 7;