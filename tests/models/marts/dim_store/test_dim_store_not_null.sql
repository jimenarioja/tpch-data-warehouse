-- Test to ensure STORE_ID, NATION, and NAME are not null
SELECT 
    STORE_ID,
    NATION,
    NAME
FROM {{ ref('dim_store') }}
WHERE STORE_ID IS NULL
   OR NATION IS NULL
   OR NAME IS NULL
