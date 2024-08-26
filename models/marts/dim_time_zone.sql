WITH time_zone_data AS (
    SELECT *
    FROM {{ ref('stg_time_zone') }}
)


SELECT *
FROM time_zone_data