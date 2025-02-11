alter table student alter column birthday set NOT NULL;
alter table mark add check (mark>=1 AND mark <=10), alter column student_id set NOT NULL, alter column subject_id set NOT NULL;
alter table subject add check (grade>=1 AND grade <=5);
alter table PaymentType ADD UNIQUE (name);
alter table Payment alter column type_id set NOT NULL, alter column amount set NOT NULL, alter column date set NOT NULL;