--SET ECHO ON
--
-- Author: Silas Agnew, Denver DeBoer, Nicholas English
-- Date: 15 April 2019
-- ------------------------------------------------------------------
-- Description:
--
CREATE TABLE Users (
    userID int PRIMARY KEY,
    username varchar(255) NOT NULL,
    dateJoined varchar(255) NOT NULL
);
--
CREATE TABLE StudioCompany (
    sName varchar(255) PRIMARY KEY,
    sCEO varchar(255),
    sWebsite varchar(255),
    CONSTRAINT UNIQ UNIQUE (sName, sWebsite)
);
--
CREATE TABLE Movie (
    movieName varchar(255) PRIMARY KEY,
    movieLength int,
    releaseDate varchar(255),
    budget int,
    prequel varchar(255) REFERENCES Movie(movieName),
    sequel varchar(255) REFERENCES Movie(movieName),
    studioName varchar(255) REFERENCES StudioCompany(sName)
);
--
CREATE TABLE Artist (
    aID int PRIMARY KEY,
    aName varchar(255),
    aBirthday varchar(255),
    aAddress varchar(255)
);
--
CREATE TABLE UserReview (
    userID int REFERENCES Users(userID),
    mName varchar(255) REFERENCES Movie(movieName),
    dateReviewed varchar(255),
    score int,
    CONSTRAINT UR PRIMARY KEY (userID, mName, dateReviewed),
    CONSTRAINT SC CHECK(score >= -50 AND score <= 50)
);
--
CREATE TABLE WorksOn (
    aID int REFERENCES Artist(aID),
    mName varchar(255) REFERENCES Movie(movieName),
    role varchar(255),
    CONSTRAINT AM PRIMARY KEY (aID, mName), 
    CONSTRAINT RL CHECK(role IN ('Director', 'Actor', 'Producer'))
);
--
CREATE TABLE ContractWith (
    aID int REFERENCES Artist(aID),
    sName varchar(255) REFERENCES StudioCompany(sName),
    CONSTRAINT WO PRIMARY KEY (aID, sName)
);
--
CREATE TABLE MovieType (
    movieName varchar(255) REFERENCES Movie(movieName),
    genre varchar(255),
    CONSTRAINT MG PRIMARY KEY (movieName, genre)
);
--
