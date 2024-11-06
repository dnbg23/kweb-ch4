CREATE TABLE IF NOT EXISTS majors (
    major_code INT PRIMARY KEY,
    major_name VARCHAR(50) NOT NULL
);

INSERT INTO majors (major_code, major_name)
VALUES 
    (1, 'Computer Science'),
    (2, 'Electrical Engineering'),
    (3, 'Mechanical Engineering'),
    (4, 'Civil Engineering');

UPDATE majors
SET major_code = 32
WHERE major_name = 'Computer Science';
