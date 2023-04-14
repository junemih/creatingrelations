CREATE TABLE students (
    id INTEGER PRIMARY KEY NOT NULL,
    firstname VARCHAR(40),
    lastname VARCHAR(80),
    age INT
)

INSERT INTO students (firstname, lastname, age) VALUES
('Fred', 'Flintstone', 35),
('Wilma', 'Flintstone', 29),
('Barney', 'Rubble', 33),
('Betty', 'Rubble', 29),
('Pebbles', 'Flintstone', 1),
('Bam-Bam', 'Rubble', 1),
('Nancy', 'Huang', 19),
('Amber', 'Lu', 20),
('Katelyn', 'Chae', 21);