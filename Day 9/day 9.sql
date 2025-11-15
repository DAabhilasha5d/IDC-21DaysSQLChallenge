-- Practice Questions:

-- 1. Extract the year from all patient arrival dates.
SELECT patient_id, name, YEAR(arrival_date) AS arrival_year
FROM patients;

-- 2. Calculate the length of stay for each patient (departure_date - arrival_date).
SELECT patient_id, name, DATEDIFF(departure_date, arrival_date) AS length_of_stay
FROM patients;

-- 3. Find all patients who arrived in a specific month.
SELECT patient_id, name, arrival_date
FROM patients
WHERE MONTH(arrival_date) = 5;

/* Daily Challenge:
Question: Calculate the average length of stay (in days) for each service, showing only services where the average stay is more than 7 days.
Also show the count of patients and order by average stay descending.*/
SELECT service,
    COUNT(patient_id) AS total_patients,
    ROUND(AVG(DATEDIFF(departure_date, arrival_date)), 1) AS avg_stay_days
FROM patients
GROUP BY service
HAVING AVG(DATEDIFF(departure_date, arrival_date)) > 7
ORDER BY avg_stay_days DESC;

