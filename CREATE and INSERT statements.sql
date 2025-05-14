CREATE DATABASE AnimalDB;
USE AnimalDB;

CREATE TABLE Animals 
(
    Animal_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Species VARCHAR(50),
    Lifespan_Years INT,
    Habitat VARCHAR(50)
);

INSERT INTO Animals (Animal_ID, Name, Species, Lifespan_Years, Habitat) 
VALUES
(1, 'Leo', 'Lion', 14, 'Savannah'),
(2, 'Bella', 'Elephant', 70, 'Grasslands'),
(3, 'Stripes', 'Tiger', 20, 'Rainforest'),
(4, 'Hopper', 'Kangaroo', 23, 'Bushland'),
(5, 'Shelly', 'Tortoise', 100, 'Desert'),
(6, 'Skye', 'Eagle', 28, 'Mountains'),
(7, 'Bubbles', 'Dolphin', 40, 'Ocean'),
(8, 'Rocky', 'Raccoon', 5, 'Forest'),
(9, 'Frost', 'Penguin', 20, 'Antarctic'),
(10, 'Spike', 'Porcupine', 15, 'Woodland');

SELECT * FROM Animals