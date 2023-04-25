
SELECT cohorts.name as cohort, sum(completed_at - started_at) as total_aduration
FROM assistance_requests
JOIN students ON assistance_requests.student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY average_assistance_time;