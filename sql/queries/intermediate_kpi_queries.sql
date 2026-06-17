--Query 1 Revenue by store ---

SELECT 
	s.StoreName,
	SUM(o.TotalAmount) AS TotalRevenue
FROM Orders o
JOIN Stores s
    ON o.StoreID = s.StoreID
GROUP BY s.StoreName
Order BY TotalRevenue DESC;


--Query 2: Orders by Status --

SELECT 
	OrderStatus,
	COUNT(*) AS TotalOrders
FROM Orders
GROUP BY OrderStatus;


-- Quesry 3:  Average Rating by Sentiment --

SELECT
    Sentiment,
    AVG(CAST(Rating AS DECIMAL(10,2))) AS AverageRating
FROM Customer_Feedback
GROUP BY Sentiment;

