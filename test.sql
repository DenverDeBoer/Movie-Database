--
-- Author(s): Silas Agnew, Denver DeBoer, Nicholas English
-- Date: 16 April 2019
-- -------------------------------------------------------------------
-- Description: 
--
-- Primary Key Test
INSERT INTO Users VALUES (01,'VladiP00','5 April 2019');
--
-- Foreign Key Test
INSERT INTO UserReview VALUES (007, 'Spider-Man Homecoming','6 April 2019', 0);
--
-- In Range Test
INSERT INTO UserReview VALUES (01,'Willard','5 April 2019', 100);
--
-- Alternate Keys Test
INSERT INTO Movie VALUES ('Terminator',108,'26 October 1984',6400000,'Spider-Man Homecoming','Spider-Man Homecoming','Marvel Studios');
INSERT INTO Movie VALUES ('Terminator',108,'26 October 1984',6400000,'Spider-Man Homecoming','Spider-Man Homecoming','Marvel Studios');
