CREATE DATABASE SUDENT_DATA;

CREATE TABLE student_info (
	student_id INT (15) NOT NULL,
	first_name CHAR (20) NOT NULL,
    last_name CHAR (20) NOT NULL,
    nationality VARCHAR (300) NOT NULL,
	age INT NOT NULL,
	study_year INT NOT NULL,
	study_type CHAR (20) NOT NULL,
    PRIMARY KEY (student_id)
);

EXPLAIN student_info;

CREATE TABLE student_results (
    student_id INT (15) NOT NULL,
    semester INT (15) NOT NULL,
	advanced_spreadsheets DECIMAL (4,2) NOT NULL,
	descriptive_analytics DECIMAL (4,2) NOT NULL,
    performance_analytics DECIMAL (4,2) NOT NULL,
    big_data DECIMAL (4,2) NOT NULL,
    data_mining DECIMAL (4,2) NOT NULL,
	PRIMARY KEY (student_id),
    FOREIGN KEY (student_id) REFERENCES student_info (student_id) 
 );
 
 EXPLAIN student_results;
 
 INSERT INTO student_info (student_id, first_name, last_name, nationality, age, study_year, study_type)
 VALUES ('200265123', 'Victoria', 'Hudges', 'USA', '20', '3', 'Full-time'),
 ('200265124', 'Meghan', 'Patron', 'England', '23', '2', 'Part-time'),
 ('200265125', 'Patrick', 'Philip', 'Wales', '25', '4', 'Part-time'),
 ('200265126', 'Enobong', 'Ebitu', 'Nigeria', '20', '1', 'Full-time'),
 ('200265234', 'Sussy', 'Waters', 'Australia', '21', '2', 'Full-time'),
 ('2002651235', 'Meghan', 'Patron', 'Scotland', '23', '2', 'Part-time'),
 ('200265236', 'Thompson', 'Trust', 'Netherlands', '28', '4', 'Part-time'),
 ('200265247', 'Nathalie', 'Malawi', 'Mali', '18', '1', 'Full-time'),
 ('200265250', 'Nick', 'Cahm', 'Scotland', '32', '4', 'Part-time'),
 ('200265252', 'John', 'Mark', 'England', '26', '4', 'Full-time');
 
 SELECT * FROM student_info;

INSERT INTO student_results (student_id, semester, advanced_spreadsheets, descriptive_analytics, performance_analytics, big_data, data_mining)
VALUES('200265123', '1', '90.5', '52', '84.5', '80', '50.4'),
 ('200265124', '2', '49.8', '52', '65', '60', '51.4'),
 ('200265125', '2', '87.5', '66', '49.8', '70', '62.5'),
 ('200265126', '2', '80.5', '59', '75', '85', '70'),
 ('200265234', '1', '70.5', '88', '55', '70', '65'),
 ('2002651235', '1', '50.5', '79', '90', '65.5', '50'),
 ('200265236', '1', '83.5', '90', '85', '81', '75.5'),
 ('200265247', '1', '75', '85', '65', '75', '59.5'),
 ('200265250', '1', '75.5', '65', '75', '79', '70.'),
 ('200265252', '2', '60.5', '52', '87.5', '69', '51.4');

SELECT * FROM student_results;

-- Update a record
UPDATE student_results
SET big_data = '70'
WHERE student_id = '2002651235';

SELECT * FROM student_results;

-- Delete a record
DELETE FROM student_results
WHERE student_id ='2002651235';

-- Delete a record
DELETE FROM student_info
WHERE student_id ='2002651235';

SELECT * FROM student_results;

SELECT * FROM student_info;

-- join tables student info and student results

SELECT student_info.first_name , student_results.student_id
FROM student_info
INNER JOIN student_results
ON student_info.student_id = student_results.student_id;

-- Selecting data and joining them
SELECT *
FROM student_info
INNER JOIN student_results
WHERE student_info.student_id = student_results.student_id AND student_results.semester = "1";

SELECT *
FROM student_info
INNER JOIN student_results
WHERE student_info.student_id = student_results.student_id AND student_results.semester = "2";

  SELECT * FROM student_info
  WHERE nationality ='England' ;
  
  -- Simple query
  SELECT * FROM student_info
  WHERE nationality ='England' ;
  
  -- complex query
  SELECT * FROM student_results
  WHERE advanced_spreadsheets <='70';
  
  -- Retrieve  data sorted in ascending orderof first name
  SELECT * FROM student_INFO
  ORDER BY first_name;
  
   -- Retrieve  data sorted in ascending order of last name
  SELECT * FROM student_INFO
  ORDER BY last_name;
  
  -- select using comparison operators of advanced spreadsheets
SELECT * FROM student_results
WHERE advanced_spreadsheets between 50 and 90;

  
  