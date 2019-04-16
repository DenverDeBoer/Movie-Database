--
-- Author: Silas Agnew, Denver DeBoer, Nicholas English
-- Date: 15 April 2019
-- ------------------------------------------------------------------
-- Description:
--
CREATE TABLE Users (
    uid int PRIMARY KEY,
    username varchar(255) NOT NULL,
    dateJoined varchar(255) NOT NULL
)
--
CREATE TABLE Movie (
    movieName varchar(255) PRIMARY KEY,
    movieLength int,
    releaseDate varchar(255),
    budget int,
    prequel varchar(255) FOREIGN KEY REFERENCES Movie(movieName),
    sequel varchar(255) FOREIGN KEY REFERENCES Movie(movieName),
    studioName varchar(255) FOREIGN KEY REFERENCES Studio(sName)
)
--
CREATE TABLE Artist (
    aID int PRIMARY KEY,
    aName varchar(255),
    aBirthday varchar(255),
    aAddress varchar(255)
)
--
CREATE TABLE StudioCompany (
    sName varchar(255) PRIMARY KEY,
    sCEO varchar(255),
    sWebsite varchar(255)
)
--
CREATE TABLE UserReview (
    uID int FOREIGN KEY REFERENCES User(uid),
    mName varchar(255) FOREIGN KEY REFERENCES Movie(movieName),
    dateReviewed varchar(255),
    score int,
    CONSTRAINT UR PRIMARY KEY (uID, mName, dateReviewed),
    CONSTRAINT SC CHECK(score >= 1 AND score <=15)
)
--
CREATE TABLE WorksOn (
    aID int FOREIGN KEY REFERENCES Artist(aID),
    mName varchar(255) FOREIGN KEY REFERENCES Movie(movieName)
    role vharchar(255)
    CONSTRAINT RL CHECK(role IN ('Director', 'Actor', 'Producer'))
)
--
CREATE TABLE ContractWith (
    aID int FOREIGN KEY REFERENCES Artist(aID),
    sName varchar(255) FOREIGN KEY REFERENCES StudioCompany(sName),
    CONSTRAINT WO PRIMARY KEY (aID, sName)
)
--
CREATE TABLE MovieType (
    movieName varchar(255) FOREIGN KEY REFERENCES Movie(movieName),
    genre varchar(255),
    CONSTRAINT MG PRIMARY KEY (movieName, genre)
)

