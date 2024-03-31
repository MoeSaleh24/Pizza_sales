-- PCT of Sales by Pizza Category
SELECT 
    pizza_category,
    ROUND(SUM(total_price),0) AS Total_Sales,
    ROUND(SUM(total_price) * 100/ (SELECT SUM(total_price) FROM pizza_sales),2) AS 'PCT of Sales'
FROM 
    pizza_sales
GROUP BY 
    pizza_category
ORDER BY 
    pizza_category
;

-- PCT of Sales by Pizza Size
SELECT 
    pizza_size,
    ROUND(SUM(total_price),0) AS Total_Sales,
    ROUND(SUM(total_price) * 100/ (SELECT SUM(total_price) FROM pizza_sales),2) AS 'PCT of Sales'
FROM 
    pizza_sales
GROUP BY 
    pizza_size
ORDER BY 
    pizza_size ASC
;

-- When adding where, make sure to add it in the sub query as well