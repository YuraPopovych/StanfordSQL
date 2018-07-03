SELECT  title 
FROM Movie
WHERE mID NOT IN (SELECT mID FROM Rating,Reviewer 
                  WHERE Reviewer.rID = Rating.rID 
                  AND name = 'Chris Jackson'
                                    )