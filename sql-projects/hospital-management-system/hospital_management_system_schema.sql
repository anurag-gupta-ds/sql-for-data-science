-- CREATE DATABASE hospital_management;
USE hospital_management;

CREATE TABLE departments(
	department_id INT AUTO_INCREMENT PRIMARY KEY,
	department_name VARCHAR(100) NOT NULL,
    opening_time TIME,
    closing_time TIME,
    fees INT NOT NULL
);

CREATE TABLE doctors(
	department_id INT ,
	doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT,
    gender ENUM('Male','Female','Other'),
    check_in_time TIME NOT NULL,
    check_out_time TIME NOT NULL,
    address VARCHAR(100) NOT NULL,
    phone_no VARCHAR(100) NOT NULL,
    CONSTRAINT fk_derpart FOREIGN KEY (department_id) REFERENCES departments(department_id)
    );
    
CREATE TABLE patients(
	patient_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT,
    gender ENUM('Male','Female','Other'),
    address VARCHAR(100) NOT NULL,
    phone_no VARCHAR(100) NOT NULL,
    weight DECIMAL(5,2),
    height DECIMAL(5,2)
);
    
CREATE TABLE appointments(
	appointment_id INT AUTO_INCREMENT PRIMARY KEY, 
    doctor_id INT,
    patient_id INT,
    appointment_date DATE,
    appointment_time TIME,
    status VARCHAR(100),
    CONSTRAINT fk_doctor FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id),
    CONSTRAINT fk_patient FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);
    
    
    