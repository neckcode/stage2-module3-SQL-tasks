insert into student (name, birthday, groupnumber) values ('John', '2020-01-01', 1);
insert into student (name, birthday, groupnumber) values ('Chris', '2020-01-01', 1);
insert into student (name, birthday, groupnumber) values ('Carl', '2020-01-01', 1);
insert into student (name, birthday, groupnumber) values ('Oliver', '2020-01-01', 2);
insert into student (name, birthday, groupnumber) values ('James', '2020-01-01', 2);
insert into student (name, birthday, groupnumber) values ('Lucas', '2020-01-01', 2);
insert into student (name, birthday, groupnumber) values ('Henry', '2020-01-01', 2);
insert into student (name, birthday, groupnumber) values ('Jacob', '2020-01-01', 3);
insert into student (name, birthday, groupnumber) values ('Logan', '2020-01-01', 3);
insert into student (name, birthday, groupnumber) values ('Eric', '2020-01-01', 4);
insert into student (name, birthday, groupnumber) values ('Mask', '2020-01-01', 5);

insert into subject (name, grade) values ('Art', 1);
insert into subject (name, grade) values ('Music', 1);
insert into subject (name, grade) values ('Geography', 2);
insert into subject (name, grade) values ('History', 2);
insert into subject (name, grade) values ('PE', 3);
insert into subject (name, grade) values ('Math', 3);
insert into subject (name, grade) values ('Science', 4);
insert into subject (name, grade) values ('IT', 4);
insert into subject (name, grade) values ('Work', 5);
insert into subject (name, grade) values ('Swim', 5);

insert into paymenttype(name) values ('DAILY');
insert into paymenttype(name) values ('WEEKLY');
insert into paymenttype(name) values ('MONTHLY');

insert into payment (type_id, amount, payment_date, student_id) values ((select id from paymenttype where name = 'WEEKLY'), 1, '2020-01-01', (select id from student where name = 'John'));
insert into payment (type_id, amount, payment_date, student_id) values ((select id from paymenttype where name = 'MONTHLY'), 1, '2020-01-01', (select id from student where name = 'Oliver'));
insert into payment (type_id, amount, payment_date, student_id) values ((select id from paymenttype where name = 'WEEKLY'), 1, '2020-01-01', (select id from student where name = 'Henry'));
insert into payment (type_id, amount, payment_date, student_id) values ((select id from paymenttype where name = 'DAILY'), 1, '2020-01-01', (select id from student where name = 'James'));
insert into payment (type_id, amount, payment_date, student_id) values ((select id from paymenttype where name = 'DAILY'), 2, '2020-01-01', (select id from student where name = 'Mask'));
insert into payment (type_id, amount, payment_date, student_id) values ((select id from paymenttype where name = 'DAILY'), 2, '2020-01-01', (select id from student where name = 'Eric'));

insert into mark (student_id, subject_id, mark) values ((select id from student where name = 'Chris'), (select id from subject where name = 'Art'), 8);
insert into mark (student_id, subject_id, mark) values ((select id from student where name = 'Oliver'), (select id from subject where name = 'History'), 5);
insert into mark (student_id, subject_id, mark) values ((select id from student where name = 'James'), (select id from subject where name = 'Geography'), 9);
insert into mark (student_id, subject_id, mark) values ((select id from student where name = 'Jacob'), (select id from subject where name = 'Math'), 4);
insert into mark (student_id, subject_id, mark) values ((select id from student where name = 'Logan'), (select id from subject where name = 'PE'), 9);
insert into mark (student_id, subject_id, mark) values ((select id from student where name = 'Mask'), (select id from subject where name = 'Math'), 3);
insert into mark (student_id, subject_id, mark) values ((select id from student where name = 'Eric'), (select id from subject where name = 'PE'), 1);
