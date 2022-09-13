-- посчитайте количество студентов с родителями (1 варинат)

SELECT COUNT(*) as col_with_parents FROM students
WHERE parent_id > 0

-- посчитайте количество студентов с родителями (2 варинат)

SELECT COUNT(*) as col_with_parents FROM students
WHERE parent_id is not null

-- посчитайте количество студентов, где родитель с именем Марина

SELECT COUNT(*) FROM students
where parent_id = (select id from parents where name = 'Марина')

-- посчитайте количество студентов без родителей

SELECT COUNT(*) as col_no_parents FROM students
WHERE parent_id is null

/*
CREATE TABLE studen (
  id int,
  name VARCHAR(255) UNIQUE NOT NULL,
  created_at datetime,
  parent_id int
);
INSERT INTO studen (id, name, created_at) VALUES
  (1, 'Sansa', '2010-12-31 01:15:00'),
  (2, 'Jon', '2020-12-31 01:15:00'),
  (3, 'Daenerys', '2019-12-31 01:15:00'),
  (4, 'Arya', '2020-08-31 01:15:00'),
  (5, 'Robb',  '2021-12-31 01:15:00'),
  (6, 'Brienne', '2020-09-31 01:15:00'),
  (7, 'Tirion', '2020-09-01 01:15:00');
  */
  /*
 INSERT INTO students(created_at)VALUES
 ('20120618 10:34:09 AM'),
 ('20130418 10:34:09 AM'),
 ('20140418 10:34:09 AM'),
 ('20150418 10:34:09 AM'),
 ('20160418 10:34:09 AM'),
 ('20170418 10:34:09 AM'),
 ('20180418 10:34:09 AM'),
 ('20190418 10:34:09 AM');
 */
 /*
SELECT * FROM studen;
SELECT COUNT (*) as col_val_data FROM studen WHERE created_at > '2020-09-01'
*/
/*

CREATE TABLE parents(
	id int,
  	name varchar,
  	created_at datetime
);
*/
/*


insert into parents(id, name, created_at) values
(1, 'Alen Gaeb', '20120618'),
(2, 'Caleb Dressel', '20160618'),
(3, 'Selena Gomez', '20160618'),
(4, 'Serena Williams', '20180618'),
(5, 'Mike Grimse', '20181018')
*/

/* 
   UPDATE studen  
   SET parent_id = 4
   where id = 7
   */
/*
    UPDATE parents
    set name = 'Марина'
    where id = 5
    */