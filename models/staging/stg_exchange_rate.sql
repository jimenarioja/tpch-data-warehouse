WITH exchange_rate_data AS (
    SELECT *
    FROM {{ source('tcph', 'EXCHANGE_RATE')}}
)


SELECT *
FROM exchange_rate_data