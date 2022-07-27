SELECT (artists.artist) AS artista,
(albums.album) AS album,
COUNT( follow.artist_id) AS seguidores
FROM SpotifyClone.Artists AS artists
INNER JOIN SpotifyClone.Albums AS albums
ON artists.artist_id = albums.artist_id
INNER JOIN SpotifyClone.Following AS follow
ON artists.artist_id = follow.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista ASC, album ASC; 