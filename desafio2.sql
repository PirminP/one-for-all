SELECT 
	COUNT(DISTINCT songs.song_name) AS 'cancoes',
    COUNT(DISTINCT artists.artist_name) AS 'artistas',
    COUNT(DISTINCT albums.album_name) AS 'albuns'
FROM 
	SpotifyClone.songs AS songs,
    SpotifyClone.artists AS artists,
    SpotifyClone.albums AS albums;