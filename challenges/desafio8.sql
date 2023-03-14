SELECT a.nome AS artista, al.nome AS album
FROM 
  SpotifyClone.artista AS a
    INNER JOIN
  SpotifyClone.album AS al
ON al.fk_id_artista = a.id_artista
WHERE al.fk_id_artista = 3
ORDER BY album;