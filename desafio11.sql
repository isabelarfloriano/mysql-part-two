SELECT (songs.song) AS nome_musica,
CASE
  WHEN songs.song LIKE '%Streets' THEN REPLACE(songs.song, 'Streets', 'Code Review')
  WHEN songs.song LIKE '%Her Own' THEN REPLACE(songs.song, 'Her Own', 'Trybe')
  WHEN songs.song LIKE '%Inner Fire' THEN REPLACE(songs.song, 'Inner Fire', 'Project')
  WHEN songs.song LIKE '%Silly' THEN REPLACE(songs.song, 'Silly', 'Nice')
  WHEN songs.song LIKE '%Circus' THEN REPLACE(songs.song, 'Circus', 'Pull Request')
  END AS novo_nome
FROM SpotifyClone.Songs AS songs
WHERE songs.song LIKE '%Streets'
OR songs.song LIKE '%Her Own'
OR songs.song LIKE '%Inner Fire'
OR songs.song LIKE '%Silly'
OR songs.song LIKE '%Circus'
ORDER BY novo_nome ASC;
