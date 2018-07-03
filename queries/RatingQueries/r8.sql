SELECT title,ratingSpread FROM  (SELECT title,
                   MAX(stars) - MIN(stars) AS ratingSpread 
                    FROM Movie, Rating 
                    WHERE Movie.mID = Rating.mID 
                    GROUP BY title
) A 
ORDER BY ratingSpread DESC, title;