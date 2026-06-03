SELECT authors.name AS author_name, books.title  
FROM authors
INNER JOIN books ON books.author_id = authors.id
ORDER BY author_name, title;