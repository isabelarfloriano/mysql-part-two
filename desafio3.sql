SELECT (users.user) AS usuario,
COUNT(history.history_data) AS qtde_musicas_ouvidas,
ROUND(SUM(songs.length_seconds)/60, 2) AS total_minutos
FROM SpotifyClone.Users AS users
INNER JOIN SpotifyClone.History AS history
ON users.user_id = history.user_id
INNER JOIN SpotifyClone.Songs AS songs
ON history.song_id = songs.song_id
GROUP BY usuario
ORDER BY usuario ASC;