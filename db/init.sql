CREATE DATABASE mysql_db;
use mysql_db;

CREATE TABLE contacts (
  id INT PRIMARY KEY AUTO_INCREMENT,
  firstname VARCHAR(100) NOT NULL,
  lastname VARCHAR(100) NOT NULL,
  age INT NOT NULL,
  sex ENUM('M', 'F') NOT NULL,
  email VARCHAR(100) NOT NULL,
  phone VARCHAR(20) NOT NULL
);

INSERT INTO contacts
  (firstname, lastname, age, sex, email, phone)
VALUES
  ('John', 'Doe', '46', 'M', 'john.doe@example.com','555-1234'),
  ('Jane', 'Smith', '453', 'F', 'jane.smith@example.com', '555-5678' ),
  ('Alice', 'Johnson', '0', 'F','alice.johnson@example.com', '555-8765' ),
  ('Bob', 'Brown', '69', 'M','bob.brown@example.com', '555-4321' );