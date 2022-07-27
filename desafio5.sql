SELECT (songs.song) AS cancao,
COUNT(history.history_data) AS reproducoes
FROM SpotifyClone.Songs AS songs
INNER JOIN SpotifyClone.History AS history
ON history.song_id = songs.song_id
GROUP BY song
ORDER BY reproducoes DESC, song ASC
LIMIT 2;