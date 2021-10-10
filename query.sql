-- Query to create database
CREATE DATABASE movie_1;

-- Query to use the selected database
USE movie_1;

-- Creating the 'movies_1' table
CREATE TABLE `movies_1` ( `movie_name` VARCHAR(20) NOT NULL , 
                        `actor` VARCHAR(20) NOT NULL ,
                        `actress` VARCHAR(20) NOT NULL ,
                         `year_of_release` INT(4) NOT NULL , 
                         `director_name` VARCHAR(20) NOT NULL,
                         PRIMARY KEY (`movie_name`)
                       );


-- Inserting values to the table
INSERT INTO `movies_1` (`movie_name`, `actor`, `actress`, `year_of_release`, `director_name`) VALUES ('War', 'Hrithik', 'Vani', '2019', 'Anand');
INSERT INTO `movies_1` (`movie_name`, `actor`, `actress`, `year_of_release`, `director_name`) VALUES ('Akash', 'Puneet', 'Ramya', '2008', 'Gopal');
INSERT INTO `movies_1` (`movie_name`, `actor`, `actress`, `year_of_release`, `director_name`) VALUES ('Dabangg', 'Salman Khan', 'Kareena', '2011', 'Ramesh');
INSERT INTO `movies_1` (`movie_name`, `actor`, `actress`, `year_of_release`, `director_name`) VALUES ('Fire', 'Hrithik', 'Katrina', '2010', 'Rakesh');
INSERT INTO `movies_1` (`movie_name`, `actor`, `actress`, `year_of_release`, `director_name`) VALUES ('Bodyguard', 'Salman Khan', 'Kareena', '2011', 'Raju');

-- Retrieving all the attributes from 'movies_1' table
SELECT * FROM movies_1;

-- Retrieving all the attributes from 'movies_1' table based on actor
SELECT * FROM movies_1 WHERE actor="Hrithik";

-- Retrieving all the attributes where year of release is between 2015 and 2021
SELECT * FROM movies_1 WHERE year_of_release BETWEEN 2015 AND 2021;