SELECT
	songs.song_name AS cancao,
    COUNT(listened_songs.song_id) AS reproducoes
FROM SpotifyClone.songs AS songs
	JOIN SpotifyClone.listened_songs AS listened_songs
    ON songs.song_id = listened_songs.song_id
GROUP BY songs.song_id
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;