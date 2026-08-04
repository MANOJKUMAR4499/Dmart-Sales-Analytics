SELECT
    category,
    SUM(quantity) AS Quantity_Sold
FROM orders
GROUP BY category
ORDER BY Quantity_Sold DESC;