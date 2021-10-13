/*
  Get the students who's average time it takes to complete an
  assignment is less than the average estimated time it takes
  to complete an assignment.
    - Select the name of the student, their average completion time,
      and the average suggested completion time.
    - Order by average completion time from smallest to largest.
    - Only get currently enrolled students.
    - This will require data from students, assignment_submissions,
      and assignments.
*/

SELECT students.name as student, 
avg(assignment_submissions.duration) as average_assignment_duration, 
avg(assignments.duration) as average_estimated_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
JOIN assignments ON assignment_id = assignments.id
WHERE end_date IS NULL
GROUP BY student
HAVING avg(assignments.duration) > avg(assignment_submissions.duration)
ORDER BY average_assignment_duration;