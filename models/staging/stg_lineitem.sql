WITH lineitem_data AS (
    SELECT *
    FROM {{ source('tcph', 'LINEITEM')}}
)


SELECT *
FROM lineitem_data