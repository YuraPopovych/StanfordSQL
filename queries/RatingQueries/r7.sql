SELECT title, MAX(stars) FROM Movie, Rating 
WHERE Movie.mID = Rating.mID 
GROUP BY title
ORDER BY title