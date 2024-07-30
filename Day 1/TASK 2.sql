CREATE DATABASE school_management;

USE school_management;

CREATE TABLE students (student_id INT,first_name VARCHAR(50),last_name VARCHAR(50),email VARCHAR(100),phone_number VARCHAR(15),date_of_birth DATE);

CREATE TABLE courses (course_id INT,course_name VARCHAR(100),course_description VARCHAR(50),credits INT);

ALTER TABLE students ADD COLUMN grade VARCHAR(2);

ALTER TABLE students MODIFY COLUMN phone_number VARCHAR(15);

INSERT INTO students (first_name, last_name, email, phone_number, date_of_birth, grade)
VALUES 
('Jonny', 'Doe', 'jonny.doe@example.com', '1234567890', '2000-01-01', 'A'),
('Jack', 'Smith', 'jack.smith@example.com', '0987654321', '2001-02-02', 'B'),
('Lily', 'Jones', 'Lily.jones@example.com', '1122334455', '2002-03-03', 'A');

INSERT INTO courses (course_name, course_description, credits)
VALUES 
('Maths', 'Study of numbers, shapes, and patterns.', 4),
('Physics', 'Study of matter and energy and the interactions between them.', 4),
('Chemistry', 'Study of substances and their properties and reactions.', 4),
('Biology', 'Study of living organisms.', 4),
('Computer Science', 'Study of computers and computational systems.', 4);

SELECT first_name, last_name, email FROM students;

DROP TABLE students;

DROP DATABASE school_management;
