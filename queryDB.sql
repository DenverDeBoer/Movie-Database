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
   For every artist who was in a movie that is a Horror film:
   We find the artists name, name of the movie, studio company's name, and the average
   score received for a movie with more than 5 reviews. We will sort by average score.

   Completes #1, #4, #5 query types needed.
*/
SELECT	 A.aName, W.MName, S.StuName, AVG(U.Score)
FROM	 Artist A, Works_On W, Studio_Company S, User U, User_Review R, Movie M
WHERE	 M.genre = 'Horror' AND W.aID = A.aID AND U.userID = R.userID AND 
	 W.MName = M.MName AND M.SName = S.StuName
GROUP BY W.MName
HAVING	 COUNT(*) > 4
ORDER BY AVG(U.Score);