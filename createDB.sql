--
-- Author: Silas Agnew, Denver DeBoer, Nicholas English
-- Date: 15 April 2019
-- ------------------------------------------------------------------
-- Description:
--
CREATE TABLE user (
    uid int PRIMARY KEY,
    username varchar(255) NOT NULL,
    dateJoined varchar(255) NOT NULL
)
--
CREATE TABLE movie (
    movieName varchar(255) PRIMARY KEY,
    movieLength int,
    releaseDate varchar(255),
    budget int,
    prequel varchar(255) FOREIGN KEY REFERENCES movie(movieName),
    sequel varchar(255) FOREIGN KEY REFERENCES movie(movieName),
    studioName varchar(255) FOREIGN KEY REFERENCES studio(sName)
)
--
CREATE TABLE artist (
    aID int PRIMARY KEY,
    aName varchar(255),
    aBirthday varchar(255),
    aAddress varchar(255)
)
--
CREATE TABLE studio (
    sName varchar(255) PRIMARY KEY,
    sCEO varchar(255),
    sWebsite varchar(255),
)
--
CREATE TABLE user_review (
    uID int FOREIGN KEY REFERENCES user(uid),
    mName varchar(255) FOREIGN KEY REFERENCES movie(movieName),
    dateReviewed varchar(255),
    score int,  -- Constraint on value range
    CONSTRAINT UR PRIMARY KEY (uID, mName, dateReviewed)
)
--
CREATE TABLE works_on (
    aID int FOREIGN KEY REFERENCES artist(aID),
    mName varchar(255) FOREIGN KEY REFERENCES movie(movieName)
    role vharchar(255) -- Constraint on predefined roles
)
--
CREATE TABLE contract_with (
    aID int FOREIGN KEY REFERENCES artist(aID),
    sName varchar(255) FOREIGN KEY REFERENCES studio(sName),
    CONSTRAINT WO PRIMARY KEY (aID, sName)
)
--
CREATE TABLE movie_genre -- Weird should this be in movie table or be multivalued and composite key

