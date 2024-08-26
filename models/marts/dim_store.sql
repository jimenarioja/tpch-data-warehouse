WITH store_data AS (
    SELECT *
    FROM {{ ref('stg_store') }}
)


SELECT *
FROM store_data