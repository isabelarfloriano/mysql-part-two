SELECT (users.user) AS usuario,
IF(MAX(history.history_data LIKE('2021%')), 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.Users AS users
INNER JOIN SpotifyClone.History AS history
ON users.user_id = history.user_id
GROUP BY usuario
ORDER BY usuario ASC;