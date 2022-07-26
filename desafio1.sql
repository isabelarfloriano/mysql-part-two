DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.Plans(
    plan_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    plan VARCHAR(50) NOT NULL,
    plan_value DECIMAL(3,2) NOT NULL,
) engine = InnoDB;

CREATE TABLE SpotifyClone.Artists(
    artist_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    artist VARCHAR(50) NOT NULL,
) engine = InnoDB;

CREATE TABLE SpotifyClone.Albums(
    album_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    album VARCHAR(100) NOT NULL,
    artist_id INT NOT NULL,
    release_year YEAR NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id),
) engine = InnoDB;

INSERT INTO SpotifyClone.Plans (plan, plan_value)
VALUES
  ('gratuito', 0.00),
  ('familiar', 7.99),
  ('universitário', 5.99),
  ('pessoal', 6.99);

INSERT INTO SpotifyClone.Artists (artist)
VALUES
  ("Walter Phoenix"),
  ("Peter Strong"),
  ("Lance Day"),
  ("Freedie Shannon"),
  ("Tyler Isle"),
  ("Fog");

INSERT INTO SpotifyClone.Albums (album, artist_id, release_year)
VALUES
  ('Envious',	1,	'1990'),
  ('Exuberant',	1,	'1993'),
  ('Hallowed Steam',	2,	'1995'),
  ('Incandescent',	3,	'1998'),
  ('Temporary Culture',	4,	'2001'),
  ('Library of liberty', 4,	'2003'),
  ('Chained Down',	5,	'2007'),
  ('Cabinet of fools',	5,	'2012'),
  ('No guarantees',	5,	'2015'),
  ('Apparatus',	6,	'2015');
