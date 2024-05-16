CREATE DATABASE school2;
USE school2;

CREATE TABLE student1 (
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);

INSERT INTO student1
(rollno, name, marks, grade, city)
VALUES
(101, "anil", 78, "C", "Pune"), 
(102, "bhumika", 93, "A", "Mumbai"), 
(103, "chetan", 85, "B", "Mumbai"), 
(104, "dhruv", 96, "A", "Delhi"), 
(105, "emanuel", 12, "F", "Delhi"), 
(106, "farah", 82,"B","Delhi");

SELECT * FROM student1;


Q.1 Delete student whose id is 105?
DELETE FROM student1 WHERE rollno = 105;

Q.2 write the query to find avg marks in each city in ascending order.

SELECT city, avg(marks)
FROM student1
GROUP BY city
ORDER BY avg(marks) ASC;

Q.3 Change the name of column name to full_name.

ALTER TABLE student1
CHANGE name full_name VARCHAR (50);

Q.4 Delete all the students who scored marks less than 80
 
DELETE FROM student1
WHERE marks < 80;

Q.5. Delete the column for grades. 

ALTER TABLE student1
DROP COLUMN grade;

Q.6 Update the grade into A whose marks is greater than 70 to 85.

UPDATE student1
SET grade = "A"
WHERE marks BETWEEN 70 to 85;

Q.7 write the query of top 3 student with marks?

SELECt * FROM student1 
ORDER BY marks DESC
LIMIT 3;

Q.8 write the query to find city and count of roll nor whose marks is grater then 90?

SELECT city, count(roll no)
FROM student1 
GROUP BY city 
HAVING MAX(marks) > 90;














