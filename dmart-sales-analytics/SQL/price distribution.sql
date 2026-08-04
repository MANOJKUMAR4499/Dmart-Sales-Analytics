
SELECT
    category,
    ROUND(AVG(price),2) AS Average_Price
FROM orders
GROUP BY category
ORDER BY Average_Price DESC;