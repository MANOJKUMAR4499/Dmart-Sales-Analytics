SELECT
    product,
    ROUND(SUM(sales),2) AS Total_Sales,
    ROUND(SUM(profit),2) AS Total_Profit
FROM orders
GROUP BY product
ORDER BY Total_Sales DESC;