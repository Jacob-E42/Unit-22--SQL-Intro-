-- INSERT INTO doctors (first_name, last_name, number_of_shifts)
-- VALUES ('Henry', 'Gardener', 7),
-- ('Fred', 'Samuels', 5),
-- ('George', 'Monet', 10);

INSERT INTO patients (first_name, last_name, date_admitted)
VALUES ('Abby', 'Fox', '2022-03-15 04:05:06'), ('Kai','Monero', '2022-03-15 04:05:06'), ('Matt', 'Ferguson', '2022-03-15 04:05:06');

INSERT INTO doctors_patients (doctorid, patientid)
VALUES (1,1), (1,2), (1,3), (2,1), (3,2), (3,3);
