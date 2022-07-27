SELECT (songs.song) AS nome,
COUNT(history.song_id) AS reproducoes
FROM SpotifyClone.History AS history
INNER JOIN SpotifyClone.Songs AS songs
ON songs.song_id = history.song_id
INNER JOIN SpotifyClone.Users AS users
ON users.user_id = history.user_id 
WHERE users.plan_id = 1 OR users.plan_id = 4
GROUP BY nome
ORDER BY nome ASC;