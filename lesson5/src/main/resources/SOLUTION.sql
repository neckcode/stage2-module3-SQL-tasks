SELECT * FROM payment WHERE amount >= 500;
SELECT * FROM student WHERE birthday < DATEADD(YEAR, -20, '20250214');
SELECT * FROM student WHERE groupnumber = 10 AND birthday > DATEADD(YEAR, -20, '20250214');
SELECT * FROM student WHERE name like 'Mike %' OR groupnumber IN (4, 5, 6);
SELECT * FROM payment WHERE payment_date > DATEADD(MONTH, -8, '20250214');
SELECT * FROM student WHERE name like 'A%';
SELECT * FROM student WHERE (name like 'Roxi %' AND groupnumber = 4) OR (name like 'Tallie %' AND groupnumber = 9);