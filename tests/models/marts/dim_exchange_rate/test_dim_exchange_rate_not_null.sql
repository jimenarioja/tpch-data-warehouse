-- Test to ensure NATION, ORDER_DATE, and EXCHANGE_USD are not null
SELECT 
    NATION,
    ORDER_DATE,
    EXCHANGE_USD
FROM {{ ref('dim_exchange_rate') }}
WHERE NATION IS NULL
   OR ORDER_DATE IS NULL
   OR EXCHANGE_USD IS NULL


