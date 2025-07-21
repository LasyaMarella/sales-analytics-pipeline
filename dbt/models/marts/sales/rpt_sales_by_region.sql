select
  region,
  sum(total_amount) as total_sales,
  count(distinct order_id) as num_orders
from {{ ref('fct_sales') }}
group by region
