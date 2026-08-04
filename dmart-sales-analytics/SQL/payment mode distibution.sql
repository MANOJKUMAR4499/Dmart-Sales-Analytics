SELECT
    payment_mode,
    COUNT(order_id) AS Total_Transactions,
    SUM(sales) AS Total_Sales,
    SUM(profit) AS Total_Profit,
    ROUND(
        COUNT(order_id)*100.0/
        (SELECT COUNT(*) FROM orders),
        2
    ) AS Transaction_Percentage
FROM orders
GROUP BY payment_mode
ORDER BY Total_Transactions DESC;