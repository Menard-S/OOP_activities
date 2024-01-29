CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    middle_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    location VARCHAR(50)
);

INSERT INTO students (first_name, middle_name, last_name, age, location) VALUES
('John Lloyd', 'Blank', 'Cruz', 18, 'Manila'),
('Antonette', 'Blank', 'Taus', 18, 'Quezon City'),
('Sharon', 'Blank', 'Cuneta', 21, 'Pasay'),
('Bobby', 'Blank', 'Andrews', 23, 'Laguna'),
('Zack', 'Blank', 'Efron', 25, 'Cavite'),
('Onemig', 'Blank', 'Bondoc', 25, 'Batangas');

UPDATE students
SET first_name = 'Bea', middle_name = 'Binene', last_name = 'Alonzo', age = 22, location = 'Bulacan'
WHERE id = 1;

DELETE FROM students
WHERE id = 6;

--DELETE FROM students
--WHERE id = (SELECT max(id) FROM students);