SELECT courses.title AS course_title
FROM courses
INNER JOIN enrollments ON courses.id = enrollments.course_id
GROUP BY courses.title
HAVING COUNT(*) > (
    SELECT AVG(cnt) FROM (SELECT COUNT(*) AS cnt FROM enrollments GROUP BY course_id)
)
ORDER BY course_title;