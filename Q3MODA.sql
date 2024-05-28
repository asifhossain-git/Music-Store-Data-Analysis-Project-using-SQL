SELECT name,milliseconds
FROM track
WHERE milliseconds >(
	SELECT AVG(milliseconds) AS avg_track_length
	FROM track
)
ORDER BY milliseconds DESC