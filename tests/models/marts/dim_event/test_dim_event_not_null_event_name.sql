-- Test to ensure EVENT_NAME is not null
SELECT 
    EVENT_NAME
FROM {{ ref('dim_event') }}
WHERE EVENT_NAME IS NULL
