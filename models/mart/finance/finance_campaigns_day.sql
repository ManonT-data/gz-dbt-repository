SELECT 
a. date_date
, (a.operational_margin - b.ads_cost) AS ads_margin
, a.average_basket
, a.operational_margin
, b.ads_cost
, b.impression AS ads_impression
, b.click AS ads_clicks
, a.quantity
, a.revenue
, a.purchase_cost
, a. margin
, a.shipping_fee
, a.log_cost
, a.ship_cost
FROM {{ ref('finance_days') }} AS a
LEFT JOIN {{ ref('int_campaigns_day') }} AS b
USING (date_date)