WITH event_data AS (
    SELECT *
    FROM {{ ref('stg_event') }}
)


SELECT *
FROM event_data