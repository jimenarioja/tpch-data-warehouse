-- Test to ensure combination of NATION and ORDER_DATE is unique
WITH exchange_rate_data AS (
    SELECT
        NATION,
        ORDER_DATE
    FROM {{ ref('dim_exchange_rate') }}
)
SELECT 
    NATION,
    ORDER_DATE
FROM exchange_rate_data
GROUP BY NATION, ORDER_DATE
HAVING COUNT(*) > 1
