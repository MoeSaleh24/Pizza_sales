-- Hourly Trend for Total Pizza Sold
SELECT 
    HOUR(order_time) AS order_hour,
    SUM(quantity) AS Total_Pizza_Sold
FROM 
    pizza_sales
GROUP BY 
    order_hour
ORDER BY order_hour ASC
;


-- Weekly Trend for Total orders
SELECT 
    WEEK(order_date) AS order_week,
    YEAR(order_date) AS order_year,
    COUNT(DISTINCT order_id) AS Total_orders
FROM 
    pizza_sales
GROUP BY 
    order_week,
    order_year
ORDER BY
    order_week,
    order_year
;

