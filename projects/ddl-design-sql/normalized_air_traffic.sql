DROP DATABASE IF EXISTS air_traffic;

CREATE DATABASE air_traffic;

\c air_traffic

CREATE TABLE countries 
(
  id SERIAL PRIMARY KEY,
  name TEXT UNIQUE NOT NULL
);

CREATE TABLE cities 
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL, 
  country INTEGER REFERENCES countries ON DELETE SET NULL
);

CREATE TABLE airlines 
(
  id SERIAL PRIMARY KEY,
  name TEXT UNIQUE NOT NULL
);

CREATE TABLE routes
(
  id SERIAL PRIMARY KEY,
  from_city INTEGER REFERENCES cities ON DELETE CASCADE,
  to_city INTEGER REFERENCES cities ON DELETE CASCADE,
  from_country INTEGER REFERENCES countries ON DELETE CASCADE,
  to_country INTEGER REFERENCES countries ON DELETE CASCADE
);

CREATE TABLE flights
(
  id SERIAL PRIMARY KEY,
  routeid INTEGER REFERENCES routes ON DELETE CASCADE,
  departure TIMESTAMP NOT NULL,
  arrival TIMESTAMP NOT NULL,
  airlineid INTEGER REFERENCES airlines ON DELETE SET NULL
);


CREATE TABLE tickets
(
  id SERIAL PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  seat TEXT UNIQUE NOT NULL,
  flightid INTEGER REFERENCES flights ON DELETE CASCADE
);