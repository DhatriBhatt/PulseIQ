--Query 1 Revenue by store ---

SELECT 
	s.StoreName,
	SUM(o.TotalAmount) AS TotalRevenue
FROM Orders o
JOIN Stores s
    ON o.StoreID = s.StoreID
GROUP BY s.StoreName
Order BY TotalRevenue DESC;

--RESULTS FOR First Query--
PulseStyle Toronto -- 306.00
PulseStyle Vaughan -- 176.00
PulseStyle Mississauga -- 169.00
PulseStyle Brampton -- 128.00
PulseStyle Etobicoke -- 49.00


--Query 2: Orders by Status --

SELECT 
	OrderStatus,
	COUNT(*) AS TotalOrders
FROM Orders
GROUP BY OrderStatus;

-- RESULTS
Cancelled -- 1
Delivered -- 8
Returned -- 1

-- Quesry 3:  Average Rating by Sentiment --

SELECT
    Sentiment,
    AVG(CAST(Rating AS DECIMAL(10,2))) AS AverageRating
FROM Customer_Feedback
GROUP BY Sentiment;

-- RESULT

Negative -- 1.750000
Neutral -- 3.000000
Positive -- 4.000000

