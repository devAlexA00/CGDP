CREATE DATABASE mysql_db;
use mysql_db;

CREATE TABLE contacts (
  id INT PRIMARY KEY AUTO_INCREMENT,
  firstname VARCHAR(100) NOT NULL,
  lastname VARCHAR(100) NOT NULL,
  age INT NOT NULL,
  sex ENUM('M', 'F') NOT NULL,
  email VARCHAR(100) NOT NULL,
  phone VARCHAR(20) NOT NULL,
  company VARCHAR(100) NOT NULL,
  region VARCHAR(100) NOT NULL
  );

INSERT INTO contacts
  (firstname, lastname, age, sex, email, phone, company, region)
VALUES
  ('Logan', 'Morse', '12', 'M', 'lobortis@protonmail.net', '07 44 12 12 87', 'At Libero LLP', 'Limousin'),
  ('Frances', 'Sykes', '52', 'F', 'sociosqu@protonmail.ca', '05 71 14 54 12', 'Risus Nulla Institute', 'Limousin'),
  ('Graiden', 'Morris', '51', 'M', 'cursus@hotmail.couk', '05 56 77 96 02', 'Quisque Libero Limited', 'Pays de la Loire'),
  ('Dieter', 'Mcconnell', '30', 'M', 'viverra@outlook.couk', '03 39 03 78 77', 'Ultricies Adipiscing Industries', 'Lorraine'),
  ('Raja', 'Hopper', '106', 'M', 'vestibulum.massa.rutrum@outlook.org', '07 58 24 62 89', 'Morbi Metus Limited', 'Lorraine'),
  ('Hanae', 'Weiss', '1', 'M', 'sit.amet@icloud.edu', '04 67 44 63 94', 'Enim Sed Corp.', 'Alsace'),
  ('Alexander', 'Richard', '95', 'M', 'pharetra.nibh@hotmail.couk', '03 89 34 76 42', 'Vestibulum Ante Limited', 'Aquitaine'),
  ('Brianna', 'James', '64', 'M', 'ultrices.duis@yahoo.edu', '07 71 81 19 34', 'Massa Suspendisse Eleifend PC', 'Franche-Comté'),
  ('Chadwick', 'Sykes', '14', 'M', 'ad@yahoo.couk', '04 78 85 82 07', 'Pharetra Ut Company', 'Champagne-Ardenne'),
  ('Destiny', 'Lang', '14', 'M', 'sed.pede@aol.edu', '05 67 76 91 14', 'Porttitor Interdum Sed PC', 'Île-de-France'),
  ('Elvis', 'Dunlap', '71', 'M', 'purus.accumsan@protonmail.com', '06 60 48 91 81', 'Mauris Ut Inc.', 'Franche-Comté'),
  ('Joel', 'Gay', '101', 'F', 'neque.tellus@google.couk', '03 89 15 43 44', 'Imperdiet Erat Inc.', 'Aquitaine'),
  ('Noble', 'Gentry', '81', 'F', 'quisque.porttitor@yahoo.couk', '08 17 37 44 78', 'Lacinia At Foundation', "Provence-Alpes-Côte d'Azur"),
  ('Stephanie', 'Walters', '39', 'F', 'nec.tempus@icloud.ca', '08 28 22 53 33', 'Viverra LLC', 'Champagne-Ardenne'),
  ('Stuart', 'Huff', '105', 'F', 'nibh.aliquam@icloud.edu', '07 27 36 06 46', 'Neque Incorporated', 'Poitou-Charentes'),
  ('Jerry', 'Beach', '58', 'M', 'egestas.blandit.nam@icloud.com', '05 02 28 70 46', 'Accumsan Interdum Ltd', 'Nord-Pas-de-Calais'),
  ('Diana', 'Walter', '75', 'F', 'egestas.a@aol.com', '04 78 37 10 69', 'Turpis In Condimentum Limited', 'Bretagne'),
  ('Brian', 'Sanchez', '108', 'F', 'molestie.pharetra@outlook.com', '04 56 21 07 67', 'Orci Lobortis Augue Limited', 'Alsace'),
  ('Carly', 'Mejia', '19', 'M', 'nisi.mauris.nulla@yahoo.ca', '02 41 53 54 45', 'Nunc Sit Amet Inc.', 'Corse'),
  ('Amos', 'Jimenez', '1', 'F', 'blandit.at.nisi@icloud.couk', '05 76 31 72 18', 'Aliquet Proin Ltd', "Provence-Alpes-Côte d'Azur"),
  ('Nicholas', 'Macias', '7', 'F', 'cras.vehicula.aliquet@yahoo.edu', '08 48 05 88 29', 'Morbi PC', 'Limousin'),
  ('Lacy', 'Holder', '10', 'F', 'placerat.cras.dictum@protonmail.org', '05 07 84 14 36', 'Enim Mi Limited', 'Languedoc-Roussillon'),
  ('Ocean', 'Ferguson', '35', 'F', 'rhoncus.id@hotmail.com', '07 34 48 81 72', 'Ut Nisi Limited', 'Centre'),
  ('Hall', 'Tyson', '60', 'F', 'aliquam.arcu.aliquam@yahoo.net', '08 45 38 47 21', 'Cras Vehicula Aliquet Inc.', 'Limousin'),
  ('Amaya', 'Gross', '41', 'F', 'nec.diam.duis@yahoo.edu', '04 53 26 18 71', 'Phasellus Fermentum Foundation', 'Bretagne'),
  ('Susan', 'Dickerson', '100', 'M', 'leo.morbi.neque@hotmail.net', '02 75 40 88 54', 'At Consulting', 'Bretagne'),
  ('Barrett', 'Warner', '110', 'M', 'suspendisse@hotmail.net', '03 88 45 91 51', 'Amet Massa Quisque Associates', 'Limousin'),
  ('Leah', 'Spence', '99', 'M', 'egestas@hotmail.net', '03 49 78 08 21', 'Elit Erat Foundation', 'Alsace'),
  ('Yoshi', 'Giles', '69', 'F', 'lectus.sit.amet@protonmail.edu', '03 28 94 37 59', 'Orci Donec Corp.', 'Bretagne'),
  ('Amity', 'Spence', '64', 'F', 'nisi.aenean.eget@hotmail.couk', '02 76 82 34 17', 'Magnis Incorporated', 'Languedoc-Roussillon'),
  ('Francis', 'Harrell', '91', 'M', 'placerat.eget.venenatis@google.org', '07 13 49 24 30', 'Suspendisse Foundation', 'Champagne-Ardenne'),
  ('Maxwell', 'Anthony', '71', 'M', 'dis.parturient.montes@aol.edu', '06 44 15 86 78', 'At Sem Ltd', 'Haute-Normandie'),
  ('Dalton', 'Winters', '69', 'M', 'vitae.risus@hotmail.edu', '05 74 38 86 68', 'Facilisis Eget Ltd', 'Bretagne'),
  ('Orson', 'Pickett', '14', 'M', 'duis.a@aol.net', '05 67 71 04 77', 'Neque LLC', 'Nord-Pas-de-Calais'),
  ('Yasir', 'Webb', '8', 'F', 'suspendisse.sed.dolor@yahoo.net', '03 23 97 78 27', 'Nam Consequat Dolor Foundation', 'Haute-Normandie'),
  ('Tanek', 'Burgess', '103', 'M', 'vitae.aliquet.nec@icloud.edu', '02 86 41 32 27', 'Sapien Molestie Limited', 'Alsace'),
  ('Mikayla', 'Beach', '28', 'M', 'fermentum@outlook.couk', '01 23 02 12 22', 'Ridiculus Mus Proin Industries', 'Lorraine'),
  ('Brynne', 'Puckett', '35', 'F', 'curabitur.vel.lectus@icloud.edu', '06 83 57 83 29', 'Ligula Inc.', 'Alsace'),
  ('Davis', 'May', '47', 'F', 'quisque.fringilla.euismod@yahoo.com', '07 14 94 16 38', 'Eget Volutpat Inc.', 'Nord-Pas-de-Calais'),
  ('Tarik', 'Nieves', '83', 'M', 'porttitor@aol.couk', '03 22 00 17 41', 'Vitae Erat PC', 'Poitou-Charentes'),
  ('Russell', 'Sexton', '33', 'F', 'lobortis.mauris.suspendisse@outlook.org', '09 83 24 59 65', 'Nec Eleifend Consulting', 'Centre'),
  ('Fleur', 'Mccullough', '87', 'F', 'molestie.sodales@google.net', '06 04 21 28 68', 'Aliquam Foundation', 'Haute-Normandie'),
  ('Russell', 'Ewing', '76', 'M', 'ac.orci@outlook.org', '02 98 47 18 28', 'Molestie Tellus Aenean Foundation', 'Alsace'),
  ('Theodore', 'Gallegos', '24', 'M', 'ante.maecenas@protonmail.ca', '01 27 37 31 88', 'Felis Orci Adipiscing Institute', 'Poitou-Charentes'),
  ('Nevada', 'Douglas', '40', 'F', 'at.risus@yahoo.couk', '06 23 59 10 74', 'Mauris Rhoncus Inc.', 'Pays de la Loire'),
  ('Christopher', 'Benson', '24', 'M', 'lorem@aol.net', '09 51 45 05 87', 'Luctus Ut Corp.', "Provence-Alpes-Côte d'Azur"),
  ('Quinlan', 'Pacheco', '51', 'M', 'nulla.facilisis@google.net', '07 51 15 70 42', 'Eu Ligula Aenean Industries', 'Centre'),
  ('Elvis', 'Dalton', '68', 'M', 'mauris.eu.elit@hotmail.edu', '08 53 11 75 11', 'Sit Amet Massa Industries', 'Champagne-Ardenne'),
  ('Quentin', 'Heath', '54', 'F', 'in.faucibus@yahoo.net', '06 53 18 12 48', 'Non Dapibus PC', 'Limousin'),
  ('Avye', 'Morton', '92', 'M', 'dolor.fusce@icloud.net', '04 37 81 64 33', 'Sit LLP', 'Alsace'),
  ('Raja', 'Mcneil', '106', 'M', 'et@outlook.net', '09 28 51 84 59', 'Turpis Egestas Associates', 'Pays de la Loire'),
  ('Kaye', 'Pate', '63', 'F', 'curabitur@protonmail.net', '08 24 53 48 27', 'Aliquam Nec Enim Associates', 'Nord-Pas-de-Calais'),
  ('Lisandra', 'Beach', '16', 'M', 'imperdiet@icloud.org', '02 15 14 18 96', 'Sodales Corp.', 'Corse'),
  ('Pamela', 'Henson', '96', 'F', 'luctus.aliquet@aol.edu', '08 65 57 36 31', 'Eu LLC', 'Languedoc-Roussillon'),
  ('Chadwick', 'Porter', '56', 'M', 'ultrices.vivamus@protonmail.ca', '06 47 69 16 19', 'Velit Dui Semper Limited', 'Poitou-Charentes'),
  ('Echo', 'Mcneil', '54', 'M', 'erat.eget.ipsum@protonmail.couk', '01 79 76 66 22', 'Egestas Fusce Company', 'Champagne-Ardenne'),
  ('Kameko', 'Day', '63', 'M', 'fusce.aliquet@outlook.org', '02 54 92 26 56', 'Iaculis Lacus Institute', 'Centre'),
  ('Odette', 'Gamble', '101', 'M', 'amet.luctus@icloud.couk', '06 72 41 83 08', 'In Cursus Et LLP', 'Midi-Pyrénées'),
  ('Julian', 'Richard', '90', 'F', 'et.lacinia@icloud.ca', '07 87 60 33 22', 'Sit Amet Corporation', 'Bourgogne'),
  ('Wynne', 'Hoffman', '35', 'F', 'cursus.integer.mollis@protonmail.couk', '06 28 03 81 12', 'Sed Facilisis LLC', 'Languedoc-Roussillon'),
  ('Iliana', 'Santana', '86', 'F', 'turpis@yahoo.ca', '06 63 23 27 06', 'Enim Etiam Corp.', 'Nord-Pas-de-Calais'),
  ('Harper', 'Price', '85', 'F', 'libero.est@outlook.org', '08 01 78 44 32', 'Non Dapibus Inc.', 'Lorraine'),
  ('Nina', 'Bishop', '95', 'F', 'ligula@aol.edu', '07 67 70 74 38', 'Adipiscing Ltd', 'Île-de-France'),
  ('Hannah', 'Barber', '73', 'F', 'vivamus.non@google.couk', '08 24 02 51 97', 'Mi Aliquam LLP', 'Aquitaine'),
  ('Slade', 'Mason', '7', 'M', 'dictum@protonmail.couk', '07 45 51 88 97', 'Auctor Ullamcorper Institute', 'Corse'),
  ('Isabella', 'Hodges', '98', 'M', 'leo.in.lobortis@hotmail.edu', '03 17 36 25 93', 'Dapibus Id Industries', 'Pays de la Loire'),
  ('Knox', 'Diaz', '81', 'F', 'aliquet.diam@protonmail.com', '07 50 16 63 24', 'Dictum Eu Consulting', 'Alsace'),
  ('Ryder', 'Workman', '68', 'F', 'sit@yahoo.org', '02 64 88 41 03', 'Auctor Non Ltd', 'Bourgogne'),
  ('Brent', 'Gay', '80', 'M', 'in@yahoo.couk', '07 45 83 94 84', 'Eu Neque Pellentesque Foundation', 'Pays de la Loire'),
  ('Oren', 'Hughes', '15', 'F', 'convallis.ante@yahoo.couk', '07 25 72 86 23', 'Aliquet Consulting', 'Languedoc-Roussillon'),
  ('Rooney', 'Roach', '10', 'M', 'eu@aol.com', '02 14 58 81 26', 'Volutpat Ornare Facilisis LLC', 'Limousin'),
  ('Tatiana', 'Alston', '24', 'F', 'enim@outlook.edu', '05 74 97 57 97', 'Lectus Quis Massa Incorporated', 'Alsace'),
  ('Zorita', 'Hicks', '59', 'F', 'id@protonmail.org', '05 84 47 18 76', 'Nunc Sed Associates', 'Limousin'),
  ('Regina', 'Trevino', '63', 'F', 'laoreet@google.couk', '03 49 35 22 78', 'Et Lacinia Vitae Company', 'Haute-Normandie'),
  ('Cassidy', 'Walsh', '6', 'M', 'et.ipsum.cursus@google.couk', '04 31 83 71 73', 'Auctor Corporation', 'Picardie'),
  ('Lee', 'Peters', '4', 'M', 'quisque.ornare@hotmail.ca', '04 26 93 41 23', 'Arcu Sed Eu Inc.', 'Poitou-Charentes'),
  ('Brenden', 'Frederick', '18', 'M', 'purus.mauris@hotmail.edu', '02 56 68 57 15', 'Congue Institute', 'Bretagne'),
  ('Evelyn', 'Conway', '40', 'F', 'viverra.maecenas@protonmail.com', '07 56 19 54 39', 'Lorem Ipsum Associates', 'Franche-Comté'),
  ('Emery', 'Watkins', '2', 'F', 'velit.eu.sem@icloud.couk', '09 32 26 88 63', 'Dapibus Quam LLC', 'Lorraine'),
  ('Tatiana', 'Gould', '12', 'M', 'nibh.quisque.nonummy@icloud.edu', '03 29 24 21 06', 'Donec Felis Orci Ltd', 'Centre'),
  ('Dante', 'Marshall', '98', 'F', 'felis.donec@aol.com', '04 36 67 76 48', 'Massa Integer Vitae Limited', 'Aquitaine'),
  ('Felix', 'Sears', '67', 'F', 'odio.vel.est@outlook.com', '03 52 82 18 54', 'Pede Nunc LLC', 'Auvergne'),
  ('Cruz', 'Mcbride', '85', 'M', 'est@protonmail.edu', '07 11 50 63 13', 'In Mi Associates', 'Bourgogne'),
  ('Theodore', 'Langley', '101', 'M', 'aenean.eget@hotmail.couk', '08 51 86 78 77', 'Sodales Elit Ltd', 'Auvergne'),
  ('Kyla', 'Rice', '78', 'M', 'elementum.sem@aol.net', '02 66 68 08 01', 'Est Ltd', 'Languedoc-Roussillon'),
  ('Christian', 'Dodson', '51', 'F', 'libero@icloud.net', '03 58 24 85 57', 'Morbi Vehicula Pellentesque LLP', 'Limousin'),
  ('Zelda', 'Daniel', '96', 'F', 'eu.odio@protonmail.couk', '06 65 31 37 66', 'Vulputate Lacus LLP', 'Franche-Comté'),
  ('Liberty', 'Bauer', '93', 'F', 'quisque.ornare@yahoo.net', '08 71 27 97 28', 'Orci In Consequat Foundation', 'Bretagne'),
  ('Unity', 'Myers', '64', 'F', 'mauris.molestie@aol.net', '05 54 59 52 86', 'Elementum Sem Vitae Corporation', 'Champagne-Ardenne'),
  ('Dana', 'Day', '107', 'M', 'non@aol.com', '07 15 62 54 67', 'Vivamus Nibh Corp.', 'Lorraine'),
  ('Yoshio', 'Dorsey', '89', 'M', 'lorem.lorem@icloud.net', '06 94 66 48 43', 'Commodo Hendrerit LLC', 'Midi-Pyrénées'),
  ('Eagan', 'Fulton', '82', 'F', 'sit.amet@aol.org', '06 87 88 49 59', 'Vitae Purus Institute', 'Franche-Comté'),
  ('Mia', 'Haynes', '19', 'M', 'interdum.nunc@hotmail.org', '02 47 43 64 37', 'Cras Ltd', 'Auvergne'),
  ('Rebecca', 'Mathis', '71', 'F', 'vel.pede@outlook.com', '02 78 58 65 72', 'Urna Nullam Corporation', 'Alsace'),
  ('Barrett', 'Ellison', '41', 'F', 'nunc.nulla@hotmail.edu', '04 28 76 16 21', 'In LLC', 'Pays de la Loire'),
  ('Ursula', 'Fernandez', '17', 'M', 'et.magna.praesent@protonmail.net', '05 87 41 25 68', 'Dis Parturient Limited', 'Champagne-Ardenne'),
  ('Emi', 'Gonzalez', '53', 'M', 'ac.risus@icloud.couk', '04 99 83 46 62', 'Accumsan Foundation', 'Pays de la Loire'),
  ('Roth', 'Wilkerson', '85', 'F', 'et.magnis.dis@icloud.net', '02 51 51 49 83', 'Magna PC', 'Bretagne'),
  ('Colton', 'Foreman', '26', 'M', 'in.faucibus@yahoo.couk', '08 68 87 57 48', 'Sed Sem Foundation', 'Centre'),
  ('Adria', 'Fry', '34', 'F', 'litora@yahoo.net', '03 59 71 21 73', 'Risus Nulla Corporation', 'Haute-Normandie'),
  ('Flynn', 'Wood', '25', 'F', 'ornare.lectus.justo@outlook.ca', '04 63 11 10 34', 'Mauris LLP', 'Alsace'),
  ('Kameko', 'Levine', '23', 'M', 'fusce@yahoo.couk', '05 57 55 55 45', 'Ac Turpis Egestas Incorporated', 'Bretagne'),
  ('Cairo', 'Quinn', '104', 'F', 'phasellus.libero@yahoo.edu', '07 09 28 47 43', 'At Sem Incorporated', "Provence-Alpes-Côte d'Azur"),
  ('Leslie', 'Kirby', '24', 'F', 'sed@protonmail.edu', '08 53 41 04 42', 'Proin Velit Sed Incorporated', 'Haute-Normandie'),
  ('Deborah', 'Mayo', '15', 'M', 'cursus.a@protonmail.net', '06 59 56 73 45', 'Adipiscing Lacus Associates', 'Basse-Normandie'),
  ('Rajah', 'Forbes', '94', 'F', 'quis@yahoo.ca', '02 66 97 34 43', 'Rhoncus Proin Nisl Foundation', 'Aquitaine'),
  ('Reed', 'Avery', '88', 'M', 'sodales.elit@hotmail.net', '07 67 24 55 88', 'Et Rutrum Eu Inc.', 'Bretagne'),
  ('Lawrence', 'Best', '100', 'F', 'sapien.cursus@outlook.ca', '07 51 79 48 56', 'Lacus Mauris Non LLP', 'Bourgogne'),
  ('David', 'Summers', '62', 'M', 'imperdiet.ornare.in@google.edu', '06 42 71 63 50', 'Dis Parturient Associates', 'Aquitaine'),
  ('Lenore', 'Goodwin', '45', 'F', 'natoque.penatibus@icloud.com', '08 53 34 24 62', 'Nibh LLC', 'Pays de la Loire'),
  ('Jasper', 'Guzman', '42', 'M', 'nec.metus@yahoo.org', '01 02 33 34 42', 'Euismod Ltd', 'Limousin'),
  ('Daryl', 'Jensen', '70', 'M', 'neque@hotmail.edu', '04 54 25 86 06', 'Posuere Cubilia Curae Associates', 'Île-de-France'),
  ('Samson', 'Crawford', '60', 'F', 'tempor@hotmail.edu', '06 55 60 24 67', 'Orci In Consequat Institute', 'Champagne-Ardenne'),
  ('Roanna', 'Marks', '4', 'M', 'nibh.enim@icloud.edu', '06 41 52 04 77', 'Sociis Natoque Limited', 'Picardie'),
  ('Macey', 'Griffin', '71', 'M', 'ipsum.primis@hotmail.ca', '04 85 78 49 84', 'Eu Industries', 'Bourgogne'),
  ('Lee', 'Dudley', '95', 'M', 'duis.volutpat.nunc@protonmail.com', '06 78 65 21 87', 'Pede Cum Institute', 'Midi-Pyrénées'),
  ('Pearl', 'Miranda', '16', 'M', 'nascetur@google.com', '08 38 85 76 12', 'Auctor Ullamcorper Ltd', 'Limousin'),
  ('John', 'Talley', '73', 'M', 'ut.pellentesque.eget@icloud.edu', '06 72 58 96 01', 'Pellentesque Tellus Sem Institute', 'Centre'),
  ('Susan', 'Stokes', '32', 'M', 'integer.sem@hotmail.net', '02 76 06 87 37', 'Ut Molestie Industries', 'Basse-Normandie'),
  ('Aspen', 'Washington', '3', 'F', 'lorem.ut@yahoo.couk', '04 54 19 07 84', 'Quisque Purus Limited', "Provence-Alpes-Côte d'Azur"),
  ('Trevor', 'Yang', '47', 'F', 'nisi.magna@icloud.ca', '02 29 16 95 14', 'Orci Corporation', 'Champagne-Ardenne'),
  ('Kane', 'Reeves', '4', 'F', 'nulla@google.org', '01 65 61 08 29', 'Eu Corp.', 'Aquitaine'),
  ('Dahlia', 'Mccoy', '32', 'M', 'volutpat.nulla@yahoo.edu', '01 74 62 03 70', 'Sit Amet Consectetuer PC', 'Basse-Normandie'),
  ('Brandon', 'Kane', '63', 'M', 'ligula@aol.couk', '05 32 41 28 75', 'Ultricies LLP', 'Lorraine'),
  ('Keith', 'Harrington', '13', 'M', 'justo@hotmail.ca', '07 12 52 05 76', 'Arcu Iaculis LLP', 'Basse-Normandie'),
  ('Ina', 'Burgess', '17', 'F', 'condimentum.eget@protonmail.ca', '07 43 51 98 47', 'Eget Dictum Ltd', 'Poitou-Charentes'),
  ('Hadassah', 'Schroeder', '11', 'M', 'arcu@hotmail.com', '05 87 57 44 47', 'A Felis Ullamcorper PC', 'Haute-Normandie'),
  ('Merritt', 'Solis', '86', 'F', 'luctus.sit.amet@icloud.couk', '05 83 64 78 32', 'Habitant Morbi Tristique Industries', 'Pays de la Loire'),
  ('Molly', 'Stout', '54', 'F', 'cum.sociis@icloud.edu', '05 61 85 40 47', 'Auctor Non Feugiat Industries', 'Corse'),
  ('Wesley', 'William', '108', 'M', 'scelerisque@protonmail.ca', '06 44 58 64 32', 'Augue Ac Institute', 'Poitou-Charentes'),
  ('Amela', 'Mcgee', '103', 'M', 'sem.vitae@hotmail.ca', '07 41 14 73 50', 'Erat Volutpat Inc.', 'Champagne-Ardenne'),
  ('Amal', "O'brien", '15', 'F', 'ipsum.nunc@google.com', '08 71 22 23 68', 'Faucibus Ut Consulting', 'Nord-Pas-de-Calais'),
  ('Henry', 'Knight', '96', 'F', 'vivamus.molestie@protonmail.org', '01 11 30 47 61', 'Magna Limited', 'Haute-Normandie'),
  ('Hermione', 'Kelly', '86', 'F', 'dui.cum.sociis@yahoo.couk', '08 77 72 27 14', 'Mollis Lectus Incorporated', 'Poitou-Charentes'),
  ('Sacha', 'David', '44', 'F', 'consectetuer.ipsum@google.couk', '04 34 87 66 45', 'Magnis Dis Industries', 'Pays de la Loire'),
  ('Ulric', 'Patel', '58', 'M', 'fermentum.vel.mauris@icloud.com', '03 83 85 84 52', 'Congue A Foundation', 'Languedoc-Roussillon'),
  ('Paki', 'Hodge', '12', 'M', 'dui.semper.et@hotmail.edu', '07 26 87 65 86', 'Ac Turpis Industries', 'Franche-Comté'),
  ('Cameron', 'Hawkins', '27', 'M', 'donec.est@google.couk', '04 37 60 03 81', 'Magna Malesuada LLC', 'Limousin'),
  ('Kieran', 'Ramsey', '17', 'M', 'odio.semper.cursus@aol.com', '08 71 41 59 83', 'Et PC', 'Lorraine'),
  ('Wanda', 'Gonzalez', '20', 'F', 'sed.auctor@icloud.edu', '03 21 78 63 86', 'Nisl Ltd', 'Picardie'),
  ('Dalton', 'Flowers', '109', 'M', 'mauris.aliquam@outlook.org', '05 44 97 41 32', 'Viverra Limited', 'Centre'),
  ('Savannah', 'Olsen', '37', 'F', 'ullamcorper.viverra.maecenas@aol.com', '02 36 63 44 27', 'Tempor LLP', 'Auvergne'),
  ('Burton', 'Gregory', '67', 'M', 'metus.eu@google.com', '05 82 86 12 61', 'Nulla Tincidunt Corp.', 'Basse-Normandie'),
  ('Vaughan', 'Peterson', '35', 'F', 'imperdiet.erat@outlook.ca', '04 81 80 15 61', 'Fusce Aliquam Enim PC', 'Basse-Normandie'),
  ('Gail', 'Washington', '105', 'F', 'dolor@protonmail.couk', '08 25 50 72 52', 'Magna A PC', 'Corse'),
  ('Demetria', 'Lopez', '99', 'F', 'in@aol.org', '04 43 30 48 62', 'Dolor Donec Fringilla Ltd', 'Pays de la Loire'),
  ('Aileen', 'Hatfield', '76', 'M', 'nibh.dolor.nonummy@outlook.com', '03 13 22 25 07', 'Sem Elit Pharetra Foundation', 'Languedoc-Roussillon'),
  ('Noelani', 'Estes', '32', 'F', 'non.justo@hotmail.com', '06 98 53 95 39', 'Venenatis Vel Foundation', "Provence-Alpes-Côte d'Azur"),
  ('Brynn', 'Gordon', '100', 'M', 'sem.elit.pharetra@yahoo.com', '08 86 64 46 89', 'Suspendisse Sed Corp.', 'Bourgogne'),
  ('Hadassah', 'Stephens', '110', 'F', 'fringilla.donec.feugiat@protonmail.com', '07 93 41 27 67', 'Proin Nisl Sem LLP', 'Nord-Pas-de-Calais'),
  ('Fritz', 'Nguyen', '25', 'F', 'et@yahoo.edu', '06 38 85 28 96', 'Ornare In Associates', 'Franche-Comté'),
  ('Elvis', 'Campbell', '75', 'F', 'in@protonmail.net', '02 31 36 84 88', 'Est Mollis Non PC', 'Franche-Comté'),
  ('Christian', 'Gamble', '73', 'F', 'ac.feugiat.non@aol.ca', '07 18 39 53 84', 'Nec Ligula Consectetuer Ltd', 'Pays de la Loire'),
  ('Raven', 'Meyer', '92', 'F', 'donec.dignissim@protonmail.edu', '02 80 61 83 34', 'Tristique Senectus Et Corporation', 'Limousin'),
  ('Calvin', 'Nolan', '38', 'M', 'sit.amet.diam@icloud.couk', '07 18 41 73 57', 'Urna Suscipit Foundation', 'Haute-Normandie'),
  ('Bo', 'Hanson', '40', 'M', 'aliquet.diam.sed@protonmail.com', '02 78 89 18 06', 'Semper Pretium Institute', 'Nord-Pas-de-Calais'),
  ('Jena', 'Huff', '29', 'F', 'fringilla.porttitor@outlook.ca', '07 24 32 82 89', 'A Malesuada Institute', 'Corse'),
  ('Hop', 'Glenn', '77', 'M', 'nisi@google.org', '09 62 56 04 97', 'Faucibus Leo Institute', 'Corse'),
  ('Pearl', 'Schultz', '66', 'M', 'ligula.consectetuer@aol.edu', '06 95 77 44 22', 'Sodales Inc.', "Provence-Alpes-Côte d'Azur"),
  ('Mollie', 'Cantrell', '9', 'M', 'turpis@protonmail.ca', '05 13 69 35 88', 'Id Erat Institute', 'Auvergne'),
  ('Kato', 'Irwin', '51', 'F', 'in.felis@protonmail.couk', '04 25 18 39 58', 'Leo In Institute', 'Île-de-France'),
  ('Curran', 'Lewis', '8', 'M', 'libero.proin.mi@protonmail.ca', '07 77 54 82 18', 'Fringilla Purus Corporation', 'Alsace'),
  ('May', 'Valdez', '13', 'M', 'eu.euismod@yahoo.com', '09 53 81 81 19', 'Feugiat Non Corporation', 'Bretagne'),
  ('Celeste', 'Marsh', '75', 'F', 'nulla@icloud.couk', '05 21 55 86 23', 'Eget Metus Ltd', 'Pays de la Loire'),
  ('Sydney', 'Salas', '27', 'F', 'aenean.sed@yahoo.edu', '02 87 42 58 76', 'Sagittis Lobortis Foundation', 'Bourgogne'),
  ('Noah', 'Zamora', '20', 'F', 'consectetuer.rhoncus@aol.edu', '03 20 74 37 44', 'Quis Pede Suspendisse LLP', 'Corse'),
  ('Molly', 'Compton', '101', 'F', 'ut.mi.duis@icloud.ca', '07 64 31 68 97', 'Facilisis Non Bibendum Ltd', 'Bretagne'),
  ('Veronica', 'Jordan', '36', 'F', 'pellentesque.sed@yahoo.net', '03 10 08 41 49', 'Eu Dui Corporation', 'Bourgogne'),
  ('Samantha', 'Romero', '55', 'F', 'morbi.vehicula@google.net', '04 98 48 57 68', 'Dictum Cursus Ltd', 'Languedoc-Roussillon'),
  ('Ralph', 'Roach', '63', 'M', 'placerat.cras@outlook.ca', '07 73 33 49 63', 'Leo Elementum Sem Limited', 'Bretagne'),
  ('Wyatt', 'Golden', '17', 'F', 'porttitor.vulputate@yahoo.com', '04 22 24 20 42', 'Luctus Et Limited', 'Languedoc-Roussillon'),
  ('Lucas', 'Robles', '98', 'F', 'dis.parturient@aol.org', '05 67 28 81 86', 'A Sollicitudin PC', 'Basse-Normandie'),
  ('Odysseus', 'Flynn', '85', 'F', 'lobortis.quam@outlook.org', '08 99 34 22 82', 'Ut Dolor Dapibus Foundation', 'Île-de-France'),
  ('Kirk', 'Herring', '86', 'F', 'massa.suspendisse@icloud.com', '01 84 89 67 98', 'Urna Corporation', 'Nord-Pas-de-Calais'),
  ('Mohammad', 'Harding', '20', 'F', 'etiam.ligula@protonmail.couk', '04 24 78 82 40', 'Ut Dolor Dapibus Company', 'Champagne-Ardenne'),
  ('Griffith', 'Lang', '27', 'F', 'aliquam.vulputate@yahoo.edu', '07 31 00 20 78', 'Venenatis Associates', "Provence-Alpes-Côte d'Azur"),
  ('Keiko', 'Meyers', '9', 'F', 'at.risus@protonmail.org', '01 59 88 56 81', 'Blandit Institute', 'Haute-Normandie'),
  ('Abbot', 'Cruz', '10', 'F', 'mi.enim@hotmail.edu', '08 61 97 37 52', 'Enim Ltd', 'Languedoc-Roussillon'),
  ('Roth', 'Lee', '31', 'F', 'gravida.sit@aol.edu', '04 09 81 16 54', 'Dapibus Quam Limited', 'Lorraine'),
  ('Erasmus', 'Marquez', '101', 'M', 'duis.gravida@icloud.net', '08 35 52 63 65', 'Dolor Inc.', "Provence-Alpes-Côte d'Azur"),
  ('Xyla', 'Carey', '44', 'F', 'suspendisse.aliquet.molestie@aol.com', '07 36 26 13 64', 'Amet Ornare Corp.', 'Franche-Comté'),
  ('Athena', 'Faulkner', '51', 'F', 'fusce.feugiat@protonmail.ca', '05 19 07 18 52', 'Congue Elit Industries', 'Alsace'),
  ('Arthur', 'Rush', '21', 'M', 'tincidunt.neque.vitae@protonmail.couk', '08 88 70 27 11', 'Non Egestas A Incorporated', 'Franche-Comté'),
  ('Maisie', 'Glass', '11', 'M', 'eu@yahoo.com', '09 32 44 35 19', 'Justo Corporation', 'Haute-Normandie'),
  ('Shellie', 'Marks', '109', 'F', 'nascetur.ridiculus.mus@outlook.com', '02 94 38 15 23', 'Ultricies Inc.', 'Bourgogne'),
  ('Kirk', 'Adams', '20', 'M', 'fringilla.ornare@icloud.com', '06 14 13 40 73', 'Tempus Mauris PC', 'Bretagne'),
  ('Iola', 'Rosario', '12', 'M', 'mauris.blandit@google.couk', '08 11 27 53 23', 'Lorem Institute', 'Centre'),
  ('Rooney', 'Morales', '44', 'F', 'vivamus.nibh@aol.edu', '06 83 39 15 70', 'Ut Sem Corp.', 'Basse-Normandie'),
  ('Hakeem', 'Mejia', '24', 'F', 'lobortis@hotmail.com', '03 13 52 23 63', 'Urna Justo Industries', 'Poitou-Charentes'),
  ('Rooney', 'Perkins', '32', 'F', 'nibh.phasellus@google.net', '06 38 07 32 84', 'Egestas Ligula LLC', 'Corse'),
  ('Wanda', 'Wells', '8', 'F', 'magna@outlook.com', '01 52 48 53 70', 'Interdum Institute', 'Haute-Normandie'),
  ('Otto', 'Hebert', '81', 'M', 'molestie@yahoo.net', '07 81 58 34 41', 'Massa Integer Vitae Corp.', 'Bourgogne'),
  ('Brianna', 'Cooley', '34', 'M', 'neque@protonmail.ca', '06 53 38 48 17', 'Laoreet Libero PC', 'Nord-Pas-de-Calais'),
  ('Malachi', 'Pennington', '75', 'M', 'a@outlook.ca', '05 81 57 97 81', 'Vitae Sodales Corporation', 'Auvergne'),
  ('Matthew', 'Bonner', '19', 'M', 'mauris.ut.quam@outlook.couk', '03 86 99 70 87', 'Vitae Associates', 'Midi-Pyrénées'),
  ('Quon', 'Levy', '76', 'M', 'amet.massa@aol.ca', '04 62 59 36 94', 'Mollis Industries', 'Pays de la Loire'),
  ('Chester', 'Best', '78', 'M', 'tortor.nibh.sit@outlook.ca', '06 17 48 46 81', 'Velit Company', 'Champagne-Ardenne'),
  ('Lani', 'Rasmussen', '75', 'M', 'in.sodales@aol.ca', '03 77 29 64 42', 'Eu Euismod Foundation', 'Basse-Normandie'),
  ('Ila', 'Knapp', '31', 'F', 'est.mauris@aol.edu', '02 64 47 07 46', 'Sem Inc.', 'Bourgogne'),
  ('Dale', 'Powell', '95', 'M', 'ultricies.sem@outlook.edu', '01 83 31 57 63', 'Quisque Purus LLP', 'Bourgogne'),
  ('Imogene', 'Petersen', '100', 'F', 'mattis.integer.eu@outlook.org', '05 47 30 83 81', 'Nulla Dignissim Maecenas Company', 'Basse-Normandie'),
  ('Bell', 'Butler', '108', 'M', 'erat.vitae.risus@hotmail.ca', '01 11 06 25 15', 'Est Arcu Ac Limited', 'Lorraine'),
  ('Hall', 'Wilder', '82', 'F', 'sem.elit@hotmail.org', '05 69 42 94 66', 'Sit Amet Limited', 'Centre'),
  ('Abbot', 'Daniels', '41', 'M', 'fermentum.fermentum@aol.ca', '05 76 13 25 36', 'Felis Purus Institute', 'Haute-Normandie'),
  ('Price', 'Gibbs', '97', 'F', 'adipiscing.elit@icloud.com', '09 21 83 17 34', 'Malesuada Fringilla Est Limited', 'Poitou-Charentes'),
  ('Brady', 'Bonner', '29', 'M', 'suspendisse.dui@aol.net', '04 41 26 38 36', 'Parturient Montes PC', 'Basse-Normandie'),
  ('Burton', 'Acosta', '3', 'M', 'integer@google.org', '04 08 11 88 54', 'Et Ipsum Cursus Industries', 'Limousin'),
  ('Uta', 'Acosta', '50', 'F', 'in.sodales.elit@hotmail.couk', '07 62 60 17 60', 'Magna Malesuada Institute', 'Haute-Normandie'),
  ('Cyrus', 'Vincent', '75', 'M', 'semper@icloud.com', '02 75 42 47 90', 'Nullam Ut Limited', 'Midi-Pyrénées'),
  ('Nadine', 'Mills', '22', 'F', 'donec.tempus@icloud.org', '06 73 65 96 72', 'Porttitor Incorporated', 'Picardie'),
  ('Zenia', 'Huffman', '107', 'M', 'proin.vel@protonmail.ca', '01 71 20 77 43', 'Tortor Dictum Eu Associates', 'Midi-Pyrénées'),
  ('Bevis', 'Dotson', '43', 'M', 'aliquam.enim.nec@protonmail.ca', '07 84 07 71 97', 'Eget Metus Limited', 'Centre'),
  ('Ainsley', 'Crane', '73', 'F', 'molestie@protonmail.ca', '05 33 86 80 59', 'Turpis Egestas LLC', 'Centre'),
  ('Malcolm', 'Fulton', '57', 'F', 'morbi.sit.amet@icloud.com', '07 81 66 11 46', 'Quam Vel Inc.', 'Île-de-France'),
  ('Lareina', 'Dudley', '108', 'M', 'a@outlook.edu', '04 37 37 21 35', 'Mi LLP', 'Pays de la Loire'),
  ('Portia', 'Ellis', '42', 'F', 'per.inceptos@hotmail.net', '02 77 36 51 54', 'Risus Quisque LLC', 'Poitou-Charentes'),
  ('Lamar', 'Coffey', '40', 'M', 'nisi.magna@google.ca', '01 62 47 14 63', 'Erat Eget Tincidunt Institute', 'Languedoc-Roussillon'),
  ('Solomon', 'Foreman', '7', 'F', 'at.iaculis@outlook.edu', '06 11 36 51 32', 'Nec Enim Institute', 'Haute-Normandie'),
  ('Macey', 'Vasquez', '106', 'M', 'in.tempus@aol.couk', '04 32 17 15 79', 'Enim Foundation', 'Bourgogne'),
  ('Garth', 'Lee', '39', 'F', 'elit.fermentum@outlook.couk', '01 35 22 14 66', 'At Nisi Associates', 'Bourgogne'),
  ('Ferdinand', 'Park', '39', 'M', 'felis.nulla@protonmail.ca', '05 53 72 31 77', 'Venenatis Vel Associates', 'Corse'),
  ('Malik', 'Merritt', '2', 'F', 'ante.nunc.mauris@google.couk', '02 73 33 33 37', 'Enim Nisl Ltd', 'Limousin'),
  ('Melodie', 'Pennington', '54', 'F', 'duis.sit@icloud.edu', '09 10 55 18 36', 'Tellus Associates', 'Haute-Normandie'),
  ('Amir', 'Branch', '85', 'M', 'a.malesuada@aol.net', '04 64 24 93 82', 'Scelerisque Dui Company', 'Poitou-Charentes'),
  ('Vaughan', 'Atkins', '81', 'F', 'aliquet.sem.ut@icloud.couk', '04 22 51 22 16', 'Ligula Nullam Corporation', 'Lorraine'),
  ('Velma', 'Perez', '35', 'M', 'vestibulum@icloud.ca', '06 79 03 84 37', 'Tincidunt Orci Limited', 'Haute-Normandie'),
  ('Nichole', 'Cox', '21', 'M', 'integer.vitae.nibh@protonmail.com', '07 66 53 18 97', 'Aliquam Ltd', 'Limousin'),
  ('Reece', 'Wyatt', '80', 'F', 'quam.pellentesque@aol.com', '07 58 21 22 55', 'At Company', 'Corse'),
  ('Alexis', 'Bennett', '48', 'F', 'quis@google.com', '04 86 78 16 64', 'Eu Sem LLC', 'Île-de-France'),
  ('Wang', 'Thompson', '76', 'M', 'ut.eros.non@yahoo.edu', '09 67 14 70 76', 'Non Lobortis Inc.', 'Midi-Pyrénées'),
  ('Demetria', 'Lawrence', '3', 'M', 'ornare.egestas@outlook.ca', '06 57 77 24 75', 'Mauris Vestibulum Neque Consulting', 'Auvergne'),
  ('Bree', 'Willis', '49', 'F', 'nisi.mauris@google.org', '07 67 16 69 66', 'Ac Fermentum LLP', 'Pays de la Loire'),
  ('Randall', 'Burton', '36', 'F', 'nibh.vulputate@yahoo.org', '04 65 81 37 13', 'Risus Foundation', 'Auvergne'),
  ('Elliott', 'Combs', '59', 'F', 'sagittis.placerat@protonmail.couk', '04 18 27 92 17', 'Convallis In Corp.', 'Nord-Pas-de-Calais'),
  ('Gavin', 'Bryant', '86', 'F', 'proin.mi.aliquam@yahoo.org', '07 71 25 07 23', 'Nec Tellus Associates', 'Haute-Normandie'),
  ('Yael', 'Mckee', '58', 'F', 'integer@aol.com', '03 13 18 33 75', 'Ante Vivamus Foundation', 'Midi-Pyrénées'),
  ('Hayfa', 'Williams', '17', 'F', 'sed.facilisis@aol.ca', '09 21 69 01 31', 'Nec Company', 'Pays de la Loire'),
  ('Clarke', 'Carver', '54', 'F', 'augue.eu@yahoo.com', '03 47 18 25 27', 'Varius Nam Inc.', "Provence-Alpes-Côte d'Azur"),
  ('Renee', 'Dickson', '64', 'M', 'ac.turpis.egestas@hotmail.ca', '09 72 45 82 21', 'Lacus Vestibulum Inc.', 'Alsace'),
  ('Garrison', 'Terry', '67', 'F', 'dapibus@protonmail.ca', '05 32 57 66 47', 'Semper Rutrum Fusce Limited', 'Bourgogne'),
  ('Mary', 'Morse', '21', 'F', 'tortor.at@aol.couk', '02 68 69 27 24', 'Ut Tincidunt Vehicula Foundation', 'Bourgogne'),
  ('Xaviera', 'Sharp', '90', 'M', 'posuere@yahoo.couk', '01 21 57 66 05', 'Urna Inc.', 'Basse-Normandie'),
  ('Carly', 'Mcdonald', '96', 'M', 'sed@aol.ca', '05 83 12 54 18', 'Est LLC', 'Languedoc-Roussillon'),
  ('Jayme', 'Marquez', '47', 'F', 'auctor.velit.aliquam@icloud.org', '06 33 43 71 71', 'Quis Tristique Industries', 'Lorraine'),
  ('Connor', 'Price', '91', 'F', 'ipsum.dolor@protonmail.edu', '08 79 30 77 53', 'Lectus Rutrum Foundation', 'Centre'),
  ('Ian', 'Vincent', '80', 'F', 'volutpat@google.edu', '06 76 84 94 45', 'Proin Incorporated', 'Auvergne'),
  ('Leigh', 'Ferrell', '106', 'M', 'sapien.gravida.non@hotmail.com', '07 28 05 31 82', 'Integer Aliquam Adipiscing LLP', 'Auvergne'),
  ('Abraham', 'Emerson', '68', 'F', 'a.arcu.sed@outlook.ca', '04 11 88 25 55', 'Pellentesque Corporation', "Provence-Alpes-Côte d'Azur"),
  ('Selma', 'Black', '107', 'F', 'non@protonmail.ca', '04 67 52 06 44', 'Sagittis Felis Industries', 'Franche-Comté'),
  ('Thaddeus', 'Simon', '32', 'M', 'dis.parturient.montes@outlook.ca', '01 57 26 81 70', 'Consectetuer Cursus Incorporated', 'Île-de-France'),
  ('Kerry', 'Barron', '67', 'M', 'vel@yahoo.ca', '07 00 86 72 27', 'Morbi Accumsan Laoreet Corporation', 'Bretagne'),
  ('Inga', 'Oliver', '45', 'F', 'ornare.tortor@icloud.ca', '05 35 75 69 23', 'Auctor Industries', 'Île-de-France'),
  ('Salvador', 'Randolph', '44', 'M', 'eleifend.egestas.sed@google.com', '02 39 67 64 41', 'Nam Incorporated', 'Centre'),
  ('Norman', 'Spence', '74', 'M', 'nam.porttitor@aol.com', '07 90 34 78 82', 'Facilisis Non Associates', 'Limousin'),
  ('Doris', 'Quinn', '22', 'M', 'mauris.molestie@outlook.couk', '04 84 17 27 67', 'Suspendisse Corporation', 'Alsace'),
  ('Yolanda', 'Rodriquez', '86', 'F', 'dictum@protonmail.ca', '07 95 92 91 46', 'Accumsan Convallis Ante Incorporated', 'Basse-Normandie'),
  ('Lee', 'Mack', '85', 'F', 'integer.tincidunt@hotmail.ca', '03 27 94 61 85', 'Ac Risus Morbi Associates', 'Basse-Normandie'),
  ('Ferris', 'Patterson', '55', 'F', 'aliquam.eu@yahoo.org', '04 69 24 65 45', 'At Lacus Quisque Institute', 'Basse-Normandie'),
  ('Colorado', 'Browning', '106', 'F', 'posuere.cubilia.curae@yahoo.net', '03 72 45 27 32', 'Lacus LLP', 'Franche-Comté'),
  ('Uta', 'Le', '102', 'F', 'phasellus.ornare@google.couk', '01 84 28 22 31', 'Volutpat Incorporated', 'Nord-Pas-de-Calais'),
  ('Rudyard', 'Jacobson', '97', 'F', 'quisque.fringilla@outlook.ca', '08 12 32 87 87', 'Fusce Dolor Quam LLP', 'Champagne-Ardenne'),
  ('Camden', 'Mccormick', '35', 'F', 'interdum@protonmail.com', '07 43 49 54 98', 'Non Vestibulum Nec Foundation', 'Haute-Normandie'),
  ('Inez', 'Ramirez', '73', 'F', 'et.nunc.quisque@icloud.net', '04 31 35 82 29', 'Mus Donec Corp.', 'Picardie'),
  ('Lyle', 'Duncan', '86', 'M', 'malesuada.fames@google.ca', '09 35 34 20 20', 'Nascetur Ridiculus Institute', 'Limousin'),
  ('Melinda', 'Meadows', '85', 'F', 'suspendisse.eleifend@yahoo.ca', '06 57 91 89 35', 'Varius Corp.', 'Bourgogne'),
  ('Hadassah', 'Mcclure', '58', 'M', 'non.sollicitudin.a@aol.ca', '05 63 17 26 96', 'Convallis Corp.', 'Pays de la Loire'),
  ('Giacomo', 'Hooper', '47', 'F', 'euismod@outlook.couk', '05 76 79 48 81', 'Penatibus Et Ltd', 'Poitou-Charentes'),
  ('Genevieve', 'Merritt', '80', 'F', 'donec.porttitor@outlook.net', '07 80 95 22 47', 'Praesent Luctus Curabitur LLP', 'Alsace'),
  ('Florence', 'Carpenter', '24', 'M', 'donec.fringilla.donec@protonmail.net', '07 82 81 21 73', 'Lacus Ut Limited', 'Midi-Pyrénées'),
  ('Logan', 'Finch', '65', 'F', 'ornare.tortor@hotmail.couk', '03 54 23 41 53', 'Phasellus Ltd', 'Franche-Comté'),
  ('Deirdre', 'Weiss', '16', 'F', 'urna.suscipit.nonummy@hotmail.org', '08 74 65 77 97', 'Integer Incorporated', 'Centre'),
  ('Kadeem', 'Blair', '60', 'M', 'amet.consectetuer@aol.net', '07 62 67 82 86', 'Donec At Arcu Company', 'Limousin'),
  ('Andrew', 'Fry', '87', 'M', 'turpis.vitae@icloud.ca', '02 32 26 33 40', 'Lacus Quisque Associates', 'Corse'),
  ('Finn', 'Ingram', '9', 'M', 'pede.praesent@protonmail.couk', '04 77 55 38 84', 'Interdum Institute', 'Pays de la Loire'),
  ('Inga', 'Lee', '64', 'M', 'tincidunt.nibh@icloud.couk', '01 25 61 32 19', 'Vulputate LLC', 'Nord-Pas-de-Calais'),
  ('Holmes', 'Fleming', '53', 'M', 'magna.sed@icloud.ca', '05 61 71 67 15', 'Blandit Viverra Donec Limited', 'Haute-Normandie'),
  ('Deacon', 'English', '18', 'F', 'nibh.sit@aol.ca', '06 48 38 50 19', 'Justo Associates', 'Basse-Normandie'),
  ('Grady', 'Hamilton', '25', 'F', 'vitae@outlook.com', '05 98 90 97 36', 'Diam Associates', 'Centre'),
  ('Merrill', 'Bowman', '12', 'F', 'sed.dictum@outlook.net', '08 82 82 13 88', 'Mauris LLP', 'Bretagne'),
  ('Guinevere', 'Hoffman', '14', 'M', 'natoque.penatibus@yahoo.edu', '04 11 60 82 56', 'Curae Donec Institute', 'Poitou-Charentes'),
  ('Wayne', 'Michael', '54', 'M', 'eget.metus@protonmail.com', '05 42 60 45 57', 'Vivamus Ltd', 'Nord-Pas-de-Calais'),
  ('Fleur', 'Moses', '84', 'F', 'a@icloud.net', '06 63 61 44 32', 'Eu Incorporated', 'Picardie'),
  ('Kyle', 'Lowery', '19', 'M', 'volutpat.nunc@hotmail.org', '06 39 55 29 33', 'Nibh Ltd', 'Champagne-Ardenne'),
  ('Cade', 'Clayton', '9', 'F', 'ornare.in@yahoo.net', '08 80 65 56 28', 'Morbi Quis Limited', 'Alsace'),
  ('Hiram', 'Harding', '65', 'M', 'enim.mauris@hotmail.edu', '05 31 74 56 79', 'Scelerisque Lorem Associates', 'Languedoc-Roussillon');
