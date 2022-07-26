SELECT
	users.user_name AS usuario,
    COUNT(listened_songs.song_id) AS qtde_musicas_ouvidas,
    ROUND(SUM(songs.duration/60),2) AS total_minutos
FROM SpotifyClone.users AS users
JOIN SpotifyClone.listened_songs AS listened_songs
	ON users.user_id = listened_songs.user_id
JOIN SpotifyClone.songs AS songs
	ON listened_songs.song_id = songs.song_id
GROUP BY users.user_name
ORDER BY users.user_name;