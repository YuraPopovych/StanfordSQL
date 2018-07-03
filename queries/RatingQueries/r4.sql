SELECT name FROM Reviewer
WHERE rID IN (SELECT rID FROM Rating 
              WHERE ratingDate IS NULL
                                    )