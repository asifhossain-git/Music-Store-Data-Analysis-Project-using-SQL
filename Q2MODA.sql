SELECT artist.artist_id,artist.name,COUNT(artist.artist_id) AS no_of_song
FROM track
JOIN album ON track.album_id=album.album_id
JOIN artist ON artist.artist_id=album.artist_id
JOIN genre ON genre.genre_id=track.genre_id
WHERE genre.name='Rock'
GROUP BY artist.artist_id
ORDER BY no_of_song  DESC
LIMIT 10