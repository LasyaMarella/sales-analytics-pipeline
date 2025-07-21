
  create or replace   view SALES_DB.PUBLIC.fct_orders
  
  
  
  
  as (
    

select
    o.order_id,
    o.order_date,
    o.quantity,
    c.customer_name,
    c.region,
    p.category,
    p.price,
    (o.quantity * p.price) as total_amount
from SALES_DB.PUBLIC.stg_orders o
left join SALES_DB.PUBLIC.stg_customers c
    on o.customer_id = c.customer_id
left join SALES_DB.PUBLIC.stg_products p
    on o.product_id = p.product_id
  );

