SELECT  title 
FROM Movie
UNION ALL 
SELECT name 
FROM Reviewer
ORDER BY title ASC