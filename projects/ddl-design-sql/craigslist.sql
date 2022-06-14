DROP DATABASE IF EXISTS craigslist_db;


CREATE DATABASE craigslist_db;

 \c craigslist_db;

 CREATE TABLE regions (
    id SERIAL PRIMARY KEY,
    name TEXT UNIQUE NOT NULL
  );

 CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name TEXT UNIQUE NOT NULL
 );

    CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    username VARCHAR(15) NOT NULL UNIQUE,
    password VARCHAR(50) NOT NULL,
    preferred_region INTEGER REFERENCES regions 

 );

 CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    title VARCHAR(30),
    text TEXT NOT NULL, 
    userid INTEGER REFERENCES users NOT NULL,
    location TEXT,
    regionid INTEGER REFERENCES regions NOT NULL,
    categoryid INTEGER REFERENCES categories NOT NULL
 );

 

 

 