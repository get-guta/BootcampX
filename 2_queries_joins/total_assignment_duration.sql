SELECT sum(assignment_submissions.duration) AS total_duration FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE student_name = 'Ibrahim Schimmel';