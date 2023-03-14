SELECT 
  COUNT(DISTINCT cancao.id_cancao) AS cancoes, 
  COUNT(DISTINCT album.fk_id_artista) AS artistas, 
  COUNT(DISTINCT album.id_album) AS albuns
FROM 
  SpotifyClone.cancao
    INNER JOIN
  SpotifyClone.album;
