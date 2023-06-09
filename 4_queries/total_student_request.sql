--Select the student's name and the total assistance requests.
--Since this query needs to work with any specific student name, use 'Elliot Dickinson' for the student's name here.

SELECT count(assistance_requests.*) AS total_assistance, students.name
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
WHERE students.name ='Elliot Dickinson'
GROUP BY students.name;