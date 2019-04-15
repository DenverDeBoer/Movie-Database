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
    prequel varchar(255) FOREIGN KEY REFERENCES movie(movieName),
    sequel varchar(255) FOREIGN KEY REFERENCES movie(movieName),
    studioName varchar(255) FOREIGN KEY REFERENCES studio(sName)
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
    sWebsite varchar(255),
)
--
CREATE TABLE UserReview (
    uID int FOREIGN KEY REFERENCES user(uid),
    mName varchar(255) FOREIGN KEY REFERENCES movie(movieName),
    dateReviewed varchar(255),
    score int,  -- Constraint on value range
    CONSTRAINT UR PRIMARY KEY (uID, mName, dateReviewed)
)
--
CREATE TABLE WorksOn (
    aID int FOREIGN KEY REFERENCES artist(aID),
    mName varchar(255) FOREIGN KEY REFERENCES movie(movieName)
    role vharchar(255) -- Constraint on predefined roles
)
--
CREATE TABLE ContractWith (
    aID int FOREIGN KEY REFERENCES artist(aID),
    sName varchar(255) FOREIGN KEY REFERENCES studio(sName),
    CONSTRAINT WO PRIMARY KEY (aID, sName)
)
--
CREATE TABLE MovieType -- Weird should this be in movie table or be multivalued and composite key

