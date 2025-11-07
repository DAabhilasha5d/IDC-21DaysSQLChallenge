-- Practice Questions:
-- 1. Count the total number of patients in the hospital.
SELECT COUNT(DISTINCT (patient_id)) AS Total_Patients FROM Patients;

-- 2. Calculate the average satisfaction score of all patients.
SELECT AVG(satisfaction) AS Avg_satisfaction FROM patients;

-- 3. Find the minimum and maximum age of patients.
SELECT MAX(age) AS Max_age, Min(age) AS Min_age FROM patients;

/* Daily Challenge:
Question: Calculate the total number of patients admitted, total patients refused, and the average patient satisfaction across all services and weeks.
Round the average satisfaction to 2 decimal places.*/

SELECT 
SUM(patients_admitted) AS Total_Patients_admitted, 
SUM(patients_refused) AS Total_Patients_refused,
Round(AVG(patient_satisfaction),2) AS AVG_satisfaction
FROM services_weekly;
