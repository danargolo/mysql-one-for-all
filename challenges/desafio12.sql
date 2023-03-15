SELECT al.nome AS album, COUNT(f.fk_id_cancao) AS favoritadas
FROM
  SpotifyClone.album AS al
    INNER JOIN
  SpotifyClone.favoritas AS f
    INNER JOIN
  SpotifyClone.cancao AS c
ON
  al.id_album = c.fk_id_album AND c.id_cancao = f.fk_id_cancao
GROUP BY album
ORDER BY favoritadas DESC, album
LIMIT 3;