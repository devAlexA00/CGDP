CREATE DATABASE mysql_db;
use mysql_db;

CREATE TABLE contacts (
  prenom VARCHAR(20),
  nom VARCHAR(10),
  email VARCHAR(100),
  tel VARCHAR(20)
);

INSERT INTO contacts
  (prenom, nom, email, tel)
VALUES
  ('John', 'Doe', 'john.doe@example.com','555-1234'),
  ('Jane', 'Smith', 'jane.smith@example.com', '555-5678' ),
  ('Alice', 'Johnson', 'alice.johnson@example.com', '555-8765' ),
  ('Bob', 'Brown', 'bob.brown@example.com', '555-4321' );