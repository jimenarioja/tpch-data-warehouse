-- Test to ensure CUSTOMER_PRICE is not null
SELECT 
    CUSTOMER_PRICE
FROM {{ ref('fct_daily_sales') }}
WHERE CUSTOMER_PRICE IS NULL
