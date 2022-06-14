DROP DATABASE IF EXISTS music;

CREATE DATABASE music;

\c music

CREATE TABLE albums
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  copies_sold INTEGER
);

CREATE TABLE producers
(
  id SERIAL PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL
);

CREATE TABLE artists
(
  id SERIAL PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  number_of_records_sold INTEGER
);


CREATE TABLE songs
(
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  duration_in_seconds INTEGER NOT NULL,
  release_date DATE NOT NULL,
  albumid INTEGER REFERENCES albums  ON DELETE SET NULL
);

CREATE TABLE song_singers
(
  id SERIAL PRIMARY KEY,
  songid INTEGER REFERENCES songs  ON DELETE CASCADE,
  artistid INTEGER REFERENCES artists  ON DELETE CASCADE
);

CREATE TABLE song_producers
(
  id SERIAL PRIMARY KEY,
  songid INTEGER REFERENCES songs  ON DELETE CASCADE,
  producerid INTEGER REFERENCES producers  ON DELETE CASCADE
);