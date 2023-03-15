USE SpotifyClone;

CREATE TABLE favoritas(
    fk_id_nome INT,
    fk_id_cancao INT,
    FOREIGN KEY (fk_id_nome) REFERENCES usuario(id_usuario),
    FOREIGN KEY (fk_id_cancao) REFERENCES cancao(id_cancao),
    CONSTRAINT PRIMARY KEY (fk_id_nome, fk_id_cancao)
) engine = InnoDB;

INSERT INTO favoritas(fk_id_nome, fk_id_cancao)
VALUES
  (1, 3),
  (1, 6),
  (1, 10),
  (2, 4),
  (3, 1),
  (3, 3),
  (4, 7),
  (4, 4),
  (5, 10),
  (5, 2),
  (8, 4),
  (9, 7),
  (10, 3);
