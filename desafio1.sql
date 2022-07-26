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

CREATE TABLE SpotifyClone.Songs(
    song_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    song VARCHAR(100) NOT NULL,
    album_id INT NOT NULL,
    artist_id INT NOT NULL,
    length_seconds INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES Albums(album_id),
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id),
) engine = InnoDB;

CREATE TABLE SpotifyClone.Users(
    user_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    subscription_date DATE NOT NULL,
    plan_id INT NOT NULL,
    FOREIGN KEY (plan_id) REFERENCES Plans(plan_id),
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

INSERT INTO SpotifyClone.Songs ( song, album_id, artist_id, length_seconds)
VALUES
  ('Soul For Us', 1,	1,	200),
  ('Reflections Of Magic', 1,	1,	163),
  ('Dance With Her Own', 1,	1, 116),
  ('Troubles Of My Inner Fire', 2,	1,	203),
  ('Time Fireworks', 2,	1,	152),
  ('Magic Circus', 3,	2,	105),
  ('Honey, So Do I', 3,	2,	207),
  ('Sweetie, Let''s Go Wild', 3,	2,	139),
  ('She Knows', 3,	2,	244),
  ('Fantasy For Me', 4,	3,	100),
  ('Celebration Of More', 4,	3,	146),
  ('Rock His Everything', 4,	3,	223),
  ('Home Forever', 4,	3,	231),
  ('Diamond Power', 4,	3,	241),
  ('Let''s Be Silly', 4,	3,	132),
  ('Thang Of Thunder', 5,	4,	240),
  ('Words Of Her Life', 5,	4,	185),
  ('Without My Streets', 5,	4,	176),
  ('Need Of The Evening', 6,	4,	190),
  ('History Of My Roses',	6,	4, 222),
  ('Without My Love',	6,	4, 111),
  ('Walking And Game',	6,	4, 123),
  ('Young And Father',	6,	4, 197),
  ('Finding My Traditions',	7,	5, 179),
  ('Walking And Man',	7,	5, 229),
  ('Hard And Time',	7,	5, 135),
  ('Honey, I''m A Lone Wolf',	7,	5, 150),
  ('She Thinks I Won''t Stay Tonight',	8,	5, 166),
  ('He Heard You''re Bad For Me',	8,	5, 154),
  ('He Hopes We Can''t Stay',	8,	5, 210),
  ('I Know I Know',	8,	5, 117),
  ('He''s Walking Away', 9,	5, 159),
  ('He''s Trouble',	9,	5, 138),
  ('I Heard I Want To Bo Alone', 9,	5,	120),
  ('I Ride Alone', 9,	5,	151),
  ('Honey', 10,	6,	79),
  ('You Cheated On Me', 10,	6,	95),
  ('Wouldn''t It Be Nice',	10,	6, 213),
  ('Baby',	10,	6, 136),
  ('You Make Me Feel So..', 10,	6,	83);

INSERT INTO SpotifyClone.Users ( user, age, subscription_date, plan_id)
VALUES
    ('Thati',	23,	'2019-10-20',	1),
    ('Cintia',	35,	'2017-12-30',	2),
    ('Bill',	20,	'2019-06-05',	3),
    ('Roger',	45,	'2020-05-13',	4),
    ('Norman',	58,	'2017-02-17',	4),
    ('Patrick',	33,	'2017-01-06',	2),
    ('Vivian',	26,	'2018-01-05',	3),
    ('Carol',	19,	'2018-02-14',	3),
    ('Angelina',	42,	'2018-04-29',	2),
    ('Paul',	46,	'2017-01-17',	2);