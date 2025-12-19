# User Behavior & Retention Analysis

**Type:** Independent Portfolio Project  
**Role:** Junior Data Analyst / Product Analyst  
**Tools:** SQL, Excel / Google Sheets, GitHub

---

## Project Objective
Analyze user behavior to identify factors influencing **user retention and churn** in a digital product. Focus on engagement patterns and user segmentation to support data-driven decisions.

---

## Business Questions
- What percentage of users return after 7 and 30 days?  
- Which behaviors increase retention?  
- Which segments are most likely to churn?  
- What product improvements could increase engagement?

---

## Dataset
Publicly available dataset (e.g., Kaggle) with fields like:
- `user_id`, `signup_date`, `last_active_date`, `session_time`, `number_of_sessions`, `key_action_completed`, `churned`

---

## Analysis
- **SQL:** SELECT, GROUP BY, CASE WHEN, cohort analysis  
- **Google Sheets / Excel:** pivot tables, dashboards, retention & churn charts  

**Example SQL:**
```sql
SELECT
  key_action_completed,
  COUNT(DISTINCT user_id) AS users,
  AVG(session_time) AS avg_session_time
FROM user_activity
GROUP BY key_action_completed;

