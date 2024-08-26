WITH partsupp_data AS (
    SELECT *
    FROM {{ source('tcph', 'PARTSUPP')}}
)


SELECT *
FROM partsupp_data