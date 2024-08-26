-- metric_sales_by_store.sql


-- This file defines a metric that summarizes total sales and the number of sales for each store.
-- The metric provides information about sales performance for each store, including total sales in local currency and the number of sales made.
-- This metric is useful for comparing performance between stores and assessing the impact of local sales strategies.
-- It also aids in decision-making regarding store-specific promotions and strategies.


with store_sales as (
    select
        STORE_ID,
        sum(LOCAL_PRICE) as total_sales,
        count(*) as number_of_sales
    from {{ ref('fct_daily_sales') }}
    group by STORE_ID
)


select
    s.NAME as store_name,
    s.NATION as store_nation,
    ss.total_sales,
    ss.number_of_sales
from store_sales ss
join {{ ref('dim_store') }} s
    on ss.STORE_ID = s.STORE_ID
