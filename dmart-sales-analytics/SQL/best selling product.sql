SELECT
    product,
    ROUND(SUM(sales),2) AS Total_Sales
FROM orders
GROUP BY product
ORDER BY Total_Sales DESC
LIMIT 1;