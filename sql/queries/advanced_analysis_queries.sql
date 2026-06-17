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