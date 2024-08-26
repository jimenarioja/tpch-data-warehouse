-- Test to ensure ID_PLAZO_ENTREGA is unique
WITH entrega_data AS (
    SELECT
        ID_PLAZO_ENTREGA
    FROM {{ ref('dim_entrega') }}
)
SELECT 
    ID_PLAZO_ENTREGA
FROM entrega_data
GROUP BY ID_PLAZO_ENTREGA
HAVING COUNT(*) > 1
