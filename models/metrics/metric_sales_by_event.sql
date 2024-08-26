-- metric_sales_by_event.sql


-- This file defines a metric that calculates total sales and the number of sales associated with each event.
-- The metric provides a detailed view of how events (such as promotions or campaigns) impact sales.
-- By analyzing sales by event, one can assess the effectiveness of each event in terms of revenue generated and number of transactions.
-- This is useful for marketing strategies and for planning future events.


with event_sales as (
    select
        EVENT_ID,
        sum(LOCAL_PRICE) as total_sales,
        count(*) as number_of_sales
    from {{ ref('fct_daily_sales') }}
    group by EVENT_ID
)


select
    e.EVENT_NAME,
    es.total_sales,
    es.number_of_sales
from event_sales es
join {{ ref('dim_event') }} e
    on es.EVENT_ID = e.EVENT_ID
