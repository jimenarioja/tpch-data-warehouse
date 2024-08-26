-- Test to ensure ORDERKEY is not null
SELECT 
    ORDERKEY
FROM {{ ref('fct_daily_sales') }}
WHERE ORDERKEY IS NULL
