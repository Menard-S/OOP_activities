CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    middle_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    location VARCHAR(50)
);

INSERT INTO students (first_name, middle_name, last_name, age, location) VALUES
('Juan', 'Blank', 'Cruz', 18, 'Manila'),
('Anne', 'Blank', 'Wall', 20, 'Quezon City'),
('Theresa', 'Blank', 'Joseph', 21, 'Pasay'),
('Isaac', 'Blank', 'Gray', 19, 'Laguna'),
('Zack', 'Blank', 'Matthews', 22, 'Cavite'),
('Finn', 'Blank', 'LAm', 25, 'Batangas');

UPDATE students
SET first_name = 'Ivan', middle_name = 'Ingram', last_name = 'Howard', age = 25, location = 'Bulacan'
WHERE id = 1;

DELETE FROM students
WHERE id = 6;

--Alternative, if the ID of the last record is unknown
--DELETE FROM students
--WHERE id = (SELECT max(id) FROM students);

--Display the count of all students
SELECT COUNT(*) FROM students;

--Select all students located in Manila
SELECT * FROM students WHERE location = 'Manila';

--Display the average age of all students
SELECT AVG(age) FROM students;

--Display all students by age, descending order
SELECT * FROM students ORDER by age DESC;