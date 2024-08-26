WITH entrega_data AS (
    SELECT *
    FROM {{ ref('stg_entrega') }}
)


SELECT *
FROM entrega_data