SELECT COUNT( SpotifyClone.Songs.song_id) AS cancoes,
COUNT( SpotifyClone.Artists.artist_id) AS artistas,
COUNT( SpotifyClone.Albums.album_id) AS albuns
FROM SpotifyClone.Songs,
SpotifyClone.Artists,
SpotifyClone.Albums;