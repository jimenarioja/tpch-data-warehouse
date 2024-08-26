-- Test to ensure NATION is not null
SELECT 
    NATION
FROM {{ ref('dim_time_zone') }}
WHERE NATION IS NULL
