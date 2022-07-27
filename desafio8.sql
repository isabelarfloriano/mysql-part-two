SELECT (artists.artist) AS artista,
(albums.album) AS album
FROM SpotifyClone.Artists AS artists
INNER JOIN SpotifyClone.Albums AS albums
ON artists.artist_id = albums.artist_id
WHERE artists.artist = 'Walter Phoenix'
GROUP BY album
ORDER BY album ASC; 