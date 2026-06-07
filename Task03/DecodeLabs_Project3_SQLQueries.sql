CREATE DATABASE decodelabs;
Use decodelabs;
RENAME TABLE `Dataset for Data Analytics (Cleaned Dataset)` TO orders;
Select * From orders;
SELECT COUNT(*) FROM orders;

-- to select specific columns
SELECT OrderID, Date, Product, Quantity, UnitPrice, TotalPrice
FROM orders
LIMIT 10;

-- highest order values by total price
SELECT OrderID, Date, Product, Quantity, UnitPrice, TotalPrice
FROM orders
ORDER BY TotalPrice DESC
LIMIT 10;

-- to find all cancelled orders
SELECT OrderID, Date, Product, TotalPrice, OrderStatus
FROM orders
WHERE OrderStatus = 'Cancelled';

-- Cancelled orders with a TotalPrice above $1,000
SELECT OrderID, Date, Product, TotalPrice, OrderStatus
FROM orders
WHERE OrderStatus = 'Cancelled'
AND TotalPrice > 1000;

-- orders count by order status
SELECT OrderStatus, COUNT(*) AS Total_Orders
FROM orders
GROUP BY OrderStatus
ORDER BY Total_Orders DESC;

-- total revenue by product
SELECT Product, 
       ROUND(SUM(TotalPrice), 2) AS Total_Revenue
FROM orders
GROUP BY Product
ORDER BY Total_Revenue DESC;

-- average order value by Product
SELECT Product,
       ROUND(AVG(TotalPrice), 2) AS Avg_Order_Value
FROM orders
GROUP BY Product
ORDER BY Avg_Order_Value DESC;

SELECT Product,
       COUNT(*) AS Total_Orders,
       ROUND(SUM(TotalPrice), 2) AS Total_Revenue,
       ROUND(AVG(TotalPrice), 2) AS Avg_Order_Value
FROM orders
GROUP BY Product
ORDER BY Total_Revenue DESC;

-- total revenue by year
SELECT YEAR(Date) AS Year,
       COUNT(*) AS Total_Orders,
       ROUND(SUM(TotalPrice), 2) AS Total_Revenue
FROM orders
GROUP BY YEAR(Date)
ORDER BY Year ASC;

-- payment method
SELECT PaymentMethod,
       COUNT(*) AS Total_Orders,
       ROUND(SUM(TotalPrice), 2) AS Total_Revenue,
       ROUND(AVG(TotalPrice), 2) AS Avg_Order_Value
FROM orders
GROUP BY PaymentMethod
ORDER BY Total_Orders DESC;

--  Cancelled and Returned Orders by Product
SELECT Product,
       OrderStatus,
       COUNT(*) AS Total_Orders,
       ROUND(SUM(TotalPrice), 2) AS Revenue_Lost
FROM orders
WHERE OrderStatus IN ('Cancelled', 'Returned')
GROUP BY Product, OrderStatus
ORDER BY Product, OrderStatus;

-- total revenue across all products
SELECT 
       ROUND(SUM(TotalPrice), 2) AS Total_Revenue_Lost
FROM orders
WHERE OrderStatus IN ('Cancelled', 'Returned');