CREATE DATABASE IF NOT EXISTS your_database_name;
USE kweb;

CREATE TABLE students (
	student_name VARCHAR(50) NOT NULL,
	admission_year YEAR NOT NULL, 
	major_code VARCHAR(10) NOT NULL, 
	individual_id INT NOT NULL,
	phone_number VARCHAR(15),
	address VARCHAR(100),
	credits_completed INT DEFAULT 0,
	gpa FLOAT DEFAULT 0.0,
	enrollment_status BOOLEAN DEFAULT TRUE,
	PRIMARY KEY(admission_year, major_code, individual_id)
	);