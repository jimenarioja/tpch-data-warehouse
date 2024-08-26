WITH orders_data AS (
    SELECT *
    FROM {{ source('tcph', 'ORDERS')}}
)


SELECT *
FROM orders_data