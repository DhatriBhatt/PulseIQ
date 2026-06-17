USE PulseIQDB;
GO

--Query 1 - Total Revenue--

SELECT 
	SUM(TotalAmount) AS TotalRevenue
FROM Orders;


-- Query 2 - Orders ---
SELECT
	Channel,
	COUNT(*) AS TotalOrders
FROM Orders
GROUP BY Channel;

-- Query 3: Average Customer Rating ---

SELECT 
	AVG(CAST(Rating AS DECIMAL(10,2))) AS AverageRating
FROM Customer_Feedback;

-- Query 4: Most Common Support Issues
SELECT 
    IssueType,
    COUNT(*) AS TotalTickets
FROM Support_Tickets
GROUP BY IssueType
ORDER BY TotalTickets DESC;

-- Query 5: Total Refund Amount
SELECT 
    SUM(RefundAmount) AS TotalRefundAmount
FROM Returns;