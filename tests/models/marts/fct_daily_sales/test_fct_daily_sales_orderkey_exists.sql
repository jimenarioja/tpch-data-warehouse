-- Test to ensure all ORDERKEY values exist in stg_orders
WITH fct_daily_sales_data AS (
    SELECT ORDERKEY
    FROM {{ ref('fct_daily_sales') }}
),
stg_orders_data AS (
    SELECT O_ORDERKEY AS ORDERKEY
    FROM {{ ref('stg_orders') }}
)
SELECT f.ORDERKEY
FROM fct_daily_sales_data f
LEFT JOIN stg_orders_data o ON f.ORDERKEY = o.ORDERKEY
WHERE o.ORDERKEY IS NULL
