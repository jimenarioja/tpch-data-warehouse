-- metric_delivery_performance.sql


-- This file defines a metric that evaluates delivery performance based on defined delivery time categories.
-- The metric calculates the number of orders and the average days to deliver according to different delivery time categories.
-- It is used to analyze how well delivery times are being met, identifying areas for improvement in logistics and delivery compliance.
-- This metric is essential for supply chain management and for enhancing customer satisfaction.


with delivery_performance as (
    select
        ID_PLAZO_ENTREGA,
        count(*) as number_of_orders,
        avg(datediff(day, COMMIT_DATE, RECEIPT_DATE)) as avg_days_to_deliver
    from {{ ref('fct_daily_sales') }}
    group by ID_PLAZO_ENTREGA
)


select
    d.DESCRIPCION as delivery_time_description,
    dp.number_of_orders,
    dp.avg_days_to_deliver
from delivery_performance dp
join {{ ref('dim_entrega') }} d
    on dp.ID_PLAZO_ENTREGA = d.ID_PLAZO_ENTREGA