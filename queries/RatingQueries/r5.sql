SELECT name, title, stars, ratingDate 
FROM Movie, Reviewer, Rating 
WHERE Reviewer.rID = Rating.rID 
AND Movie.mID = Rating.mID 
ORDER BY name, title, stars;