SELECT
    store,
    category,
    ROUND(SUM(sales),2) AS Total_Sales
FROM orders
GROUP BY store,category
ORDER BY store,Total_Sales DESC;