SELECT * FROM payment WHERE amount >= 500;
SELECT * FROM student WHERE datediff(yy, birthday, GetDate())>=20;
SELECT * FROM student WHERE groupnumber = 10 AND datediff(yy, birthday, GetDate())<=20;
SELECT * FROM student WHERE name = 'Mike' OR groupnumber IN (4, 5, 6);
SELECT * FROM payment WHERE datediff(mm, payment_date, GetDate())<=8;
SELECT * FROM student WHERE name like 'A%';
SELECT * FROM student WHERE (name = 'Roxi' AND groupnumber = 4) OR (name = 'Tallie' AND groupnumber = 9);
