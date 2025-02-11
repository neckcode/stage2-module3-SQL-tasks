alter table student alter column birthday set NOT NULL;
alter table mark add constraint markcheck check (mark>=1 && mark <=10), alter column student_id set NOT NULL, alter column subject_id set NOT NULL;
alter table subject add constraint gradecheck check (grade>=1 && grade <=5);
alter table PaymentType add constraint nameunique unique(name);
alter table Payment alter column type_id set NOT NULL, alter column amount set NOT NULL, alter column date set NOT NULL;