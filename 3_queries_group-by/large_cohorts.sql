

--Select the cohort name and the total students.
--Order by total students from smallest to greatest.

SELECT cohorts.name, count(students.*) as student_count 
FROM cohorts JOIN students 
ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
HAVING count(students.*) >= 18
ORDER BY count(students.*) ASC;
