/*
  Get the total amount of time that a student has spent
  on all assignments.
  This should work for any student but for now use:
      - 'Ibrahim Schimmel'
  Selecting only the total amount of time as a single column.
*/
SELECT SUM(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';