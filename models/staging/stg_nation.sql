WITH nation_data AS (
    SELECT *
    FROM {{ source('tcph', 'NATION')}}
)


SELECT *
FROM nation_data
