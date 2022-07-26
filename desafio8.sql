SELECT
	artists.artist_name AS artista,
    albums.album_name AS album
FROM SpotifyClone.albums AS albums
	JOIN SpotifyClone.artists AS artists
    ON albums.artist_id = artists.artist_id
WHERE artists.artist_name = 'Walter Phoenix';