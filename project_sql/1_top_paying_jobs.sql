/*
Question: What are the top-paying data analyst jobs?
Deliverables:
    - Identify the top 10 highest-paying Data Analys roles that are available remotely. 
    - Focuses on job postings wiht specified salaries (remove nulls).
    - Why? Highlight the top-paying opportunities for Data Analysts, ofering insights into employers/employees?
*/

SELECT
    job_id,
    job_title,
    job_title_short,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name AS company_name
FROM
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title_short IN ('Data Analyst', 'Business Analyst')  AND
    job_location IN ('Anywhere', 'Bogotá, Bogotá, Colombia') AND
    salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg DESC
LIMIT 10