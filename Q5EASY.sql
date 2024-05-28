SELECT customer.customer_id,customer.first_name,customer.last_name,SUM(invoice.total) AS total
FROM customer
JOIN invoice ON customer.customer_id=invoice.customer_id
GROUP BY customer.customer_id
ORDER BY  total DESC
limit 1;