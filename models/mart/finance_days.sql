SELECT
date_date
, COUNT(orders_id) AS nb_transactions
, ROUND(SUM(revenue)/COUNT(orders_id),2) AS average_basket
, ROUND(SUM(operational_margin), 2) AS operational_margin
, ROUND(SUM (purchase_cost),2) AS total_purchase_cost
, ROUND(SUM(shipping_fee),2) AS total_shipping_fees
, ROUND(SUM(logCost),2) AS total_log_costs
, SUM(quantity) AS total_qty_products_sold
FROM {{ ref('in_orders_operational') }}
GROUP BY date_date