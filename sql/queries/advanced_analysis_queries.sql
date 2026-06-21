USE PulseIQDB;
GO

-- Query 1: Top Selling Products

SELECT
    p.ProductName,
    p.Category,
    SUM(oi.Quantity) AS TotalQuantitySold,
    SUM(oi.Quantity * oi.UnitPrice) AS TotalSales
FROM Order_Items oi
JOIN Products p
    ON oi.ProductID = p.ProductID
GROUP BY
    p.ProductName,
    p.Category
ORDER BY
    TotalSales DESC;

	-- Query 2: Revenue by Category

SELECT
    p.Category,
    SUM(oi.Quantity * oi.UnitPrice) AS TotalRevenue
FROM Order_Items oi
JOIN Products p
    ON oi.ProductID = p.ProductID
GROUP BY p.Category
ORDER BY TotalRevenue DESC;

-- Query 3: Most Returned Products

SELECT
    p.ProductName,
    COUNT(r.ReturnID) AS TotalReturns,
    SUM(r.RefundAmount) AS TotalRefundAmount
FROM Returns r
JOIN Products p
    ON r.ProductID = p.ProductID
GROUP BY
    p.ProductName
ORDER BY
    TotalReturns DESC,
    TotalRefundAmount DESC;

-- Query 4: Customer Lifetime Value (CLV)

SELECT
    c.CustomerID,
    c.FirstName,
    c.LastName,
    SUM(o.TotalAmount) AS LifetimeRevenue,
    COUNT(o.OrderID) AS TotalOrders
FROM Customers c
JOIN Orders o
    ON c.CustomerID = o.CustomerID
GROUP BY
    c.CustomerID,
    c.FirstName,
    c.LastName
ORDER BY
    LifetimeRevenue DESC;

-- Query 5: Support Performance vs Customer Satisfaction

SELECT
    st.TicketID,
    st.ResponseTimeHours,
    st.ResolutionTimeHours,
    cf.Rating,
    cf.Sentiment
FROM Support_Tickets st
JOIN Customer_Feedback cf
    ON st.OrderID = cf.OrderID
ORDER BY st.ResponseTimeHours DESC;