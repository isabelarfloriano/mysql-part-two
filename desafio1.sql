DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.Plans(
    plan_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    plan VARCHAR(50) NOT NULL,
    plan_value DECIMAL(3,2) NOT NULL,
) engine = InnoDB;

CREATE TABLE SpotifyClone.tabela2(
    coluna1 tipo restricoes,
    coluna2 tipo restricoes,
    colunaN tipo restricoes,
) engine = InnoDB;

INSERT INTO SpotifyClone.Plans (plan, plan_value)
VALUES
  ('gratuito', 0.00),
  ('familiar', 7.99),
  ('universitário', 5.99);
  ('pessoal', 6.99);

INSERT INTO SpotifyClone.tabela2 (coluna1, coluna2)
VALUES
  ('exemplo de dados 1', 'exemplo de dados X'),
  ('exemplo de dados 2', 'exemplo de dados Y');