SELECT AVG(eAvgbefore) - AVG(eAvgafter) FROM  (SELECT Movie.mID, AVG(stars) AS eAvgbefore
                              FROM Rating, Movie 
                              WHERE Movie.mID = Rating.mID 
                              AND year < 1980
                              GROUP BY Movie.mID) B, 
                              (SELECT Movie.mID, AVG(stars) AS eAvgafter
                              FROM Rating, Movie 
                              WHERE Movie.mID = Rating.mID 
                              AND year > 1980
                              GROUP BY Movie.mID) A