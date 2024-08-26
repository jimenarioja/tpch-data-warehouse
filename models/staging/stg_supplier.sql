WITH supplier_data AS (
    SELECT *
    FROM {{ source('tcph', 'SUPPLIER')}}
)


SELECT *
FROM supplier_data