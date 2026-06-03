SELECT courses.title AS course_title
FROM courses
INNER JOIN assignments ON courses.id = assignments.course_id
GROUP BY courses.title
HAVING COUNT(*) > (
    SELECT AVG(cnt) FROM (SELECT COUNT(*) AS cnt FROM assignments GROUP BY course_id)
)
ORDER BY course_title;