SELECT 
	COUNT(DISTINCT SpotifyClone.songs.song_name) AS 'cancoes',
    COUNT(DISTINCT SpotifyClone.artists.artist_name) AS 'artistas',
    COUNT(DISTINCT SpotifyClone.albums.album_name) AS 'albuns'
FROM 
	SpotifyClone.songs,
    SpotifyClone.artists,
    SpotifyClone.albums;