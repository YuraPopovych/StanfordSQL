SELECT name, title, stars FROM Movie, Reviewer, Rating 
WHERE Movie.mID = Rating.mID 
AND Reviewer.rID = Rating.rID 
AND director = name