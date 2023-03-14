SELECT c.nome AS cancao, COUNT(h.fk_id_cancao) AS reproducoes
FROM
  SpotifyClone.cancao AS c
    INNER JOIN
  SpotifyClone.historico AS h
ON c.id_cancao = h.fk_id_cancao
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;