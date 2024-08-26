-- Test to ensure NATION is unique
WITH time_zone_data AS (
    SELECT
        NATION
    FROM {{ ref('dim_time_zone') }}
)
SELECT 
    NATION
FROM time_zone_data
GROUP BY NATION
HAVING COUNT(*) > 1
