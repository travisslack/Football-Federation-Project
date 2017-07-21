DROP TABLE players;
DROP TABLE clubs;

CREATE TABLE clubs (
  id SERIAL8 PRIMARY KEY,
  club_name VARCHAR (255)
);

CREATE TABLE players (
  id SERIAL8 PRIMARY KEY,
  first_name VARCHAR(255),
  second_name VARCHAR(255),
  position VARCHAR(255),
  age INT8,
  fit BOOLEAN,
  club_id INT8 REFERENCES clubs(id)
);
