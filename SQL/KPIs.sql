-- Total Revenue ($817860.05)
SELECT 
    ROUND(SUM(total_price),2) AS 'Total_Revenue' 
FROM
    pizza_sales
;

-- AVG Order Value (38.31)
SELECT 
    ROUND(SUM(total_price) / COUNT (DISTINCT order_id),2) AS 'AVG Order Value' 
FROM
    pizza_sales
;

-- Total Pizza Sold (49574)
SELECT 
    SUM(quantity) AS 'Total_Pizza_Sold' 
FROM
    pizza_sales
;

-- Total Orders Placed (21350)
SELECT 
    COUNT(DISTINCT order_id) AS 'Total_Orders' 
FROM
    pizza_sales
;

-- AVG Pizza Per Order (2.32)
SELECT 
    ROUND(SUM(quantity) / COUNT(DISTINCT order_id),2) AS 'AVG_Pizza_Per_Order'
FROM
    pizza_sales
;

-- SELECT 
--     CAST(SUM(quantity) AS DECIMAL(10,2)) / 
--     CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS 'AVG_Pizza_Per_Order'
-- FROM
--     pizza_sales
-- ;

-- We are using CAST to tell SQL that we want quantity with two decimal places