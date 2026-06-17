INSERT INTO Products
(ProductID, ProductName, Category, UnitCost, UnitPrice)
VALUES
('P001', 'Floral Summer Dress', 'Dresses', 18, 49),
('P002', 'Midi Dress', 'Dresses', 22, 59),
('P003', 'Maxi Dress', 'Dresses', 25, 69),
('P004', 'Basic T-Shirt', 'Tops', 8, 24),
('P005', 'Graphic T-Shirt', 'Tops', 10, 29),
('P006', 'Tank Top', 'Tops', 7, 22),
('P007', 'Denim Jacket', 'Jackets', 28, 79),
('P008', 'Bomber Jacket', 'Jackets', 30, 89),
('P009', 'Skinny Jeans', 'Jeans', 20, 59),
('P010', 'Straight Fit Jeans', 'Jeans', 22, 64);

SELECT * FROM Products;

INSERT INTO Customers
(CustomerID, FirstName, LastName, Gender, AgeGroup, City, LoyaltyTier, SignupDate)
VALUES
('C001', 'Emma', 'Wilson', 'Female', '25-34', 'Toronto', 'Gold', '2024-01-15'),
('C002', 'Liam', 'Brown', 'Male', '18-24', 'Vaughan', 'Silver', '2024-02-10'),
('C003', 'Olivia', 'Taylor', 'Female', '35-44', 'Mississauga', 'Gold', '2024-03-05'),
('C004', 'Noah', 'Anderson', 'Male', '25-34', 'Brampton', 'Bronze', '2024-04-12'),
('C005', 'Ava', 'Thomas', 'Female', '45-54', 'Toronto', 'Silver', '2024-05-08'),
('C006', 'Ethan', 'Martin', 'Male', '25-34', 'Etobicoke', 'Bronze', '2024-06-20'),
('C007', 'Sophia', 'Lee', 'Female', '18-24', 'Vaughan', 'Gold', '2024-07-14'),
('C008', 'Mason', 'Clark', 'Male', '35-44', 'Mississauga', 'Silver', '2024-08-02'),
('C009', 'Isabella', 'Hall', 'Female', '25-34', 'Toronto', 'Gold', '2024-09-11'),
('C010', 'Lucas', 'Young', 'Male', '55+', 'Brampton', 'Bronze', '2024-10-03');

SELECT * FROM Customers;
