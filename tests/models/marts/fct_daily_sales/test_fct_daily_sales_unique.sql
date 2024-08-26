-- Test to ensure ORDERKEY is unique
WITH daily_sales_data AS (
    SELECT
        ORDERKEY
    FROM {{ ref('fct_daily_sales') }}
)
SELECT 
    ORDERKEY
FROM daily_sales_data
GROUP BY ORDERKEY
HAVING COUNT(*) > 1
