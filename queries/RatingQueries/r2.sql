SELECT DISTINCT year FROM Movie, Rating 
WHERE Movie.mID = Rating.mID 
AND (stars = 4 OR stars = 5)
ORDER BY year ASC;