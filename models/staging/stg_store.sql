WITH store_data AS (
    SELECT *
    FROM {{ source('tcph', 'STORE')}}
)


SELECT *
FROM store_data
