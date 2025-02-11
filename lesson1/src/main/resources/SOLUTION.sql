CREATE TABLE student
(
    id          BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name        VARCHAR,
    birthaday   DATE   NOT NULL,
    groupnumber INT    NOT NULL
);
CREATE TABLE subject
(
    id          BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name        VARCHAR(250),
    description VARCHAR(250),
    grade       INT    NOT NULL
);
CREATE TABLE paymenttype
(
    id   BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(250)
);
CREATE TABLE payment
(
    id           BIGINT    NOT NULL AUTO_INCREMENT PRIMARY KEY,
    type_id      BIGINT    NOT NULL,
    amount       decimal   NOT NULL,
    student_id   BIGINT    NOT NULL,
    payment_date TIMESTAMP NOT NULL,
    foreign key (type_id) references paymenttype (id),
    foreign key (student_id) references student (id)
);
CREATE TABLE mark
(
    id         BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    student_id BIGINT NOT NULL,
    subject_id BIGINT NOT NULL,
    mark       INT    NOT NULL,
    foreign key (student_id) references student (id),
    foreign key (subject_id) references subject (id)
);