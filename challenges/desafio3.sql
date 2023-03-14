SELECT 
  u.nome AS pessoa_usuaria, 
  COUNT(h.fk_id_usuario) AS musicas_ouvidas, 
  ROUND(SUM(c.duracao) / 60, 2) AS total_minutos
FROM
  SpotifyClone.usuario AS u
    INNER JOIN
  SpotifyClone.historico AS h
    INNER JOIN
  SpotifyClone.cancao AS c
ON
  h.fk_id_usuario = u.id_usuario 
    AND 
  h.fk_id_cancao = c.id_cancao
GROUP BY u.nome
ORDER BY u.nome;
