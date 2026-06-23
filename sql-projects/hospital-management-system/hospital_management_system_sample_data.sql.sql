INSERT INTO departments (department_name, opening_time, closing_time, fees) VALUES
('Cardiology', '09:00:00', '17:00:00', 800),
('Neurology', '09:00:00', '16:00:00', 900),
('Orthopedics', '08:00:00', '18:00:00', 700),
('General Medicine', '08:00:00', '20:00:00', 500),
('Pediatrics', '09:00:00', '17:00:00', 600),
('Dermatology', '10:00:00', '16:00:00', 650),
('ENT', '09:00:00', '15:00:00', 550),
('Gynecology', '09:00:00', '17:00:00', 750);

INSERT INTO doctors (department_id, name, age, gender, check_in_time, check_out_time, address, phone_no) VALUES
(1, 'Dr. Rajesh Sharma', 45, 'Male', '09:00:00', '17:00:00', 'Koregaon Park, Pune', '9876543210'),
(1, 'Dr. Anjali Mehta', 38, 'Female', '09:00:00', '17:00:00', 'Baner, Pune', '9876543211'),
(2, 'Dr. Vikram Joshi', 50, 'Male', '09:00:00', '16:00:00', 'Aundh, Pune', '9876543212'),
(2, 'Dr. Sneha Kulkarni', 42, 'Female', '09:00:00', '16:00:00', 'Kothrud, Pune', '9876543213'),
(3, 'Dr. Amit Patil', 47, 'Male', '08:00:00', '18:00:00', 'Hadapsar, Pune', '9876543214'),
(3, 'Dr. Pooja Deshmukh', 35, 'Female', '08:00:00', '18:00:00', 'Wakad, Pune', '9876543215'),
(4, 'Dr. Suresh Iyer', 55, 'Male', '08:00:00', '20:00:00', 'Viman Nagar, Pune', '9876543216'),
(4, 'Dr. Kavita Reddy', 40, 'Female', '08:00:00', '20:00:00', 'Hinjewadi, Pune', '9876543217'),
(5, 'Dr. Manoj Gupta', 39, 'Male', '09:00:00', '17:00:00', 'Pimple Saudagar, Pune', '9876543218'),
(5, 'Dr. Ritu Singh', 33, 'Female', '09:00:00', '17:00:00', 'Magarpatta, Pune', '9876543219'),
(6, 'Dr. Arjun Nair', 41, 'Male', '10:00:00', '16:00:00', 'Kalyani Nagar, Pune', '9876543220'),
(7, 'Dr. Deepika Rao', 36, 'Female', '09:00:00', '15:00:00', 'Yerwada, Pune', '9876543221'),
(8, 'Dr. Neha Kapoor', 44, 'Female', '09:00:00', '17:00:00', 'Shivajinagar, Pune', '9876543222'),
(1, 'Dr. Sanjay Verma', 52, 'Male', '09:00:00', '17:00:00', 'Camp, Pune', '9876543223'),
(4, 'Dr. Priyanka Das', 31, 'Female', '08:00:00', '20:00:00', 'Aundh, Pune', '9876543224');

