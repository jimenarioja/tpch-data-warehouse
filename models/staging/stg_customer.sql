WITH customer_data AS (
    SELECT *
    FROM {{ source('tcph', 'CUSTOMER')}}
)


SELECT *
FROM customer_data