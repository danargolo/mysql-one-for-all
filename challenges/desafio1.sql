DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

-- -----------------------------------------------------
-- Table SpotifyClone.artista
-- -----------------------------------------------------

CREATE TABLE artista(
    id_artista INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL
) engine = InnoDB;

INSERT INTO artista(nome)
VALUES
  ("Beyoncé"),
  ("Queen"),
  ("Elis Regina"),
  ("Baco Exu do Blues"),
  ("Blind Guardian"),
  ("Nina Simone");

-- -----------------------------------------------------
-- Table SpotifyClone.album
-- -----------------------------------------------------  

CREATE TABLE album(
    id_album INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    fk_id_artista INT NOT NULL,
    ano_lancamento YEAR NOT NULL,
    FOREIGN KEY (fk_id_artista) REFERENCES artista(id_artista)
) engine = InnoDB;

INSERT INTO album(nome, ano_lancamento, fk_id_artista)
VALUES
  ("Renaissance", 2022, 1),
  ("Jazz", 1978, 2),
  ("Hot Space", 1982, 2),
  ("Falso Brilhante", 1998, 3),
  ("Vento de Maio", 2001, 3),
  ("QVVJFA?", 2003, 4),
  ("Somewhere Far Beyond", 2007, 5),
  ("I Put A Spell On You", 2012, 6);

-- -----------------------------------------------------
-- Table SpotifyClone.cancao
-- -----------------------------------------------------

CREATE TABLE cancao(
    id_cancao INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    duracao INT NOT NULL,
    fk_id_album INT NOT NULL,
    FOREIGN KEY (fk_id_album) REFERENCES album(id_album)
) engine = InnoDB;

INSERT INTO cancao(nome, duracao, fk_id_album)
VALUES
  ("BREAK MY SOUL", 279, 1),
  ("VIRGO`S GROOVE", 369, 1),
  ("ALIEN SUPERSTAR", 116, 1),
  ("Don`t Stop Me Now", 203, 2),
  ("Under Pressure", 152, 3),
  ("Como Nossos Pais", 105, 4),
  ("O Medo de Amar é o Medo de Ser Livre", 207, 5),
  ("Samba em Paris", 267, 6),
  ("The Bard`s Song", 244, 7),
  ("Feeling Good", 100, 8);

-- -----------------------------------------------------
-- Table SpotifyClone.plano
-- -----------------------------------------------------

CREATE TABLE plano(
    id_plano INT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(30) NOT NULL,
    valor_plano DECIMAL(5,2) NOT NULL
) engine = InnoDB;

INSERT INTO plano(tipo, valor_plano)
VALUES
  ('gratuito', 0),
  ('familiar', 7.99),
  ('universitário', 5.99),
  ('pessoal', 6.99);

-- -----------------------------------------------------
-- Table SpotifyClone.usuario
-- -----------------------------------------------------

CREATE TABLE usuario(
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    idade TINYINT NOT NULL,
    fk_id_plano INT NOT NULL,
    data_assinatura DATE NOT NULL,
    FOREIGN KEY (fk_id_plano) REFERENCES plano(id_plano)
) engine = InnoDB;

INSERT INTO usuario(nome, idade, data_assinatura, fk_id_plano)
VALUES
  ("Barbara Liskov", 82, "2019-10-20", 1),
  ("Robert Cecil Martin", 58, "2017-01-06", 1),
  ("Ada Lovelace", 37, "2017-12-30", 2),
  ("Martin Fowler", 46, "2017-01-17", 2),
  ("Sandi Metz", 58, "2018-04-29", 2),
  ("Paulo Freire", 19, "2018-02-14", 3),
  ("Bell Hooks", 26, "2018-01-05", 3),
  ("Christopher Alexander", 85, "2019-06-05", 4),
  ("Judith Butler", 45, "2020-05-13", 4),
  ("Jorge Amado", 58, "2017-02-17", 4);

-- -----------------------------------------------------
-- Table SpotifyClone.historico
-- -----------------------------------------------------

CREATE TABLE historico(
    fk_id_usuario INT,
    fk_id_cancao INT,
    data_visualizacao DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (fk_id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (fk_id_cancao) REFERENCES cancao(id_cancao),
    CONSTRAINT PRIMARY KEY (fk_id_usuario, fk_id_cancao)
) engine = InnoDB;

INSERT INTO historico(fk_id_usuario, fk_id_cancao, data_visualizacao)
VALUES
  (1, 8, "2022-02-28 10:45:55"),
  (1, 2, "2020-05-02 05:30:35"),
  (1, 10, "2020-03-06 11:22:33"),
  (2, 10, "2022-08-05 08:05:17"),
  (2, 7, "2020-01-02 07:40:33"),
  (3, 10, "2020-11-13 16:55:13"),
  (3, 2, "2020-12-05 18:38:30"),
  (4, 8, "2021-08-15 17:10:10"),
  (5, 8, "2022-01-09 01:44:33"),
  (5, 5, "2020-08-06 15:23:43"),
  (6, 7, "2017-01-24 00:31:17"),
  (6, 1, "2017-10-12 12:35:20"),
  (7, 4, "2011-12-15 22:30:49"),
  (8, 4, "2012-03-17 14:56:41"),
  (9, 9, "2022-02-24 21:14:22"),
  (10, 3, "2015-12-13 08:30:22");

-- -----------------------------------------------------
-- Table SpotifyClone.seguindo
-- -----------------------------------------------------

CREATE TABLE seguindo(
    fk_id_usuario INT,
    fk_id_artista INT,
    FOREIGN KEY (fk_id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (fk_id_artista) REFERENCES artista(id_artista),
    CONSTRAINT PRIMARY KEY (fk_id_usuario, fk_id_artista)
) engine = InnoDB;

INSERT INTO seguindo(fk_id_usuario, fk_id_artista)
VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (4, 4),
  (5, 5),
  (5, 6),
  (6, 6),
  (6, 1),
  (7, 6),
  (9, 3),
  (10, 2);