INSERT INTO patients (name, age, gender, address, phone_no, weight, height) VALUES
('Rohan Kumar', 28, 'Male', 'Deccan, Pune', '9123456701', 72.50, 175.00),
('Anita Desai', 34, 'Female', 'Swargate, Pune', '9123456702', 58.30, 162.00),
('Vikas Pawar', 45, 'Male', 'Katraj, Pune', '9123456703', 80.00, 170.50),
('Meera Joshi', 29, 'Female', 'Bibwewadi, Pune', '9123456704', 55.20, 158.00),
('Sanjay Kale', 60, 'Male', 'Erandwane, Pune', '9123456705', 78.40, 172.00),
('Pooja Bhosale', 25, 'Female', 'Karve Nagar, Pune', '9123456706', 60.00, 165.00),
('Ramesh Yadav', 50, 'Male', 'Warje, Pune', '9123456707', 85.60, 168.00),
('Kiran Salunkhe', 33, 'Female', 'Kondhwa, Pune', '9123456708', 62.30, 160.00),
('Akash More', 22, 'Male', 'NIBM Road, Pune', '9123456709', 68.00, 174.00),
('Shalini Patil', 41, 'Female', 'Sinhagad Road, Pune', '9123456710', 57.80, 159.00),
('Nikhil Jadhav', 37, 'Male', 'Dhanori, Pune', '9123456711', 75.00, 176.00),
('Swati Gaikwad', 26, 'Female', 'Lohegaon, Pune', '9123456712', 54.50, 161.00),
('Prashant Shinde', 48, 'Male', 'Bavdhan, Pune', '9123456713', 82.10, 169.00),
('Rekha Pawar', 55, 'Female', 'Hadapsar, Pune', '9123456714', 65.00, 156.00),
('Gaurav Chavan', 30, 'Male', 'Wagholi, Pune', '9123456715', 70.20, 173.00),
('Sunita Mane', 39, 'Female', 'Mundhwa, Pune', '9123456716', 59.40, 163.00),
('Vivek Thakur', 44, 'Male', 'Kharadi, Pune', '9123456717', 77.50, 171.00),
('Asha Kamble', 27, 'Female', 'Pashan, Pune', '9123456718', 56.00, 160.50),
('Manish Rane', 52, 'Male', 'Baner, Pune', '9123456719', 88.00, 175.50),
('Divya Shah', 24, 'Female', 'Vishrantwadi, Pune', '9123456720', 53.20, 157.00),
('Yogesh Kadam', 35, 'Male', 'Hinjewadi, Pune', '9123456721', 73.30, 174.50),
('Komal Bhandari', 31, 'Female', 'Aundh, Pune', '9123456722', 61.00, 162.50);


INSERT INTO appointments (patient_id, doctor_id, appointment_date, appointment_time, status) VALUES
(1, 1, '2026-06-01', '09:30:00', 'Completed'),
(2, 3, '2026-06-01', '10:00:00', 'Completed'),
(3, 5, '2026-06-02', '11:00:00', 'Completed'),
(4, 9, '2026-06-02', '14:00:00', 'Completed'),
(5, 7, '2026-06-03', '09:00:00', 'Completed'),
(6, 2, '2026-06-03', '15:30:00', 'Cancelled'),
(7, 8, '2026-06-04', '16:00:00', 'Completed'),
(8, 4, '2026-06-04', '10:30:00', 'Completed'),
(9, 6, '2026-06-05', '11:30:00', 'Scheduled'),
(10, 10, '2026-06-05', '13:00:00', 'Completed'),
(11, 1, '2026-06-06', '09:00:00', 'Completed'),
(12, 13, '2026-06-06', '12:00:00', 'Completed'),
(13, 11, '2026-06-07', '10:00:00', 'Scheduled'),
(14, 14, '2026-06-08', '15:00:00', 'Completed'),
(15, 12, '2026-06-08', '09:30:00', 'Cancelled'),
(16, 3, '2026-06-09', '11:00:00', 'Completed'),
(17, 9, '2026-06-09', '14:30:00', 'Scheduled'),
(18, 7, '2026-06-10', '10:00:00', 'Completed'),
(19, 5, '2026-06-10', '16:30:00', 'Completed'),
(20, 8, '2026-06-11', '09:00:00', 'Scheduled'),
(1, 15, '2026-06-12', '10:30:00', 'Completed'),
(2, 2, '2026-06-12', '13:30:00', 'Completed'),
(3, 6, '2026-06-13', '11:00:00', 'Scheduled'),
(4, 4, '2026-06-13', '09:30:00', 'Completed'),
(5, 1, '2026-06-14', '15:00:00', 'Completed'),
(21, 10, '2026-06-15', '10:00:00', 'Scheduled'),
(22, 13, '2026-06-15', '12:30:00', 'Completed'),
(6, 14, '2026-06-16', '09:00:00', 'Cancelled'),
(7, 11, '2026-06-16', '14:00:00', 'Scheduled'),
(8, 9, '2026-06-17', '11:30:00', 'Completed');

SELECT * FROM departments;
SELECT * FROM doctors;
SELECT * FROM patients;
SELECT * FROM appointments;
