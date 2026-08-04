
SELECT
    payment_mode,
    COUNT(order_id) AS Transactions,
    ROUND(SUM(sales),2) AS Total_Sales,
    ROUND(SUM(profit),2) AS Total_Profit,
    ROUND(AVG(sales),2) AS Average_Order_Value
FROM orders
GROUP BY payment_mode
ORDER BY Total_Sales DESC;
