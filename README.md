# SQL Patient and Visit Analysis- Healthcare Insights

**Problem Statement**

A healthcare company in the United Kingdom is experiencing operational inefficiencies due to fragmented tracking of patient visits, medical diagnoses, and billing records across its facilities. Management lacks visibility into key performance areas such as patient demographics, billing trends, city-specific health patterns, and doctor effectiveness. This limits their ability to allocate resources, optimize care delivery, and improve financial outcomes.This project aims to analyze structured Patient and Visit records to uncover actionable insights. By leveraging SQL for data cleaning, aggregation, and segmentation, the analysis will address critical business questions around patient engagement, diagnosis frequency, billing consistency, and provider performance. The goal is to support data-driven decision-making and enhance hospital operations across departments and locations.

**Project Overview**

This repository contains SQL scripts designed to:
 Analyze patient visit frequency and billing trends
 Segment patients by demographics and financial thresholds
 Identify city-specific health patterns and high-volume diagnoses
 Evaluate doctor performance and resource utilization
 Clean and prepare healthcare data for reliable reporting


**Business Questions Addressed**

1. Show all patient details  
2. Display only female patients  
3. List visits with bill amounts over 3000, ordered by date  
4. Join Patients and Visits to show names, dates, and bill amounts  
5. Show visits that occurred in Lagos  
6. Calculate total bill amount for all visits  
7. Count patients diagnosed with Malaria  
8. Calculate average bill amount per city  
9. Show total bill collected by each doctor  
10. Display doctors who collected more than 5000  
11. Find patients who spent more than the average bill amount  
12. Categorize bills as Low, Medium, or High  
13. Remove duplicate visits  
14. Find the city with the highest Malaria cases  
15. Identify the doctor with the highest average bill amount

**SQL Techniques Used**

- Aggregation (COUNT, SUM, AVG)
- Grouping by date, month, year, gender, age group, and city
- Conditional filtering (WHERE, HAVING)
- Subqueries for dynamic thresholds (e.g. average bill amount)
- Data cleaning (removing duplicates and nulls)
- Ranking and limiting results (ORDER BY, TOP, LIMIT)

 **Outcomes**

This analysis provides:
- Cleaned and structured patient visit data
- Insights into billing performance and patient engagement
- Identification of high-risk cities and conditions
- A foundation for future dashboarding, KPI tracking

 **Key Insights**

* Patient visits and billing amounts show consistent patterns across time, gender, and age groups.
* Cities such as Lagos and Abuja appear frequently in the data, indicating regional concentration of healthcare demand.
* Malaria cases are notably clustered in specific cities, suggesting geographic health trends.
* Data cleanup was essential to remove duplicates and nulls, ensuring reliable analysis.

 **Recommendations**

* Align staffing and resources with peak visit periods and high-billing demographics.
* Focus public health efforts in cities with high diagnosis rates, especially for conditions like Malaria.
* Strengthen data entry protocols to improve reporting accuracy and reduce duplication.
