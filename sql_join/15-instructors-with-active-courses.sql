SELECT DISTINCT instructors.name AS instructor_name
FROM instructors
INNER JOIN courses ON courses.instructor_id = instructors.id
INNER JOIN registrations ON registrations.course_id = courses.id
ORDER BY instructor_name;