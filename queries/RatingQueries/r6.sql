SELECT name, title FROM Movie, Reviewer, Rating r1
WHERE Movie.mID = r1.mID 
AND Reviewer.rID = r1.rID
AND 
EXISTS (SELECT * FROM Rating r2 
         WHERE r1.rID = r2.rID
         AND r1.ratingDate < r2.ratingDate
         AND r1.mID = r2.mID
         AND r1.stars < r2.stars

)
 
