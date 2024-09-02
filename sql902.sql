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
    
SELECT * FROM `student`;
SELECT * FROM `class`;