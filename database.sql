CREATE TABLE IF NOT EXISTS majors (
    major_code INT PRIMARY KEY,
    major_name VARCHAR(50) NOT NULL
);

INSERT INTO majors (major_code, major_name)
VALUES 
    (32, 'Computer Science'),             -- Updated major code for Computer Science
    (2, 'Electrical Engineering'),
    (3, 'Mechanical Engineering'),
    (4, 'Civil Engineering');


CREATE TABLE IF NOT EXISTS students (
    student_name VARCHAR(50) NOT NULL,
    admission_year YEAR NOT NULL,
    major_code INT NOT NULL,
    individual_id INT NOT NULL,
    student_id VARCHAR(15) AS (CONCAT(admission_year, major_code, individual_id)) STORED,
    phone_number VARCHAR(15),
    address VARCHAR(100),
    credits_completed INT DEFAULT 0,
    gpa FLOAT DEFAULT 0.0,
    enrollment_status BOOLEAN DEFAULT TRUE,
    PRIMARY KEY (admission_year, major_code, individual_id),
    FOREIGN KEY (major_code) REFERENCES majors(major_code)
);

INSERT INTO students (student_name, admission_year, major_code, individual_id, phone_number, address, gpa, credits_completed)
VALUES 
    ('Kyle', 2022, 32, 11, '123-4567-8901', 'Washington DC, USA', 3.6, 110),
    ('James', 2021, 2, 13, '456-7890-0123', 'Venice, Italy', 4.0, 65),
    ('Layla', 2023, 32, 15, '123-0987-6543', 'Bangkok, Thailand', 3.7, 88),
    ('Minji', 2024, 32, 22, '234-5643-9087', 'Seoul, Korea', 4.2, 125);
