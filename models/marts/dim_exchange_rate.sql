WITH exchange_rate_data AS (
    SELECT *
    FROM {{ ref('stg_exchange_rate') }}
)


SELECT *
FROM exchange_rate_data