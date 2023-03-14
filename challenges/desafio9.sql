SELECT COUNT(h.fk_id_usuario) AS musicas_no_historico
FROM 
  SpotifyClone.historico AS h
    INNER JOIN
  SpotifyClone.usuario AS u
ON u.id_usuario = h.fk_id_usuario
WHERE u.nome = "Barbara Liskov";