CREATE DATABASE IF NOT EXISTS SpotifyClone;

-- CREATE TABLE SpotifyClone.artista(
--   id_artista INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--   artista_nome VARCHAR(60) NOT NULL,
--   );

-- INSERT INTO SpotifyClone.artista(artista_nome)
-- VALUES
--   ("Beyoncé"),
--   ("Queen"),
--   ("Elis Regina"),
--   ("Baco Exu do Blues"),
--   ("Blind Guardian"),
--   ("Nina Simone");

-- CREATE TABLE SpotifyClone.album(
--   id_album INT NOT NULL AUTO_INCREMENT,
--   album VARCHAR(45) NOT NULL,
--   ano_lancamento YEAR NOT NULL,
--   artista_id INT NOT NULL,
--   PRIMARY KEY (id_album),
--   FOREIGN KEY (artista_id) 
--     REFERENCES artista(id_artista))
-- ;

-- INSERT INTO SpotifyClone.album(album, ano_lancamento, artista_id)
-- VALUES
--   ('Renaissance', 2022, 1),
--   ('Jazz', 1978, 2),
--   ('Hot Space', 1982, 2),
--   ('Falso Brilhante', 1998, 3),
--   ('Vento de Maio', 2001, 3),
--   ('QVVJFA?', 2003, 4),
--   ('Somewhere Far Beyond', 2007, 5),
--   ('I Put A Spell On You', 2012, 6);

-- CREATE TABLE SpotifyClone.cancao(
--   id_cancao INT NOT NULL AUTO_INCREMENT,
--   cancao VARCHAR(45) NOT NULL,
--   duracao INT NULL,
--   album_id INT NOT NULL,
--   PRIMARY KEY (id_cancao),
--   FOREIGN KEY (album_id) REFERENCES album(id_album))
-- ;

-- INSERT INTO SpotifyClone.cancao(cancao, duracao, album_id)
-- VALUES
--   ("BREAK MY SOUL", 279, 1),
--   ("VIRGO`S GROOVE", 369, 1),
--   ("ALIEN SUPERSTAR", 116, 1),
--   ("Don`t Stop Me Now", 203, 2),
--   ("Under Pressure", 152, 3),
--   ("Como Nossos Pais", 105, 4),
--   ("O Medo de Amar é o Medo de Ser Livre", 207, 5),
--   ("Samba em Paris", 267, 6),
--   ("The Bard`s Song", 244, 7),
--   ("Feeling Good", 100, 8);

CREATE TABLE SpotifyClone.plano(
  id_plano INT NOT NULL AUTO_INCREMENT,
  plano VARCHAR(45) NOT NULL,
  valor_plano DECIMAL(5, 2) NOT NULL,
  PRIMARY KEY (id_plano))
;

INSERT INTO SpotifyClone.plano(plano, valor_plano)
VALUES
	('gratuito', 0),
	('gratuito', 0),
	('familiar', 7,99),
	('familiar', 7,99),
	('familiar', 7,99),
	('universitário', 5,99),
	('universitário', 5,99),
	('pessoal', 6,99),
	('pessoal', 6,99),
	('pessoal', 6,99);

-- CREATE TABLE SpotifyClone.usuario(
--   id_usuario INT NOT NULL AUTO_INCREMENT,
--   nome VARCHAR(45) NULL,
--   idade INT NULL,
--   data_assinatura DATETIME NULL,
--   plano_id INT NOT NULL,
--   PRIMARY KEY (id_usuario),
--   FOREIGN KEY (plano_id) REFERENCES plano(id_plano))
-- ;

-- INSERT INTO SpotifyClone.usuario(nome, idade, data_assinatura, plano_id)
-- VALUES
--   ('Barbara Liskov', 82, '2019-10-20', 1),
--   ('Robert Cecil Martin', 58, '2017-01-06', 1),
--   ('Ada Lovelace', 37, '2017-12-30', 2),
--   ('Martin Fowler', 46, '2017-01-17', 2),
--   ('Sandi Metz', 58, '2018-04-29', 2),
--   ('Paulo Freire', 19, '2018-02-14', 3),
--   ('Bell Hooks', 26, '2018-01-05', 3),
--   ('Christopher Alexander', 85, '2019-06-05', 4),
--   ('Judith Butler', 45, '2020-05-13', 4),
--   ('Jorge Amado', 58, '2017-02-17', 4);

-- CREATE TABLE SpotifyClone.historico(
--   usuario_id INT,
--   cancao_id INT,
--   data_visualizacao DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   FOREIGN KEY (usuario_id) REFERENCES usuario(id_usuario),
--   FOREIGN KEY (cancao_id) REFERENCES cancao(id_cancao),
--   CONSTRAINT PRIMARY KEY (usuario_id, cancao_id))
-- ;

-- INSERT INTO SpotifyClone.historico(usuario_id, cancao_id, data_visualizacao)
-- VALUES
--   (1, 8, '2022-02-28 10:45:55'),
--   (1, 2, '2020-05-02 05:30:35'),
--   (1, 10, '2020-03-06 11:22:33'),
--   (2, 10, '2022-08-05 08:05:17'),
--   (2, 7, '2020-01-02 07:40:33'),
--   (3, 10, '2020-11-13 16:55:13'),
--   (3, 2, '2020-12-05 18:38:30'),
--   (4, 8, '2021-08-15 17:10:10'),
--   (5, 8, '2022-01-09 01:44:33'),
--   (5, 5, '2020-08-06 15:23:43'),
--   (6, 7, '2017-01-24 00:31:17'),
--   (6, 1, '2017-10-12 12:35:20'),
--   (7, 4, '2011-12-15 22:30:49'),
--   (8, 4, '2012-03-17 14:56:41'),
--   (9, 9, '2022-02-24 21:14:22'),
--   (10, 3, '2015-12-13 08:30:22');

-- CREATE TABLE SpotifyClone.seguindo(
--   usuario_id INT,
--   artista_id INT,
--   FOREIGN KEY (usuario_id) REFERENCES usuario(id_usuario),
--   FOREIGN KEY (artista_id) REFERENCES artista(id_artista),
--   CONSTRAINT PRIMARY KEY (usuario_id, artista_id))
-- ;

-- INSERT INTO SpotifyClone.seguindo(usuario_id, artista_id)
-- VALUES
--   (1, 1),
--   (1, 2),
--   (1, 3),
--   (2, 1),
--   (2, 3),
--   (3, 2),
--   (4, 4),
--   (5, 5),
--   (5, 6),
--   (6, 6),
--   (6, 1),
--   (7, 6),
--   (9, 3),
--   (10, 2);
