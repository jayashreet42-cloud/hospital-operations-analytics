
-- Project: Hospital Operations Analytics
-- Dataset: Synthetic hospital admissions

-- Query 1: View all hospital records
SELECT *
FROM hospital_dataset;

-- Query 2: Count total admissions
SELECT COUNT(*) AS total_admissions
FROM hospital_dataset;

-- Query 3: Count admissions by department
SELECT
    Department,
    COUNT(*) AS total_admissions
FROM hospital_dataset
GROUP BY Department
ORDER BY total_admissions DESC;

-- Query 4: View records with billing above INR 30000
SELECT
    Patient_ID,
    Department,
    Billing_Amount_INR
FROM hospital_dataset
WHERE Billing_Amount_INR > 30000
ORDER BY Billing_Amount_INR DESC;

-- Query 5: Count emergency admissions
SELECT COUNT(*) AS emergency_admissions
FROM hospital_dataset
WHERE Admission_Type = 'Emergency';
