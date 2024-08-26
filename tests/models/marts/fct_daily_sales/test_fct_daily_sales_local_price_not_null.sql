-- Test to ensure LOCAL_PRICE is not null
SELECT 
    LOCAL_PRICE
FROM {{ ref('fct_daily_sales') }}
WHERE LOCAL_PRICE IS NULL
