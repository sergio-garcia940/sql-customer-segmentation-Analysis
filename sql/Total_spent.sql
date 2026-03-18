-- Calculate total spending by customer--
SELECT
o.customer_id,
SUM(p.payment_value) AS total_spent
FROM `ecommerce-analysis-488313.ecommerce_analysis.olist_orders_dataset` o
JOIN `ecommerce-analysis-488313.ecommerce_analysis.olist_order_payments_dataset` p
ON o.order_id = p.order_id
GROUP BY o.customer_id
ORDER BY total_spent DESC;
