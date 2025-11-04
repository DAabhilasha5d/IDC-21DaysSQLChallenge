-- Practice Questions:
-- Find all patients who are older than 60 years.
SELECT name, age FROM patients
WHERE age > 60;

-- Retrieve all staff members who work in the 'Emergency' service.
SELECT staff_name, service FROM staff
WHERE service = 'Emergency';

-- List all weeks where more than 100 patients requested admission in any service.
SELECT week, service, patients_request FROM services_weekly
WHERE patients_request > 100;

-- Daily Challenge: Find all patients admitted to 'Surgery' service with a satisfaction score below 70, showing their patient_id, name, age, and satisfaction score.
SELECT patient_id, name, age, satisfaction as satisfaction_score
FROM patients
WHERE service = 'surgery' and satisfaction < 70;