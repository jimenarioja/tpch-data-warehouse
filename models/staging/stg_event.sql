WITH event_data AS (
    SELECT *
    FROM {{ source('tcph', 'EVENT')}}
)


SELECT *
FROM event_data
