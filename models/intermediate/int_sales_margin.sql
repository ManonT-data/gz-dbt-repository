SELECT
s.date_date
, s.orders_id
, s.products_id
, s.revenue AS revenue
, s.quantity AS quantity
, s.quantity*p.purchase_price AS purchase_cost
, s.revenue - (s.quantity*p.purchase_price) AS margin
FROM {{ ref('sales') }} AS s
LEFT JOIN {{ ref('product') }} AS p
ON p.products_id = s.products_id