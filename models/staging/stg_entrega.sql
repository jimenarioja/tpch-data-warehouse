WITH entrega_data AS (
    SELECT *
    FROM {{ source('tcph', 'ENTREGA')}}
)


SELECT *
FROM entrega_data
