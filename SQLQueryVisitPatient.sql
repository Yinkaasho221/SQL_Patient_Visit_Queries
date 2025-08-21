-------Write a query to show all patient details--------
SELECT *
FROM Patients

-------Display only female patients from the Patients table------------
SELECT *
FROM Patients
WHERE gender = 'Female'


--------- List all visits where the bill amount is greater than 3000, ordered from highest to lowest--------
SELECT *
FROM Visit
WHERE bill_amount > 3000
ORDER BY bill_amount DESC


--------Join the Patients and Visits tables to display patient names, visit dates, and diagnoses----------------------

SELECT CONCAT(PT.first_name, ' ', PT.last_name) AS patient_names,
V.visit_date, V.diagnosis
FROM Patients AS PT
JOIN Visit AS V ON PT.patient_id = V.patient_id

-----Show all visits that occurred in Lagos------

SELECT V.visit_id, V.visit_date, PT. city
FROM Patients AS PT
JOIN Visit AS V ON PT.patient_id = V.patient_id
WHERE PT.city = 'Lagos'

------Find the total bill amount for all visits------

SELECT SUM(bill_amount) AS total_bill
FROM Visit

--------Count the number of patients diagnosed with Malaria------

SELECT COUNT(PT.patient_id) AS patient_count, V.diagnosis
FROM Patients AS PT
JOIN Visit AS V ON PT.patient_id = V.patient_id
WHERE V.diagnosis = 'Malaria'
GROUP BY V.diagnosis

-------Calculate the average bill amount per city-------

SELECT AVG(V.bill_amount) AS avg_bill, PT.city
FROM Patients AS PT
JOIN Visit AS V ON PT.patient_id = V.patient_id
GROUP BY city

-------Show the total bill amount collected by each doctor.

SELECT SUM(bill_amount) AS total_bill, doctors_name
FROM Visit
GROUP BY doctors_name


-----------Display doctors who have collected more than 5000 in total bills-----

SELECT SUM(bill_amount) AS total_bill_collected, doctors_name
FROM Visit
GROUP BY doctors_name
HAVING SUM(bill_amount) > 5000



---------Find patients who have spent more than the average bill amount-------

SELECT patient_id, AVG(bill_amount)
FROM Visit

SELECT patient_id, SUM(bill_amount) AS total_bill
FROM Visit
GROUP BY patient_id
HAVING SUM(bill_amount) > (
       SELECT AVG(bill_amount) FROM Visit
)
ORDER BY total_bill DESC

---------Write a query that adds a column called bill_category, "Low" if bill_amount < 2000	"Medium" if bill_amount between 2000 and 4000	"High" if bill_amount > 4000
-------

SELECT bill_amount,
CASE
  WHEN bill_amount < 2000 THEN 'Low'
  WHEN bill_amount between 2000 AND 4000 THEN 'Medium'
  WHEN bill_amount > 4000 THEN 'High'
  ELSE 'Others'
  END AS bill_category
FROM Visit


-------Find the city with the highest number of Malaria cases--------

SELECT PT.city, V.diagnosis, COUNT(*) AS Malaria_cases
FROM Patients AS PT
JOIN Visit AS V ON PT.patient_id = V.patient_id
GROUP BY PT.city, V.diagnosis
ORDER BY Malaria_cases DESC

---------Determine which doctor generates the highest average bill per visit----

SELECT doctors_name, AVG(bill_amount) AS Avg_bill
FROM Visit
GROUP BY doctors_name
ORDER BY Avg_bill DESC

-------Remove duplicate visits (if any) from the Visits table--------#

WITH Ranked_visits AS (
   SELECT *,
          ROW_NUMBER() OVER(PARTITION BY patient_id ORDER BY visit_id) AS RN
  FROM Visit
)
  DELETE FROM Ranked_visits
  WHERE RN > 1