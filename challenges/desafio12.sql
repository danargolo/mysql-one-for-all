SELECT 
  a.nome AS artista, 
  CASE
    WHEN COUNT(f.fk_id_cancao) >= 5 THEN "A"
    WHEN COUNT(f.fk_id_cancao) >= 3 THEN "B"
    WHEN COUNT(f.fk_id_cancao) >= 1 THEN "C"
    ELSE "-"
  END AS ranking
FROM
  SpotifyClone.artista AS a
    INNER JOIN
  SpotifyClone.album AS al 
  ON al.fk_id_artista = a.id_artista
    INNER JOIN
  SpotifyClone.cancao AS c 
  ON c.fk_id_album = al.id_album
    LEFT JOIN
  SpotifyClone.favoritas AS f 
  ON f.fk_id_cancao = c.id_cancao
GROUP BY artista
ORDER BY COUNT(f.fk_id_cancao) DESC , artista;