SELECT COUNT( DISTINCT SpotifyClone.Songs.song_id) AS cancoes,
COUNT( DISTINCT SpotifyClone.Artists.artist_id) AS artistas,
COUNT( DISTINCT SpotifyClone.Albums.album_id) AS albuns
FROM SpotifyClone.Songs,
SpotifyClone.Artists,
SpotifyClone.Albums;