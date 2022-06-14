
 CREATE DATABASE medical_center_db;

 \c medical_center_db

 CREATE TABLE doctors (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL, 
    number_of_shifts INTEGER
 );

 CREATE TABLE patients (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    date_admitted TIMESTAMP NOT NULL

 );

 CREATE TABLE diseases(
    id SERIAL PRIMARY KEY,
    name TEXT UNIQUE NOT NULL,
    triage_priority INTEGER
 );

 CREATE TABLE doctors_patients (
    id SERIAL PRIMARY KEY,
    doctorid INTEGER REFERENCES doctors ON DELETE CASCADE,
    patientid INTEGER REFERENCES patients ON DELETE CASCADE
 );

 CREATE TABLE patients_diseases(
    id SERIAL PRIMARY KEY,
    patientid INTEGER REFERENCES patients ON DELETE CASCADE,
    diseaseid INTEGER REFERENCES diseases ON DELETE CASCADE
 )
