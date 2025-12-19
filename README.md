# User Behavior & Retention Analysis

**Type:** Independent portfolio project  
**Role:** Junior Data Analyst / Product Analyst  
**Tools:** SQL, Excel / Google Sheets, GitHub

---

## 1. Project Objective
The goal of this project is to analyze user behavior data to identify key factors influencing **user retention and churn** in a digital product. The analysis focuses on early user actions, engagement patterns, and user segmentation to support data‑driven product decisions.

---

## 2. Business Questions
- What percentage of users return after 7 and 30 days?
- Which user behaviors are associated with higher retention?
- Which user segments are most likely to churn?
- What product improvements could increase long‑term engagement?

---

## 3. Dataset
Publicly available user behavior / customer churn dataset (e.g. Kaggle).

**Example data fields:**
- user_id
- signup_date
- last_active_date
- session_time
- number_of_sessions
- key_action_completed (yes/no)
- churned (yes/no)

---

## 4. Data Preparation
- Removed duplicates and incomplete records
- Standardized date formats
- Created calculated fields for retention and churn metrics

---

## 5. SQL Analysis
Key SQL techniques used:
- SELECT, WHERE, ORDER BY
- GROUP BY, HAVING
- CASE WHEN
- Basic cohort analysis

**Example query:**
```sql
SELECT
  key_action_completed,
  COUNT(DISTINCT user_id) AS users,
  AVG(session_time) AS avg_session_time
FROM user_activity
GROUP BY key_action_completed;
```

---

## 6. Excel / Google Sheets Analysis
- Pivot tables for retention and churn rates
- Dashboards with key KPIs
- Visualizations of user engagement trends

**Key metrics:**
- Retention rate (7‑day, 30‑day)
- Churn rate
- Average session time
- Sessions per user

---

## 7. Key Insights
- Users who complete a key action within the first 24 hours show significantly higher 30‑day retention.
- Longer average session time correlates with lower churn probability.
- New users with low early engagement are the highest churn risk group.

---

## 8. Business Recommendations
- Improve onboarding to encourage early key actions
- Introduce in‑app guidance during the first session
- Use behavioral triggers (e.g. reminders) for low‑engagement users

---

## 9. Project Outcome
This project demonstrates the ability to:
- Translate raw data into actionable business insights
- Use SQL and Excel for real‑world analysis
- Communicate findings clearly for non‑technical stakeholders

---

## 10. How This Project Can Be Used in a CV
**Junior Data Analyst – Portfolio Project**
- Conducted user behavior and retention analysis using SQL and Excel
- Built dashboards to track churn and engagement KPIs
- Delivered data‑driven product recommendations

---

## 11. Repository Structure (GitHub)
```
user-retention-analysis/
├── README.md
├── data/
│   └── dataset.csv
├── sql/
│   └── analysis.sql
├── excel/
│   └── dashboard.xlsx
└── insights/
    └── conclusions.md
```

---