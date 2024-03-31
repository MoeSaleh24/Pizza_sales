-- Top 5 Best Selling Pizza by Name
SELECT
    pizza_name,
    SUM(total_price) AS Total_Revenue
FROM 
    pizza_sales
GROUP BY
    pizza_name
ORDER BY 
    Total_Revenue DESC
LIMIT 5
;

-- Top 5 Best Selling Pizza by Quantity
SELECT
    pizza_name,
    SUM(quantity) AS Total_Quantity
FROM 
    pizza_sales
GROUP BY
    pizza_name
ORDER BY 
    Total_Quantity DESC
LIMIT 5
;

-- Top 5 Best Selling Pizza by Quantity
SELECT
    pizza_name,
    COUNT(DISTINCT order_id) AS Total_Orders
FROM 
    pizza_sales
GROUP BY
    pizza_name
ORDER BY 
    Total_Orders DESC
LIMIT 5
;