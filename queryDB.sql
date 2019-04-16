--
-- Author: Silas Agnew, Denver DeBoer, Nicholas English
-- Date: 12 April 2019
-- ------------------------------------------------------------------
-- Description:
--
--
--
--
/* Query #1
   For every artist who was in a movie that is a Horror film with more than 5 reviews:
   We find the artists name, name of the movie, studio company's name, and the average
   score received for a movie. We will sort by average score.

   Completes #1, #4, #5 query types needed.
*/
SELECT	 A.aName, W.MName, S.SName, AVG(R.Score)
FROM	 Artist A, WorksOn W, StudioCompany S, Users U, UserReview R, Movie M,
	 MovieType T
WHERE	 T.genre = 'Horror' AND W.aID = A.aID AND U.userID = R.userID AND 
	 W.MName = M.MovieName AND M.StudioName = S.SName AND T.movieName = M.MovieName
GROUP BY A.aName, W.MName, S.SName
HAVING	 COUNT(*) > 4
ORDER BY AVG(R.Score);
--
--
--
/* Query #2 */
   