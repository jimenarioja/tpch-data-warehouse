-- metric_sales_overview.sql


-- This file defines a metric that provides an overall summary of sales at the store and date level.
-- The metric calculates the total sales and the total quantity of products sold at each store for each day.
-- It is used to gain a general view of sales performance across different stores and dates.
-- This can help in identifying daily sales patterns and evaluating the performance of stores over time.


with sales_data as (
    select
        STORE_ID,
        ORDER_DATE,
        sum(LOCAL_PRICE) as total_sales,
        sum(QUANTITY) as total_quantity
    from {{ ref('fct_daily_sales') }}
    group by STORE_ID, ORDER_DATE
)


select
    STORE_ID,
    ORDER_DATE,
    total_sales,
    total_quantity
from sales_data