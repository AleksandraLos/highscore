-- DDL( Data Definition Language)
CREATE DATABASE highscore;

CREATE TABLE game (
	id INTEGER GENERATED ALWAYS AS IDENTITY,
	title VARCHAR(50) NOT NULL,
	genre VARCHAR(50) NOT NULL,
  description VARCHAR(500) NOT NULL,
	release_date SMALLINT NOT NULL,
	image_url VARCHAR(250) NOT NULL,
	url_slug VARCHAR(50) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE users (
	id INTEGER GENERATED ALWAYS AS IDENTITY,
	game VARCHAR(50) NOT NULL,
  player VARCHAR(50) NOT NULL,
  points INTEGER NOT NULL,
	score_date DATE NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE game_users(
  game_id INTEGER,
  users_id INTEGER,
  PRIMARY KEY (game_id, users_id),
  FOREIGN KEY (game_id)
  REFERENCES game (id)
  ON DELETE CASCADE,
  FOREIGN KEY (users_id)
  REFERENCES users (id)
  ON DELETE CASCADE
);

-- DML( Data Definition Language)
INSERT INTO game_users (game_id, users_id)
VALUES 
(1, 1);