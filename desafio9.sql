SELECT COUNT(history.user_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.History AS history
INNER JOIN SpotifyClone.Users AS users
ON history.user_id = users.user_id
WHERE users.user = 'Bill'
GROUP BY history.user_id ;