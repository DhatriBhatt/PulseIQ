# Dataset Planning

## Dataset Time Period

PulseIQ data will cover:

- Start Date: January 1, 2025
- End Date: December 31, 2025

---

## Dataset Size

Initial planned dataset size:

| Dataset | Planned Rows |
|---|---:|
| Customers | 1,000 |
| Products | 50 |
| Orders | 5,000 |
| Order Items | 8,000 - 12,000 |
| Support Tickets | 1,200 |
| Returns | 600 |
| Customer Feedback | 2,000 |

---

## Business Assumptions

- Online orders will represent around 60% of total orders.
- Store orders will represent around 40% of total orders.
- Some customers will place multiple orders.
- Not every order will have a support ticket.
- Not every order will have a return.
- Not every customer will leave feedback.
- Low ratings are more likely when there is a support ticket or return.
- Late delivery and refund delay issues are more common for online orders.
- Size issues are more common for clothing products.

---

## Store Locations

PulseStyle will operate in:

- Toronto
- Mississauga
- Brampton
- Vaughan
- Etobicoke

---

## Main Analytical Questions

- What are the top customer complaint reasons?
- Which stores have the lowest customer satisfaction?
- Which product categories have the highest return rate?
- How does response time affect customer ratings?
- Are online customers less satisfied than store customers?
- What factors predict customer dissatisfaction?