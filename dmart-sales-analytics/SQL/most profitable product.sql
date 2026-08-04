SELECT
    product,
    ROUND(SUM(profit),2) AS Total_Profit
FROM orders
GROUP BY product
ORDER BY Total_Profit DESC
LIMIT 1;