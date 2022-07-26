SELECT
	artists.artist_name AS artista,
    albums.album_name AS album,
    COUNT(favorite_artists.user_id) AS seguidores
FROM SpotifyClone.favorite_artists AS favorite_artists
	JOIN SpotifyClone.artists AS artists
    ON favorite_artists.artist_id = artists.artist_id
    JOIN SpotifyClone.albums AS albums
    ON artists.artist_id = albums.artist_id
GROUP BY favorite_artists.artist_id, albums.album_name
ORDER BY seguidores DESC, artista, album;