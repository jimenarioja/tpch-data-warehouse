WITH part_data AS (
    SELECT *
    FROM {{ source('tcph', 'PART')}}
)


SELECT *
FROM part_data
