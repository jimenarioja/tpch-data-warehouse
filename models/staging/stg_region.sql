WITH region_data AS (
    SELECT *
    FROM {{ source('tcph', 'REGION')}}
)


SELECT *
FROM region_data
