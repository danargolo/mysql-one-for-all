SELECT 
  a.nome AS artista, 
  al.nome AS album, 
  COUNT(s.fk_id_usuario) AS pessoas_seguidoras
FROM
  SpotifyClone.artista AS a
    INNER JOIN
  SpotifyClone.album AS al
    INNER JOIN
  SpotifyClone.seguindo AS s
ON 
  a.id_artista = al.fk_id_artista 
    AND 
  a.id_artista = s.fk_id_artista
GROUP BY a.nome, al.nome
ORDER BY pessoas_seguidoras DESC, artista, album;