DROP DATABASE IF EXISTS outer_space;

CREATE DATABASE outer_space;

\c outer_space


CREATE TABLE galaxies
(
  id SERIAL PRIMARY KEY,
  name TEXT UNIQUE NOT NULL,
  number_of_stars INTEGER,
  width_in_lightyears FLOAT  
);

CREATE TABLE stars
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  galaxyid INTEGER REFERENCES galaxies ON DELETE CASCADE

);

CREATE TABLE planets
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  orbital_period_in_years FLOAT NOT NULL,
  orbital_star INTEGER REFERENCES stars ON DELETE CASCADE

);


CREATE TABLE moons
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  orbital_period_in_years FLOAT NOT NULL,
  orbital_planet INTEGER REFERENCES planets  ON DELETE CASCADE

);