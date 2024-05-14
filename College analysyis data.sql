CREATE DATABASE college;
USE college;

CREATE TABLE student (
id INT PRIMARY KEY,
name VARCHAR(50)
);

INSERT INTO student 
(id, name)
VALUES 
(101, "adam"),
(102, "bob"),
(103, "casey");


DELETE FROM student where id = "105";

DROP TABLE student;
truncate student;

SELECT * FROM student;

ALTER TABLE student
DROP COLUMN stu_age;

ALTER TABLE school
RENAME To student;

ALTER TABLE student
ADD COLUMN stu_age INT DEFAULT 37;

ALTER TABLE student
MODIFY COLUMN age VARCHAR(2);

INSERT INTO student 
(id, name, stu_age)
VALUES 
(105, "adam", 125);

CREATE TABLE course (
id INT PRIMARY KEY,
name VARCHAR(50)
);

INSERT INTO course 
(id, name)
VALUES 
(102, "english"),
(105, "math"),
(103, "science"),
(107, "computer science");

DROP TABLE course;
TRUNCATE course;
SELECT * FROM course;

SELECT name from student
UNION ALL
SELECT name from course;

SELECT *
FROM student as s
JOIN course as c
ON s.id = c.id;


SELECT *
FROM student as s
RIGHT JOIN course as c
ON s.id = c.id;

SELECT *
FROM student as s
LEFT JOIN course as c
ON s.id = c.id;
