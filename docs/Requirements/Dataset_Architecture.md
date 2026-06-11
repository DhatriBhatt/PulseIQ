# Dataset Architecture

## Core Entities

PulseIQ will use seven primary datasets.

---

## Customers

Stores customer information.

Key Fields:

* CustomerID
* FirstName
* LastName
* Gender
* AgeGroup
* City
* Province
* LoyaltyTier
* SignupDate

---

## Orders

Stores purchase transactions.

Key Fields:

* OrderID
* CustomerID
* OrderDate
* Channel
* StoreLocation
* TotalAmount
* OrderStatus

---

## Products

Stores product information.

Key Fields:

* ProductID
* ProductName
* Category
* UnitCost
* UnitPrice

---

## Order_Items

Stores products purchased in each order.

Key Fields:

* OrderItemID
* OrderID
* ProductID
* Quantity
* UnitPrice

---

## Support_Tickets

Stores customer service interactions.

Key Fields:

* TicketID
* CustomerID
* OrderID
* IssueType
* Priority
* Status
* ResponseTimeHours
* ResolutionTimeHours

---

## Returns

Stores returned products.

Key Fields:

* ReturnID
* OrderID
* ProductID
* ReturnReason
* RefundAmount

---

## Customer_Feedback

Stores customer reviews and ratings.

Key Fields:

* FeedbackID
* CustomerID
* OrderID
* Rating
* ReviewText
* Sentiment
