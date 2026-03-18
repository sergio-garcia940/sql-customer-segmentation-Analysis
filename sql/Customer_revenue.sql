--This query identifies the percentage of high-tier customers who generate the highest revenue--
WITH customer_spending AS (
SELECT
o.customer_id,
SUM(p.payment_value) AS total_spent
FROM `ecommerce-analysis-488313.ecommerce_analysis.olist_orders_dataset` o
JOIN `ecommerce-analysis-488313.ecommerce_analysis.olist_order_payments_dataset` p
ON o.order_id = p.order_id
GROUP BY o.customer_id
),

segmented_customers AS (
SELECT
customer_id,
total_spent,
NTILE(4) OVER (ORDER BY total_spent DESC) AS segment
FROM customer_spending
)

SELECT
segment,
COUNT(customer_id) AS customers,
SUM(total_spent) AS revenue
FROM segmented_customers
GROUP BY segment
ORDER BY segment;
