CREATE DATABASE PulseIQDB;
GO
USE  PulseIQDB;
GO


-- CREATING TABLES --
 CREATE TABLE Customers (
 CustomerID VARCHAR(10) PRIMARY KEY,
 FirstName VARCHAR(50), 
 LastName VARCHAR(50),
 Gender VARCHAR(20),
 AgeGroup VARCHAR(20),
 City VARCHAR(50),
 LoyaltyTier VARCHAR(20),
 SignupDate DATE);

CREATE TABLE Stores(
StoreID VARCHAR(10) PRIMARY KEY,
StoreName VARCHAR(50),
City VARCHAR(50),
Provience VARCHAR(50));

CREATE TABLE Products(
ProductID VARCHAR(10) PRIMARY KEY,
ProductName VARCHAR(100),
Category VARCHAR(50),
UnitCost DECIMAL(10,2),
UnitPrice DECIMAL(10,2));

-- Phase: Create Transaction Tables ---

CREATE TABLE Orders(
OrderID VARCHAR(10) PRIMARY KEY,
CustomerID VARCHAR(10),
OrderDate DATE,
Channel VARCHAR(20),
StoreID VARCHAR(10),
TotalAmount DECIMAL(10,2),
OrderStatus VARCHAR(20),

	CONSTRAINT FK_Orders_Customers
	FOREIGN KEY(CustomerID)
	REFERENCES Customers(CustomerID),

	CONSTRAINT FK_Orders_Stores
	FOREIGN KEY(StoreID)
	REFERENCES Stores(StoreID));

SELECT * FROM Orders;

CREATE TABLE Order_Items (
OrderItemID VARCHAR(10) PRIMARY KEY,
OrderID VARCHAR(10),
ProductID VARCHAR(10),
Quantity  INT,
UnitPrice DECIMAL(10,2),

	CONSTRAINT FK_Order_Items_Orders
	FOREIGN KEY(OrderID)
	REFERENCES Orders(OrderID),

	CONSTRAINT FK_Order_Items_Products
	FOREIGN KEY(ProductID)
	REFERENCES Products(ProductID));

CREATE TABLE Support_Tickets (
    TicketID VARCHAR(10) PRIMARY KEY,
    CustomerID VARCHAR(10),
    OrderID VARCHAR(10),
    TicketDate DATE,
    IssueType VARCHAR(50),
    Priority VARCHAR(20),
    Status VARCHAR(20),
    ResponseTimeHours INT,
    ResolutionTimeHours INT,

    CONSTRAINT FK_Tickets_Customers
        FOREIGN KEY (CustomerID)
        REFERENCES Customers(CustomerID),

    CONSTRAINT FK_Tickets_Orders
        FOREIGN KEY (OrderID)
        REFERENCES Orders(OrderID)
);