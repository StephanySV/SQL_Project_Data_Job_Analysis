# Introduction
Dive into the data job market!  Focusin on data analyst roles, this project explores top-paying jobs, in-demand skills, and where high demand meets high salary in data analytics. 

SQL queries? Check them out here: [project_sql folder](https://github.com/StephanySV/SQL_Project_Data_Job_Analysis/tree/main/project_sql).

# Background
Driven by a quest to navigate the data analyst job market more effectively, this project was born from a desire to pinpoint top-paid and in-demand skills, streamlining other work to find optimal jobs.

Data hails from my [SQL course](). It is packed with insights on job titles, salaries, locations, and essential skills. 

### The questions I wanted to answer through my SQL queries were:
1. What are the top-paying data analyst jobs?
2. What skills are required for these top-paying roles?
3. What skills are the most in-demand for data analyst?
4. Which skills are asociated with higher salaries? 
5. What are the most optimal skills to learn?

# Tools I used
For my deep dive into the data analyst job market, I harnessed the power of several key tools:
- **SQL:** The backbone of my analysis, allowing me to query the database and unearth critical insights. 
- **PostgreSQL:** The chosen database manafement system, ideal for handlin the job posting data. 
- **Visual Studio Code:** My go-to for database management ana executing SQL queries. 
- **Git & GitHub:** Essential for version control and sharing my SQL scripst and analysis, ensuring collaboration and project tracking. 

# The analysis
Each query for this project aimed at investigating specific aspects of the data analyst job market. 

Here´s how I approached each question:
### 1. Top paying Data Analyst jobs
To identify the highest-paying roles, I filtered data analyst positions by average yearly salary and location, focusing on remote jobs.  This query highlights the high paying opportunities in the field. 

``` SQL

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
LIMIT 10;
```
Here ´s the breakdown of the top data analyst jobs in 2023:
- **Wide Salary Range:** Top 10 payong data analyst roles span from $184.000 to $650.000, indicating significant salary potential in the field. 
- **Diverse Empoyers:** Companies like SmartAsset, Meta and AT&T are among those offering high salaries, showing a broad interest across diferent industries. 
- **Job Title Variety:** There is a high diversity in job title, from Data Analyst to Director of Analytics, reflecting varied roles and specializations within data analytics. 


![Top 10 rquested skills](<assets/Grafica skills.png>)
_Bar graph visualizing the salary for the top 10 salaries for data analyst; I created the graph on excel with my query results._

# What I learned
Throughout this adventure, I´ve turbocharged my SQL toolkit with some serious firepower:

- **Complex Querry Crafting:** Mastered the art of advanced SQL, merging tables like a pro and wielding WITH clauses for ninja-level temp table maneuvers. 
- **Data Aggregation:** Got cozi with GROUP BY and turned aggregate funtions like COUNT() and AVG() into my data-summarizing sidekicks. 
- **Analytical Wizardry:** Leveled up my real-work purzzle-solving skills, turning questions into actionable, insightful SQL queries. 

# Conclusions

### Insights por cada pregunta que se respondió

## Closing Thoughts
This project enhanced my SQL skills and provided valuable insights into the data analyst job market.  The findings from the analysis serve as a guide to prioritizzing skill developement and job search efforts.  Aspiring data analysts can better position themselves in a competitive job market by focusing on high-demand, high-salary skills. This exploration highlights the importance of continuous learning and adaptation to emerging trends in the field of data analytics. 


