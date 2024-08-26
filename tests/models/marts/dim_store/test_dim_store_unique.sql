-- Test to ensure STORE_ID is unique
WITH store_data AS (
    SELECT
        STORE_ID
    FROM {{ ref('dim_store') }}
)
SELECT 
    STORE_ID
FROM store_data
GROUP BY STORE_ID
HAVING COUNT(*) > 1
