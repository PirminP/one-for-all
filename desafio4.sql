SELECT 
	users.user_name AS usuario,
    CASE
		WHEN MAX(YEAR(listened_songs.listened)) >= 2021 THEN 'Usuário ativo'
			ELSE 'Usuário inativo'
		END AS condicao_usuario
FROM SpotifyClone.listened_songs AS listened_songs
	JOIN SpotifyClone.users AS users
	ON listened_songs.user_id = users.user_id
GROUP BY listened_songs.user_id
ORDER BY users.user_name;