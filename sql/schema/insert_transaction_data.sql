USE PulseIQDB;
GO

INSERT INTO Orders
(OrderID, CustomerID, OrderDate, Channel, StoreID, TotalAmount, OrderStatus)
VALUES
('O001', 'C001', '2025-01-05', 'Online', 'S001', 79, 'Delivered'),
('O002', 'C002', '2025-01-10', 'Store', 'S004', 59, 'Delivered'),
('O003', 'C003', '2025-01-12', 'Online', 'S002', 110, 'Delivered'),
('O004', 'C004', '2025-01-18', 'Store', 'S003', 64, 'Delivered'),
('O005', 'C005', '2025-02-01', 'Online', 'S001', 89, 'Returned'),
('O006', 'C006', '2025-02-07', 'Store', 'S005', 49, 'Delivered'),
('O007', 'C007', '2025-02-11', 'Online', 'S004', 117, 'Delivered'),
('O008', 'C008', '2025-02-20', 'Store', 'S002', 59, 'Cancelled'),
('O009', 'C009', '2025-03-01', 'Online', 'S001', 138, 'Delivered'),
('O010', 'C010', '2025-03-05', 'Store', 'S003', 64, 'Delivered');

SELECT * FROM Orders;

INSERT INTO Order_Items
(OrderItemID, OrderID, ProductID, Quantity, UnitPrice)
VALUES
('OI001', 'O001', 'P007', 1, 79),
('OI002', 'O002', 'P009', 1, 59),
('OI003', 'O003', 'P002', 1, 59),
('OI004', 'O003', 'P005', 1, 29),
('OI005', 'O003', 'P006', 1, 22),
('OI006', 'O004', 'P010', 1, 64),
('OI007', 'O005', 'P008', 1, 89),
('OI008', 'O006', 'P001', 1, 49),
('OI009', 'O007', 'P003', 1, 69),
('OI010', 'O007', 'P004', 2, 24);

SELECT * FROM Order_Items;

INSERT INTO Support_Tickets
(TicketID, CustomerID, OrderID, TicketDate, IssueType, Priority, Status, ResponseTimeHours, ResolutionTimeHours)
VALUES
('T001', 'C005', 'O005', '2025-02-03', 'Wrong Size', 'Medium', 'Resolved', 3, 12),
('T002', 'C008', 'O008', '2025-02-21', 'Refund Delay', 'High', 'Resolved', 5, 36),
('T003', 'C003', 'O003', '2025-01-15', 'Damaged Product', 'High', 'Resolved', 2, 10),
('T004', 'C001', 'O001', '2025-01-07', 'Late Delivery', 'Medium', 'Resolved', 4, 20),
('T005', 'C007', 'O007', '2025-02-14', 'Payment Issue', 'High', 'Resolved', 1, 5),
('T006', 'C006', 'O006', '2025-02-09', 'Product Not Available', 'Low', 'Resolved', 6, 18),
('T007', 'C010', 'O010', '2025-03-06', 'Poor Customer Service', 'Medium', 'Resolved', 8, 30),
('T008', 'C002', 'O002', '2025-01-11', 'Wrong Item', 'Medium', 'Resolved', 3, 16),
('T009', 'C009', 'O009', '2025-03-02', 'Late Delivery', 'High', 'Resolved', 7, 28),
('T010', 'C004', 'O004', '2025-01-20', 'Size Issue', 'Low', 'Resolved', 2, 8);

SELECT * FROM Support_Tickets;

INSERT INTO Returns
(ReturnID, OrderID, ProductID, ReturnDate, ReturnReason, RefundAmount)
VALUES
('R001', 'O005', 'P008', '2025-02-05', 'Wrong Size', 89),
('R002', 'O008', 'P009', '2025-02-22', 'Changed Mind', 59),
('R003', 'O003', 'P005', '2025-01-16', 'Damaged Item', 29),
('R004', 'O010', 'P010', '2025-03-08', 'Product Quality Issue', 64),
('R005', 'O004', 'P010', '2025-01-22', 'Wrong Size', 64);

SELECT * FROM Returns;

INSERT INTO Customer_Feedback
(FeedbackID, CustomerID, OrderID, FeedbackDate, Rating, ReviewText, Sentiment)
VALUES
('F001', 'C001', 'O001', '2025-01-08', 4, 'Delivery was slightly late but product quality was good.', 'Positive'),
('F002', 'C002', 'O002', '2025-01-12', 4, 'Store staff was helpful and checkout was quick.', 'Positive'),
('F003', 'C003', 'O003', '2025-01-17', 2, 'One item arrived damaged and I had to contact support.', 'Negative'),
('F004', 'C004', 'O004', '2025-01-23', 3, 'Jeans were okay but sizing was not perfect.', 'Neutral'),
('F005', 'C005', 'O005', '2025-02-06', 2, 'Jacket size was wrong and I had to return it.', 'Negative'),
('F006', 'C006', 'O006', '2025-02-10', 3, 'Product was fine but availability was limited.', 'Neutral'),
('F007', 'C007', 'O007', '2025-02-15', 4, 'Payment issue was fixed quickly by support.', 'Positive'),
('F008', 'C008', 'O008', '2025-02-23', 1, 'Order was cancelled and refund took too long.', 'Negative'),
('F009', 'C009', 'O009', '2025-03-03', 2, 'Delivery was late and support response was slow.', 'Negative'),
('F010', 'C010', 'O010', '2025-03-09', 3, 'Store experience could have been better.', 'Neutral');

SELECT * FROM Customer_Feedback;