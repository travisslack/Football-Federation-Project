DROP TABLE players;
DROP TABLE clubs;

CREATE TABLE clubs
(
id SERIAL8 PRIMARY KEY,
name VARCHAR (255),
icon TEXT
);

CREATE TABLE players
(
 id SERIAL8 PRIMARY KEY,
 first_name VARCHAR(255),
 second_name VARCHAR(255),
 age INT8,
 nationality VARCHAR(255),
 fit BOOLEAN,
 icon TEXT,
 position VARCHAR(255),
 club_id INT8 REFERENCES clubs(id)
);
