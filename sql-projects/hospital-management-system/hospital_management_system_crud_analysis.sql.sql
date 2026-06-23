USE hospital_management;

-- Purpose: List all appointments with date, time, status, patient name, and doctor name 
-- SELECT appointments.appointment_date, appointments.appointment_time, appointments.status, patients.name AS patient_name, doctors.name AS doctor_name
-- FROM appointments
-- INNER JOIN doctors ON appointments.doctor_id = doctors.doctor_id
-- INNER JOIN patients ON appointments.patient_id = patients.patient_id
-- ;

-- Purpose : List all the doctors with name,age,gender and their department name
-- SELECT doctors.name , doctors.age, doctors.gender, departments.department_name
-- FROM doctors
-- INNER JOIN departments ON departments.department_id = doctors.department_id
-- ;


-- Purpose - List all the appointments whos status = completed with patient name,doctor name,appointment date and status and department name 
-- SELECT patients.name AS patient_name,doctors.name AS doctor_name,appointments.appointment_date,departments.department_name, appointments.status AS status
-- FROM appointments
-- INNER JOIN patients ON patients.patient_id = appointments.patient_id
-- INNER JOIN doctors ON doctors.doctor_id = appointments.doctor_id
-- INNER JOIN departments ON departments.department_id = doctors.department_id
-- WHERE appointments.status = 'Completed' 
-- ;


-- Purpose : We are taking an appointment count as per each doctor name and their departments
-- SELECT doctors.name AS doctor_name, departments.department_name AS department_name, COUNT(appointments.appointment_id) AS appointment_count
-- FROM doctors
-- INNER JOIN appointments ON appointments.doctor_id = doctors.doctor_id
-- INNER JOIN departments ON doctors.department_id = departments.department_id
-- GROUP BY doctors.doctor_id, doctors.name, departments.department_name
-- ;


-- Purpose : To Add New Pateint Record
-- INSERT INTO patients( name,age,gender,address,phone_no,weight,height)
-- VALUES
-- ('Golu',28,'Other','Itwari 3 no. galli','9192001200',70.1,165.45);

-- Verify that the patient record was inserted successfully
-- SELECT * FROM patients



-- Purpose: To Update the Patient's Weight(Record)
-- UPDATE patients 
-- SET weight = 72.5 
-- WHERE patient_id =23;

-- SELECT * FROM patients


-- Purpose: To Update the Patient's Phone number(Record)
-- UPDATE patients
-- SET phone_no = '9870345073'
-- WHERE patient_id = 4;

-- SELECT * FROM patients;

-- Purpose: To Update the appointment status(Record)
-- UPDATE appointments
-- SET status = 'Completed'
-- WHERE patient_id = 17 ;

-- SELECT * FROM appointments;



-- Purpose: Delete a cancelled appointment record
-- DELETE FROM appointments
-- WHERE appointment_id =15;

-- SELECT * FROM appointments;



