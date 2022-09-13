-- посчитайте количество всех студентов

SELECT COUNT (*) FROM students;

-- посчитайте количество студентов с именем Иван

SELECT COUNT(*) as col_names FROM students WHERE Name = "Иван"

-- посчитайте количество студентов созданных после 1 сентября 2020 года

SELECT COUNT (*) as col_val_data FROM students WHERE created_at > '2020-09-01'


/* SQL
CREATE TABLE student (
  id int,
  name VARCHAR(255) UNIQUE NOT NULL,
  created_at datetime,
  parent_id int
);
INSERT INTO student (id, name, created_at) VALUES
  (1, 'Sansa', '2010-12-31 01:15:00'),
  (2, 'Jon', '2020-12-31 01:15:00'),
  (3, 'Daenerys', '2019-12-31 01:15:00'),
  (4, 'Arya', '2020-08-31 01:15:00'),
  (5, 'Robb',  '2021-12-31 01:15:00'),
  (6, 'Brienne', '2020-09-31 01:15:00'),
  (7, 'Tirion', '2020-09-01 01:15:00');
  */

  -- timestamp для PostgreSQL
/* PostgreSQL
  CREATE TABLE student (
  id int,
  name VARCHAR(255) UNIQUE NOT NULL,
  created_at timestamp,
  parent_id int
);
INSERT INTO student (id, name, created_at) VALUES
  (1, 'Sansa', '2010-12-31 01:15:00'),
  (2, 'Jon', '2020-12-31 01:15:00'),
  (3, 'Daenerys', '2019-12-31 01:15:00'),
  (4, 'Arya', '2020-08-31 01:15:00'),
  (5, 'Robb',  '2021-12-31 01:15:00'),
  (6, 'Brienne',  '2021-12-31 01:15:00'),
  (7, 'Tirion', '2020-09-01 01:15:00');
  */