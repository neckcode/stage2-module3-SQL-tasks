alter table student alter column birthday set NOT NULL;
alter table mark add check (mark>=1 AND mark <=10);
alter table mark alter column student_id set NOT NULL;
alter table mark alter column subject_id set NOT NULL;
ALTER TABLE subject ADD CONSTRAINT grade_check CHECK (grade >= 1 AND grade <= 5);
alter table PaymentType ADD UNIQUE (name);
alter table Payment alter column type_id set NOT NULL;
alter table Payment alter column amount set NOT NULL;
alter table Payment alter column date set NOT NULL;