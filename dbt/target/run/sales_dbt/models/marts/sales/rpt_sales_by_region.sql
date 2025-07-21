
  create or replace   view SALES_DB.PUBLIC.rpt_sales_by_region
  
   as (
    select
  region,
  sum(total_amount) as total_sales,
  count(distinct order_id) as num_orders
from SALES_DB.PUBLIC.fct_sales
group by region
  );

