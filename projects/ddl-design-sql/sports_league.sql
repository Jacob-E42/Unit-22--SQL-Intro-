DROP DATABASE IF EXISTS sports_league_db;


CREATE DATABASE sports_league_db;

 \c sports_league_db;

 CREATE TABLE referees (
    id SERIAL PRIMARY KEY,
    name TEXT  NOT NULL
  );

 CREATE TABLE seasons (
    id SERIAL PRIMARY KEY,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL
 );

    CREATE TABLE teams (
    id SERIAL PRIMARY KEY,
    name TEXT UNIQUE NOT NULL,
    ranking INTEGER 
 );

 CREATE TABLE players (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL, 
    teamid INTEGER  REFERENCES teams NOT NULL
 );

 CREATE TABLE matches (
    id SERIAL PRIMARY KEY,
    match_date DATE NOT NULL, 
    team1 INTEGER  REFERENCES teams NOT NULL,
    team2 INTEGER  REFERENCES teams NOT NULL,
    refid INTEGER  REFERENCES referees NOT NULL, 
    seasonid INTEGER  REFERENCES seasons NOT NULL
 );

CREATE TABLE goals (
    id SERIAL PRIMARY KEY,
    playerid INTEGER  REFERENCES players NOT NULL,
    matchid INTEGER REFERENCES matches NOT NULL
 );