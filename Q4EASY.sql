select SUM(total) AS total_invoice ,billing_city
from invoice
GROUP BY billing_city
ORDER BY total_invoice DESC

