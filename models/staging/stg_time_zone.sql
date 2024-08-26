WITH time_zone_data AS (
    SELECT *
    FROM {{ source('tcph', 'TIME_ZONE')}}
)


SELECT *
FROM time_zone_data
