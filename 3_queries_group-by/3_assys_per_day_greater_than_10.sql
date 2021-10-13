/*
  Same as 3_assys_per_day.sql but
    - Only return rows where a total assys is >= 10

  THIS IS SAME AS 3_assys_per_day.sql:
  Get the total number of assignments for each day of bootcamp.
    - Select the day and the total assignments.
    - Order the results by day.
    - This query only requires the assignments table.

*/

SELECT day, count(*) as total_assignments
FROM assignments
GROUP BY day
HAVING count(*) >= 10
ORDER BY day;