SELECT
  u.nome AS pessoa_usuaria,
    IF(YEAR(MAX(h.data_visualizacao)) >= 2021,
      'Ativa', 'Inativa') AS status_pessoa_usuaria
FROM
  SpotifyClone.usuario AS u
    INNER JOIN
  SpotifyClone.historico AS h 
ON h.fk_id_usuario = u.id_usuario
GROUP BY u.nome
ORDER BY u.nome;