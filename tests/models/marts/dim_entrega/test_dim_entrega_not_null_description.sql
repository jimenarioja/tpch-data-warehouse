-- Test to ensure DESCRIPCION is not null
SELECT 
    DESCRIPCION
FROM {{ ref('dim_entrega') }}
WHERE DESCRIPCION IS NULL
