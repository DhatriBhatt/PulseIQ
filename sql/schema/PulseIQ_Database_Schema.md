# PulseIQ Database Schema

## Purpose

This document defines the relational database structure for the PulseIQ Customer Experience Intelligence Platform.

The database is designed to connect customers, orders, products, stores, support tickets, returns, and customer feedback.

---

## Tables Included

The PulseIQ database will include the following tables:

1. Customers
2. Products
3. Stores
4. Orders
5. Order_Items
6. Support_Tickets
7. Returns
8. Customer_Feedback

---

## Relationship Overview

### Customers to Orders

One customer can place many orders.

Relationship:

Customers.CustomerID → Orders.CustomerID

---

### Stores to Orders

One store can fulfill many orders.

Relationship:

Stores.StoreID → Orders.StoreID

---

### Orders to Order_Items

One order can contain many order items.

Relationship:

Orders.OrderID → Order_Items.OrderID

---

### Products to Order_Items

One product can appear in many order items.

Relationship:

Products.ProductID → Order_Items.ProductID

---

### Orders to Support_Tickets

One order can have zero or more support tickets.

Relationship:

Orders.OrderID → Support_Tickets.OrderID

---

### Orders to Returns

One order can have zero or more returns.

Relationship:

Orders.OrderID → Returns.OrderID

---

### Orders to Customer_Feedback

One order can have zero or one feedback record.

Relationship:

Orders.OrderID → Customer_Feedback.OrderID
### Customers to Support_Tickets

One customer can create many support tickets.

Relationship:

Customers.CustomerID → Support_Tickets.CustomerID

---

### Customers to Customer_Feedback

One customer can submit many feedback records.

Relationship:

Customers.CustomerID → Customer_Feedback.CustomerID

---

### Customers to Returns

One customer can generate many returns through their orders.