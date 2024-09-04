CREATE DATABASE `SQL902`;
USE `SQL902`;

CREATE TABLE `student` (
	`student_id` INT PRIMARY KEY,
    `name` VARCHAR(20),
    `major` VARCHAR(20)
);

CREATE TABLE `class` (
	`class_id` INT PRIMARY KEY,
    `class_no` VARCHAR(20),
    `class_location` VARCHAR(20)
);

ALTER TABLE `student` ADD `gpa` DECIMAL(3,2);
ALTER TABLE `student` ADD `class_id` INT;
ALTER TABLE student ADD score DECIMAL(3,1);
ALTER TABLE student
ADD CONSTRAINT fk_class_id
FOREIGN KEY (class_id)
REFERENCES class(class_id);

INSERT INTO `student` (student_id, name, major, gpa, class_id)
VALUES
	(001, 'Felix', 'MAE', 3.46, 2),
    (002, 'Jason', 'Finance', 3.38, 2),
    (003, 'Alice', 'EE', 3.49, 1);
    
INSERT INTO `class` (class_id, class_no, class_location)
VALUES
	(1, '一班', 'abc'),
    (2, '二班', 'zxc'),
    (3, '三班', 'qwe');

UPDATE `student` SET `score` = 98.5 WHERE `student_id` = 001;
UPDATE `student` SET `score` = 95.5 WHERE `student_id` = 002;
UPDATE `student` SET `score` = 92.5 WHERE `student_id` = 003;

# insert index into 'student'
ALTER TABLE student ADD INDEX inx_score(score);
    
SELECT * FROM `student`;
SELECT * FROM `class`;

SELECT name FROM student WHERE score >= 95 AND major = 'MAE' ;
SELECT * FROM student WHERE NOT class_id = 1;
