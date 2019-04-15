--User(UserID, Username, DateJoined)
INSERT INTO Users VALUES (01,"CoJo","5 April 2019");
INSERT INTO Users VALUES (02,"Owen","5 April 2019");
INSERT INTO Users VALUES (03,"Halo Reach","5 April 2019");
INSERT INTO Users VALUES (04,"Bambi","5 April 2019");
INSERT INTO Users VALUES (05,"cinema.uncanned","5 April 2019");
INSERT INTO Users VALUES (06,"Pol Pot","5 April 2019");
--
--Movie(MovieName, Movie_Length, Release_Date, Budget, Prequel, Sequel,SName)
INSERT INTO Movie VALUES ("Spider-Man Homecoming",133,"7 July 2017",175000000,NULL,"Spider-Man Far From Home","Marvel Studios");
INSERT INTO Movie VALUES ("Willard",100,"14 March 2003",22000000,NULL,NULL,"Lion's Gate Studios");
INSERT INTO Movie VALUES ("The Room",99,"26 June 2003",6000000,NULL,NULL,"Wiseau Studios");
INSERT INTO Movie VALUES ("The Killing of a Sacred Deer",121,"3 November 2017",2000000,NULL,NULL,"Element Pictures");
INSERT INTO Movie VALUES ("Get Out",104,"24 February 2017",5000000,NULL,NULL,"Universal Pictures");
INSERT INTO Movie VALUES ("Ant-Man and the Wasp",118,"6 July 2018",162000000,"Ant-Man","Captain Marvel","Marvel Studios");
--
--Artist(aID, aName, aBirthday, aAddress)
INSERT INTO Artist VALUES (11,"Tom Holland","1 June 1996","London, UK");
INSERT INTO Aritst VALUES (12,"Crispin Glover","20 April 1964","New York City, New York, USA");
INSERT INTO Aritst VALUES (13,"Barry Keoghan","17 October 1992","Dublin, Ireland");
INSERT INTO Aritst VALUES (14,"Greg Sestero","15 July 1978","Walnut Creek, California, USA");
INSERT INTO Aritst VALUES (15,"Daniel Kaluuya","24 February 1989","London, UK");
INSERT INTO Aritst VALUES (16,"Paul Rudd","6 April 1969","New Jersy, USA");
INSERT INTO Aritst VALUES (21,"Jon Watts","28 June 1981","Fountain, Colorado, USA");
INSERT INTO Aritst VALUES (22,"Glen Morgan","16 January 1947","San Francisco, California, USA");
INSERT INTO Aritst VALUES (23,"Tommy Wiseau","3 October 1955","Poznan, Poland");
INSERT INTO Aritst VALUES (24,"Yorgos Lanthimos","1 January 1973","Athens, Greece");
INSERT INTO Aritst VALUES (25,"Jordan Peele","21 February 1979","New York City, New York, USA");
INSERT INTO Aritst VALUES (26,"Peyton Reed","3 July 1964","Raleigh, North Carolina, USA");
INSERT INTO Aritst VALUES (31,"Victoria Alonso","22 December 1965","Buenos Aires, Argentina");
INSERT INTO Aritst VALUES (32,"Toby Emmerich","8 February 1963","New York City, New York, USA");
INSERT INTO Aritst VALUES (33,"Drew Caffrey","13 August 1931","Santa Monica, California, USA");
INSERT INTO Aritst VALUES (34,"Atilla Salih Yucer","12 February 1978","Bloemfontein, South Africa");
INSERT INTO Aritst VALUES (35,"Jason Blum","20 February 1969","Los Angeles, California, USA");
INSERT INTO Aritst VALUES (36,"Stan Lee","28 December 1922","Los Angeles, California, USA");
--
--Studio_Company(StuName,StuCEO,Website)
INSERT INTO StudioCompany VALUES ("Marvel Studios","Avi Arad","www.marvel.com/movies");
INSERT INTO StudioCompany VALUES ("Universal Pictures","Ronald Meyer","www.universalpictures.com");
INSERT INTO StudioCompany VALUES ("Element Pictures","Annette Waldron",NULL);
INSERT INTO StudioCompany VALUES ("Wiseau Studios","Tommy Wiseau","wiseaustudios.com");
INSERT INTO StudioCompany VALUES ("Lion's Gate Studios","Peter Strauss","www.lionsgate.com");
--
--User_Review(UID,MName,DateReviewed,Score)
INSERT INTO UserReview(01,"Spider-Man Homecoming","5 April 2019",50);
INSERT INTO UserReview(01,"Willard","5 April 2019",-50);
INSERT INTO UserReview(01,"The Room","5 April 2019",-37);
INSERT INTO UserReview(01,"The Killing of a Sacred Deer","5 April 2019",26);
INSERT INTO UserReview(01,"Get Out","5 April 2019",50);
INSERT INTO UserReview(01,"Ant-Man and the Wasp","5 April 2019",50);
INSERT INTO UserReview(02,"Spider-Man Homecoming","5 April 2019",-50);
INSERT INTO UserReview(02,"Willard","5 April 2019",-50);
INSERT INTO UserReview(02,"The Room","5 April 2019",50);
INSERT INTO UserReview(02,"The Killing of a Sacred Deer","5 April 2019",50);
INSERT INTO UserReview(02,"Get Out","5 April 2019",-50);
INSERT INTO UserReview(02,"Ant-Man and the Wasp","5 April 2019",0);
INSERT INTO UserReview(03,"The Room","5 April 2019",-25);
INSERT INTO UserReview(03,"The Killing of a Sacred Deer","5 April 2019",-50);
INSERT INTO UserReview(03,"Get Out","5 April 2019",19);
INSERT INTO UserReview(03,"Ant-Man and the Wasp","5 April 2019",50);
INSERT INTO UserReview(04,"Spider-Man Homecoming","5 April 2019",39);
INSERT INTO UserReview(04,"Willard","5 April 2019",18);
INSERT INTO UserReview(04,"The Room","5 April 2019",-50);
INSERT INTO UserReview(04,"The Killing of a Sacred Deer","5 April 2019",0);
INSERT INTO UserReview(04,"Get Out","5 April 2019",20);
INSERT INTO UserReview(04,"Ant-Man and the Wasp","5 April 2019",0);
INSERT INTO UserReview(05,"Spider-Man Homecoming","5 April 2019",45);
INSERT INTO UserReview(05,"Willard","5 April 2019",25);
INSERT INTO UserReview(05,"The Room","5 April 2019",-30);
INSERT INTO UserReview(05,"The Killing of a Sacred Deer","5 April 2019",-15);
INSERT INTO UserReview(05,"Get Out","5 April 2019",35);
INSERT INTO UserReview(05,"Ant-Man and the Wasp","5 April 2019",50);
INSERT INTO UserReview(06,"Spider-Man Homecoming","5 April 2019",-19);
INSERT INTO UserReview(06,"Willard","5 April 2019",50);
INSERT INTO UserReview(06,"The Room","5 April 2019",50);
INSERT INTO UserReview(06,"The Killing of a Sacred Deer","5 April 2019",30);
INSERT INTO UserReview(06,"Get Out","5 April 2019",0);
INSERT INTO UserReview(06,"Ant-Man and the Wasp","5 April 2019",44);
--
--Works_On(aID,MName,Role)
INSERT INTO WorksOn(11,"Spider-Man Homecoming","Actor");
INSERT INTO WorksOn(21,"Spider-Man Homecoming","Director");
INSERT INTO WorksOn(31,"Spider-Man Homecoming","Producer");
INSERT INTO WorksOn(12,"Willard","Actor");
INSERT INTO WorksOn(22,"Willard","Director");
INSERT INTO WorksOn(32,"Willard","Producer");
INSERT INTO WorksOn(13,"The Killing of a Sacred Deer","Actor");
INSERT INTO WorksOn(23,"The Killing of a Sacred Deer","Director");
INSERT INTO WorksOn(33,"The Killing of a Sacred Deer","Producer");
INSERT INTO WorksOn(14,"The Room","Actor");
INSERT INTO WorksOn(24,"The Room","Director");
INSERT INTO WorksOn(34,"The Room","Producer");
INSERT INTO WorksOn(15,"Get Out","Actor");
INSERT INTO WorksOn(25,"Get Out","Dirctor");
INSERT INTO WorksOn(35,"Get Out","Producer");
INSERT INTO WorksOn(16,"Ant-Man and the Wasp","Actor");
INSERT INTO WorksOn(26,"Ant-Man and the Wasp","Director");
INSERT INTO WorksOn(36,"Ant-Man and the Wasp","Producer");
--
--Contract_With(aID,SName)
INSERT INTO ContractWith(11,"Marvel Studios");
INSERT INTO ContractWith(12,"Lion's Gate Studios");
INSERT INTO ContractWith(13,"Element Pictures");
INSERT INTO ContractWith(14,"Wiseau Studios");
INSERT INTO ContractWith(15,"Universal Pictures");
INSERT INTO ContractWith(16,"Marvel Studios");
INSERT INTO ContractWith(21,"Marvel Studios");
INSERT INTO ContractWith(22,"Lion's Gate Studios");
INSERT INTO ContractWith(23,"Element Pictures");
INSERT INTO ContractWith(24,"Wiseau Studios");
INSERT INTO ContractWith(25,"Universal Pictures");
INSERT INTO ContractWith(26,"Marvel Studios");
INSERT INTO ContractWith(31,"Marvel Studios");
INSERT INTO ContractWith(32,"Lion's Gate Studios");
INSERT INTO ContractWith(33,"Element Pictures");
INSERT INTO ContractWith(34,"Wiseau Studios");
INSERT INTO ContractWith(35,"Universal Pictures");
INSERT INTO ContractWith(36,"Marvel Studios");
--
--MovieType(MovieName,genre)
INSERT INTO MovieType("Spider-Man Homecoming","Action");
INSERT INTO MovieType("Spider-Man Homecoming","Adventure");
INSERT INTO MovieType("Spider-Man Homecoming","Sci-Fi");
INSERT INTO MovieType("Willard","Drama");
INSERT INTO MovieType("Willard","Horror");
INSERT INTO MovieType("Willard","Sci-Fi");
INSERT INTO MovieType("The Room","Drama");
INSERT INTO MovieType("The Killing of a Sacred Deer","Drama");
INSERT INTO MovieType("The Killing of a Sacred Deer","Mystery");
INSERT INTO MovieType("The Killing of a Sacred Deer","Thriller");
INSERT INTO MovieType("Get Out","Horror");
INSERT INTO MovieType("Get Out","Mystery");
INSERT INTO MovieType("Get Out","Thriller");
INSERT INTO MovieType("Ant-Man and the Wasp","Action");
INSERT INTO MovieType("Ant-Man and the Wasp","Adventure");
INSERT INTO MovieType("Ant-Man and the Wasp","Comedy");
