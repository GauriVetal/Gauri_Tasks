CREATE DATABASE SchoolDB;

USE SchoolDB;

CREATE TABLE students (s_id INT,s_name VARCHAR(50),s_age INT);

INSERT INTO students (s_id, s_name, s_age)
VALUES (1, 'Ram', 21), (2, 'Shamam', 21);

SELECT * FROM students;
