SELECT name FROM Reviewer
WHERE rID IN (SELECT Rating.rID FROM Reviewer, Movie, Rating 
              WHERE Movie.mID = Rating.mID
                 AND Reviewer.rID = Rating.rID
                 AND title = 'Gone with the Wind'
                                                         )
                 