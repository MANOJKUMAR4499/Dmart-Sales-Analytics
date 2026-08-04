SELECT
    category,
    ROUND(AVG(discount),2) AS Average_Discount,
    ROUND(SUM(sales),2) AS Total_Sales,
    ROUND(SUM(profit),2) AS Total_Profit
FROM orders
GROUP BY category
ORDER BY Average_Discount DESC;