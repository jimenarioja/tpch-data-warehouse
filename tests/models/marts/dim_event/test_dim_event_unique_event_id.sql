-- Test to ensure EVENT_ID is unique
WITH event_data AS (
    SELECT
        EVENT_ID
    FROM {{ ref('dim_event') }}
)
SELECT 
    EVENT_ID
FROM event_data
GROUP BY EVENT_ID
HAVING COUNT(*) > 1
