# Data Dictionary

## Customers Table

| Column      | Description                     |
| ----------- | ------------------------------- |
| CustomerID  | Unique customer identifier      |
| FirstName   | Customer first name             |
| LastName    | Customer last name              |
| Gender      | Male, Female, Other             |
| AgeGroup    | 18-24, 25-34, 35-44, 45-54, 55+ |
| City        | Customer city                   |
| Province    | Customer province               |
| LoyaltyTier | Bronze, Silver, Gold            |
| SignupDate  | Date customer registered        |

---

## Orders Table

| Column        | Description                    |
| ------------- | ------------------------------ |
| OrderID       | Unique order identifier        |
| CustomerID    | Customer placing order         |
| OrderDate     | Date order was placed          |
| Channel       | Online or Store                |
| StoreLocation | Store city                     |
| TotalAmount   | Total order value              |
| OrderStatus   | Delivered, Returned, Cancelled |

---

## Products Table

| Column      | Description               |
| ----------- | ------------------------- |
| ProductID   | Unique product identifier |
| ProductName | Product name              |
| Category    | Product category          |
| UnitCost    | Company cost              |
| UnitPrice   | Selling price             |

---

## Support Tickets Table

| Column              | Description                 |
| ------------------- | --------------------------- |
| TicketID            | Unique ticket identifier    |
| CustomerID          | Customer who reported issue |
| OrderID             | Related order               |
| IssueType           | Complaint category          |
| Priority            | Low, Medium, High           |
| Status              | Open, In Progress, Resolved |
| ResponseTimeHours   | Time to first response      |
| ResolutionTimeHours | Time to resolution          |

---

## Customer Feedback Table

| Column     | Description                 |
| ---------- | --------------------------- |
| FeedbackID | Unique feedback identifier  |
| CustomerID | Customer providing feedback |
| OrderID    | Related order               |
| Rating     | 1-5 satisfaction score      |
| ReviewText | Customer review             |
| Sentiment  | Positive, Neutral, Negative |
