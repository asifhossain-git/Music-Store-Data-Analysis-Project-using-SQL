WITH customer_with_country AS(
	SELECT customer.customer_id, first_name,last_name,billing_country,SUM(total) AS total_spending,ROW_NUMBER()OVER (PARTITION BY billing_country ORDER BY SUM(total)DESC)AS RowNo
	FROM invoice
	JOIN customer ON customer.customer_id=invoice.customer_id
	GROUP BY 1,2,3,4
	ORDER BY 4 ASC,5 DESC)
	
SELECT* FROM customer_with_country WHERE RowNo<=1