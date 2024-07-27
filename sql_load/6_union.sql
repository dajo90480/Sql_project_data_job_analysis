-- SELECT * 
-- FROM january_jobs;

-- SELECT *
-- FROM february_jobs;

-- SELECT *
-- FROM march_jobs;

-- SELECT
--     job_title_short,
--     company_id,
--     job_location
-- FROM
--     january_jobs

-- UNION ALL

-- SELECT
--     job_title_short,
--     company_id,
--     job_location
-- FROM
--     february_jobs

-- UNION ALL


-- SELECT
--     job_title_short,
--     company_id,
--     job_location
-- FROM
--     march_jobs

SELECT 
    job_title_short,
    job_location,
    job_via,
    job_posted_date::DATE,
    salary_year_avg 
FROM (
SELECT *
FROM january_jobs
UNION ALL
SELECT *
FROM february_jobs
UNION ALL
SELECT *
FROM march_jobs
) AS quarter1_job_postings
WHERE
    quarter1_job_postings.salary_year_avg > 70000 AND
    quarter1_job_postings.job_title_short = 'Data Analyst'
ORDER BY
    quarter1_job_postings.salary_year_avg DESC