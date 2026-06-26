# 🍣 Danny's Diner — SQL Case Study

A complete SQL analysis of Danny's Diner, a fictional Japanese restaurant, based 
on the well-known 8 Week SQL Challenge by Danny Ma. Danny wants to use the data 
collected from his diner to understand customer visiting patterns, spending, and 
menu preferences — to help decide whether to expand his loyalty program.

---

## 🗂️ Entity Relationship Overview

**menu**
- product_id (Primary Key)
- product_name
- price

**sales**
- sales_id (Primary Key)
- product_id (Foreign Key, references menu.product_id)
- customer_id (no foreign key constraint)
- order_date

**members**
- customer_id (Primary Key)
- join_date

### Relationships
- menu → the dishes Danny sells, and their prices
- sales → every transaction made by every customer (members and non-members)
- members → only customers who joined the loyalty program, and their join date

Note: sales.customer_id is NOT a strict foreign key to members.customer_id, 
because not every customer who buys food is a loyalty member.
---

## 🛠️ Database Design Decisions

| Decision                                          | Reasoning |
|----------------------------------------------------|-----------|
| customer_id as VARCHAR(10)                         | Customers are single letters (A, B, C...) — no need for an oversized field |
| price as DECIMAL(5,2)                              | Prices can have decimals; avoids floating-point rounding errors |
| No FK from sales.customer_id → members.customer_id | A strict FK would block inserting sales for non-members (like customer C) |
| FK kept on sales.product_id → menu.product_id      | Every item sold must exist on the menu — always a valid relationship |

---

## ❓ Business Questions & Purpose

### Q1. Total amount spent by each customer
**Purpose:** Establishes baseline customer value — who are Danny's highest 
spenders overall, regardless of membership status.

### Q2. Number of unique days each customer visited
**Purpose:** Measures visit frequency/loyalty separately from spend. A customer 
visiting 5 different days shows more engagement than one visiting once and 
ordering a lot — important for understanding retention, not just revenue.

### Q3. First menu item purchased by each customer
**Purpose:** Identifies what initially drew each customer in — useful for 
understanding which dishes act as a customer's "entry point" to the diner.

### Q4. Most purchased item overall (and how many times)
**Purpose:** Identifies the single most popular dish across the entire customer 
base — tells Danny what to never take off the menu.

### Q5. Most popular item for each individual customer
**Purpose:** Personalizes the "favourite item" insight per customer rather than 
restaurant-wide — useful for targeted recommendations or personalized offers.

### Q6. First item purchased by each customer after becoming a member
**Purpose:** Shows what new members choose right as their loyalty journey 
begins — useful for designing "welcome" offers around popular first-week picks.

### Q7. Item purchased just before each customer became a member
**Purpose:** Reveals what customers were ordering right before they decided to 
join — may hint at what convinced them to sign up for the loyalty program.

### Q8 & Q9. Loyalty points calculation (with first-week bonus)
**Purpose:** Directly calculates the loyalty program's core value proposition — 
how many points each member has earned, factoring in the 2x Sushi multiplier 
and an additional first-week-of-membership bonus where ALL items earn 2x points. 
This is the central business mechanic Danny needs to actually run the program.

### Q10. Combined table with membership status (Y/N) per order
**Purpose:** Produces one unified, analysis-ready table tagging every single 
order as happening either inside or outside the customer's membership window — 
the foundation table that all the membership-based questions above are really 
built on top of.

---

## 🧠 Key SQL Concepts Practiced

| Concept                                             | Where Used |
|------------------------------------------------------|------------|
| INNER JOIN vs LEFT JOIN                              | Choosing INNER when only members matter, LEFT when all customers must appear |
| Window functions (RANK, DENSE_RANK) with PARTITION BY | Ranking rows within each customer's own group |
| Subquery wrapping to filter window function results   | WHERE on a window function alias requires an outer query layer |
| GROUP BY with aggregate functions (SUM, COUNT)        | Per-customer and per-item totals |
| COUNT(DISTINCT ...)                                   | Counting unique visit days, not total orders |
| Simple and nested CASE WHEN                           | Multi-condition loyalty point rules and membership flags |
| Date arithmetic (INTERVAL)                            | Calculating the 7-day membership bonus window |
| Tie-breaking with a secondary ORDER BY column          | Resolving same-day order ties deterministically |
| NULL comparison behavior                               | Understanding why comparisons against NULL evaluate to UNKNOWN |

---

## 📌 Notable Data Limitations Found During Analysis

- **Same-day order ties:** The sales table only stores order_date (no time of 
  day), so when a customer orders multiple items on the same date, true 
  chronological order can't be determined. sales_id (insertion order) was used 
  as a practical, documented tiebreaker.
- **Non-member customers:** Some customers make purchases but never join the 
  loyalty program — this is why sales.customer_id is intentionally not a strict 
  foreign key to members.customer_id.

---

## 🚀 How to Run

mysql -u your_username -p < schema.sql
mysql -u your_username -p dannys_diner < data.sql
mysql -u your_username -p dannys_diner < queries.sql

---

## 🙌 Credits

Case study concept: Danny Ma — 8 Week SQL Challenge
SQL implementation, schema design, and analysis: Anurag Gupta
