Customer Segmentation Analysis (SQL & BigQuery)

Overview
This project analyzes customer spending behavior using SQL in BigQuery to identify high-value customers and understand revenue distribution.

---

Objectives
- Identify high-value customers
- Segment users based on total spending
- Analyze revenue contribution by segment

---

Tools & Technologies
- SQL (Google BigQuery)
- Data Analysis Techniques

---

Key Techniques
- SQL Aggregations
- Window Functions
- NTILE() for customer segmentation

---

Analysis Process
1. Clean and prepare customer transaction data  
2. Calculate total spending per customer  
3. Apply NTILE() to divide customers into segments  
4. Analyze revenue contribution by each segment  

---

Key Insights
- A small percentage of customers generates the majority of revenue  
- High-value customers have a disproportionate impact on total sales  
- Customer segmentation helps prioritize retention strategies  

---

 Project Structure
- `queries.sql` → SQL queries used in the analysis  
- `dataset.csv` → Dataset (if included)  

---

Future Improvements
- Add visualization (Power BI / Tableau)
- Include customer demographics
- Build predictive segmentation model
