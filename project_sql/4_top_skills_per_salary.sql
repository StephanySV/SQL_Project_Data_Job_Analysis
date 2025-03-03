/*
Question: What are the top skills based on salary? 
Deliverables:
    - Look at the average salary associated with each skill for Data Analyst positions.
    - Focuses on roles with specified salaries, regardless of location. 
    - Why?  It receals how different skills impact salary levels for Data Analysts and 
        helps identigy the most financially rewarding skills to acquire or improve. 
*/

SELECT 
    skills,
    ROUND(AVG(salary_year_avg), 0) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE 
    job_title_short = 'Data Analyst' AND
    salary_year_avg IS NOT NULL AND
    job_work_from_home = TRUE
GROUP BY 
    skills_dim.skills
ORDER BY 
    avg_salary DESC
LIMIT 25


/*Respuestas: 
[
  {
    "skills": "pyspark",
    "avg_salary": "208172"
  },
  {
    "skills": "bitbucket",
    "avg_salary": "189155"
  },
  {
    "skills": "couchbase",
    "avg_salary": "160515"
  },
  {
    "skills": "watson",
    "avg_salary": "160515"
  },
  {
    "skills": "datarobot",
    "avg_salary": "155486"
  },
  {
    "skills": "gitlab",
    "avg_salary": "154500"
  },
  {
    "skills": "swift",
    "avg_salary": "153750"
  },
  {
    "skills": "jupyter",
    "avg_salary": "152777"
  },
  {
    "skills": "pandas",
    "avg_salary": "151821"
  },
  {
    "skills": "elasticsearch",
    "avg_salary": "145000"
  },
  {
    "skills": "golang",
    "avg_salary": "145000"
  },
  {
    "skills": "numpy",
    "avg_salary": "143513"
  },
  {
    "skills": "databricks",
    "avg_salary": "141907"
  },
  {
    "skills": "linux",
    "avg_salary": "136508"
  },
  {
    "skills": "kubernetes",
    "avg_salary": "132500"
  },
  {
    "skills": "atlassian",
    "avg_salary": "131162"
  },
  {
    "skills": "twilio",
    "avg_salary": "127000"
  },
  {
    "skills": "airflow",
    "avg_salary": "126103"
  },
  {
    "skills": "scikit-learn",
    "avg_salary": "125781"
  },
  {
    "skills": "jenkins",
    "avg_salary": "125436"
  },
  {
    "skills": "notion",
    "avg_salary": "125000"
  },
  {
    "skills": "scala",
    "avg_salary": "124903"
  },
  {
    "skills": "postgresql",
    "avg_salary": "123879"
  },
  {
    "skills": "gcp",
    "avg_salary": "122500"
  },
  {
    "skills": "microstrategy",
    "avg_salary": "121619"
  }
] 

Tendencias en los trabajos mejor pagados
Las herramientas de Big Data dominan los salarios más altos

PySpark ($208K), Databricks ($141K) y Airflow ($126K) están altamente valorados, lo que indica que el análisis de datos en grandes volúmenes y entornos distribuidos es crucial.
Si quieres acceder a los roles mejor pagados, aprender sobre procesamiento distribuido es una gran ventaja.
Habilidades en plataformas de código y control de versiones están en auge

Bitbucket ($189K), GitLab ($154K) y Jenkins ($125K) destacan la importancia de la integración continua y la colaboración en entornos de desarrollo de datos.
Tener experiencia con herramientas DevOps es una gran ventaja en equipos de datos modernos.
Lenguajes de programación menos convencionales ofrecen altos salarios

Golang ($145K), Swift ($153K) y Scala ($124K) aparecen en la lista, lo que indica que algunas empresas buscan Data Analysts con habilidades en estos lenguajes para aplicaciones específicas.
Machine Learning y Ciencia de Datos siguen siendo bien remunerados

DataRobot ($155K) y Scikit-learn ($125K) sugieren que los analistas que pueden aplicar modelos de machine learning tienen un diferencial en salario.
Herramientas de almacenamiento y bases de datos juegan un papel clave

Couchbase ($160K), PostgreSQL ($123K) y Elasticsearch ($145K) muestran que trabajar con bases de datos avanzadas y búsqueda en grandes volúmenes de datos es valioso.
Cloud y plataformas de automatización son esenciales

GCP ($122K), Kubernetes ($132K) y Linux ($136K) sugieren que manejar infraestructura en la nube y contenedores es cada vez más importante para los analistas de datos.
🚀 Conclusión
Si quieres apuntar a los roles mejor pagados como Data Analyst:
✅ Aprende PySpark, Databricks y Airflow si te interesa el Big Data.
✅ Fortalece conocimientos en GitLab, Bitbucket y Jenkins para trabajo colaborativo y automatización.
✅ Considera lenguajes como Golang y Scala si quieres destacar en entornos más técnicos.
✅ Profundiza en Machine Learning con Scikit-learn y DataRobot.
✅ Familiarízate con Cloud (GCP, Kubernetes) y bases de datos avanzadas (PostgreSQL, Couchbase, Elasticsearch).